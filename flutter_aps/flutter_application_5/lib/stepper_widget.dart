import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class StepperWidget extends StatefulWidget {
  const StepperWidget({super.key});

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int _aktifStep = 0;
  String isim = '', mail = '', sifre = '';
  late List<Step> tumStepler;
  var key1 = GlobalKey<FormFieldState>();
  var key2 = GlobalKey<FormFieldState>();
  var key3 = GlobalKey<FormFieldState>();
  bool hata = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // tumStepler = _tumStepler();
  }

  @override
  Widget build(BuildContext context) {
    tumStepler = _tumStepler();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stepper'),
        ),
        body: SingleChildScrollView(
          child: Stepper(
            steps: tumStepler,
            currentStep: _aktifStep,//bir sonraki state e geçiş yapmamızı sağlıyor
            // onStepTapped: (tiklanilanStep) {
            //   setState(
            //     () {
            //       /*bu işlem çokta önemli ve kullanışlı değil
            //     bu işlem sayesinde oluşturduğumuz state i açabiliyoruz*/
            //       _aktifStep = tiklanilanStep;
            //     },
            //   );
            // },
            onStepContinue: () {
              setState(() {
                _continueButton();

                //bu kullanım statik
                // if (_aktifStep < tumStepler.length - 1) {
                //   _aktifStep++;
                // } else
                //   return null;
              });
            },
            onStepCancel: () {
              setState(() {
                if (_aktifStep > 0) {
                  _aktifStep--;
                } else
                  _aktifStep = 0;
              });
            },
          ),
        ),
      ),
    );
  }

  List<Step> _tumStepler() {
    List<Step> stepler = [
      Step(
        title: Text('Kullanıcı adınızı giriniz'),
        // state: StepState.complete,
        state: _stepStateAyarla(0),
        content: TextFormField(
          key: key1,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          maxLength: 20,
          decoration: InputDecoration(
            labelText: 'Kullanıcı adı',
            hintText: 'Kullanıcı adı',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(18.0))),
          ),
          validator: (value) {
            if (value!.length < 4) {
              return 'Kullanıcı adı en az 4 karakterden oluşmalıdır!';
            } else
              return null;
          },
          onSaved: (newValue) {
            setState(() {
              isim = newValue!;
            });
          },
        ),
      ),
      Step(
        title: Text('Mail adresinizi giriniz'),
        // state: StepState.complete,
        state: _stepStateAyarla(1),
        content: TextFormField(
          key: key2,
          initialValue: '@gmail.com',
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'e-Mail',
            hintText: 'e-Mail',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(18.0))),
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'e-Mail boş geçilemez';
            }else if (!EmailValidator.validate(value)) {
              return 'Geçerli mail adresi giriniz';
            }
          },
          onSaved: (newValue) {
            setState(() {
              mail = newValue!;
            });
          },
        ),
      ),
      Step(
        title: Text('Şifrenizi giriniz'),
        // state: StepState.complete,
        state: _stepStateAyarla(2),
        content: TextFormField(
          key: key3,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          obscureText: true,
          maxLength: 25,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: 'Şifre',
            hintText: 'Şifre',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(18.0))),
          ),
          validator: (value) {
            if (value!.length < 6) {
              return 'Şifre en 6 karakter içermelidir';
            } else
              return null;
          },
          onSaved: (newValue) {
            setState(() {
              sifre = newValue!;
            });
          },
        ),
      ),
    ];
    return stepler;
  }

  StepState _stepStateAyarla(int i) {
    if (_aktifStep == i) {
      if (hata) {
        return StepState.error;
      } 
      else {
        return StepState.editing;
      }
      } else
      return StepState.complete;
  }

  void _continueButton() {
    switch (_aktifStep) {
      /*continue butonona basıldığında validator da oluşturduğumuz
    kuralların uyulup uyyulmadığını kontrol ediyoruz
    eğer validator daki kuralların doğruysa bir sonraki adıma geçilecek*/
      case 0:
        /*currentState(o anki durumu) aldık gerçekleşiyorsa save(kurtardık) ettik*/
        if (key1.currentState!.validate()) {
          key1.currentState!.save();
          hata = false;//hata durumu yok
          _aktifStep++; //bir sonraki adıma geçiyo
        } else {
          hata = true;
        }
        break;
        case 1:
        if (key2.currentState!.validate()) {
          key1.currentState!.save();
          hata = false;
          _aktifStep++;
        } else {
          hata = true;
        }
        break;
        case 2:
        if (key3.currentState!.validate()) {
          key1.currentState!.save();
          hata = false;
        } else {
          hata = true;
        }
        break;
    }
  }
}

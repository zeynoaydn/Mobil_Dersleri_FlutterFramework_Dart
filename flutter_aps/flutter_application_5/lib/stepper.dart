import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class StepperLogin extends StatefulWidget {
  const StepperLogin({super.key});

  @override
  State<StepperLogin> createState() => _StepperLoginState();
}

class _StepperLoginState extends State<StepperLogin> {
  late List<Step> allStep;
  var key1 = GlobalKey<FormFieldState>();
  var key2 = GlobalKey<FormFieldState>();
  var key3 = GlobalKey<FormFieldState>();
  String isim = '', mail = '', sifre = '';
  int _aktif = 0;
  bool hata = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    allStep = _allStep();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stepper Login'),
        ),
        body: SingleChildScrollView(
            child: Stepper(
          steps: allStep,
          currentStep: _aktif,
          onStepContinue: () {
            setState(() {
              _continueButton();
            });
          },
          onStepCancel: () {
            setState(() {
              if (_aktif > 0) {
                _aktif--;
              } else
                return null;
            });
          },
        )),
      ),
    );
  }

  List<Step> _allStep() {
    List<Step> steps = [
      Step(
          title: Text('Kullanıcı adınızı giriniz'),
          state: _stepStateAyarla(0),
          content: TextFormField(
            key: key1,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            maxLength: 20,
            decoration: InputDecoration(
              hintText: '. . . . . . . . . . . . . . ',
              labelText: 'Kullanıcı Adı',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(18.0),
                ),
              ),
            ),
            validator: (value) {
              if (value!.length < 5) {
                return 'Daha fazla karakter giriniz';
              } else
                return null;
            },
            onSaved: (newValue) {
              setState(() {
                isim = newValue!;
              });
            },
          )),
      Step(
          title: Text('Mail adresinizi giriniz'),
          state: _stepStateAyarla(1),
          content: TextFormField(
            key: key2,
            initialValue: '@gmail.com',
            keyboardType: TextInputType.emailAddress,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            maxLength: 30,
            decoration: InputDecoration(
              hintText: '. . . . . . . . . . . . . . ',
              labelText: 'e-Mail',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(18.0),
                ),
              ),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Mail adresi boş geçilemez';
              } else if (EmailValidator.validate(value)) {
                return 'Geçerli bir  mail adresi giriniz';
              }
            },
            onSaved: (newValue) {
              setState(() {
                mail = newValue!;
              });
            },
          )),
      Step(
          title: Text('Şİfrenizi giriniz'),
          state: _stepStateAyarla(2),
          content: TextFormField(
            obscureText: true,
            key: key3,
            keyboardType: TextInputType.text,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            maxLength: 20,
            decoration: InputDecoration(
              hintText: '. . . . . . . . . . . . . . ',
              labelText: 'Şifre',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(18.0),
                ),
              ),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Şifre boş geçilemez';
              } else if (value.length < 6) {
                return 'Şifre en az 6 karakter içermelidir';
              } else
                return null;
            },
            onSaved: (newValue) {
              setState(() {
                sifre = newValue!;
              });
            },
          )),
    ];
    return steps;
  }

  void _continueButton() {
    switch (_aktif) {
      case 0:
        if (key1.currentState!.validate()) {
          key1.currentState!.save();
          hata = false;
          _aktif++;
        } else {
          hata = true;
        }
        break;
      case 1:
        if (key2.currentState!.validate()) {
          key2.currentState!.save();
          hata = false;
          _aktif++;
        } else {
          hata = true;
        }
        break;
      case 2:
        if (key3.currentState!.validate()) {
          key3.currentState!.save();
          hata = false;
        } else {
          hata = true;
        }
        break;
    }
  }

  StepState _stepStateAyarla(int index) {
    if (_aktif == index) {
      if (hata) {
        return StepState.error;
      } 
      else {
        return StepState.editing;
      }
      } else
      return StepState.complete;
  }

}

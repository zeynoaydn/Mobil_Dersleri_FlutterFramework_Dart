import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class TextFieldIslmemleri extends StatefulWidget {
  const TextFieldIslmemleri({super.key});

  @override
  State<TextFieldIslmemleri> createState() => _TextFieldIslmemleriState();
}

class _TextFieldIslmemleriState extends State<TextFieldIslmemleri> {
  String _email = '', _password = '', _userName = '';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextForm Field İşlemleri'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,

            //imleç üzerine tıklandığı anda error verecek(karakter sayısı vb.)
            autovalidateMode: AutovalidateMode.onUserInteraction,

            child: Column(
              children: [
                TextFormField(
                  /*initialvalue=otomatik olarak girdiğimiz değer geliyor*/
                  // initialValue: 'ZeynepAydın',
                  maxLength: 20,
                  decoration: InputDecoration(
                      errorStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(18.0),
                        ),
                      ),
                      labelText: 'UsernName',
                      hintText: 'UserName'),
                  //autovalidation mode u aktif edip ekrana uyarı verdik
                  validator: (deger) {
                    if (deger!.length < 4) {
                      return 'Username en az 4 karakter olmalı';
                    } else {
                      return null;
                    }
                  },
                  //verileri kaydedicez
                  onSaved: (userName) {
                    _userName = userName!;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  // initialValue: '@gmail.com',
                  keyboardType: TextInputType.emailAddress,
                  maxLength: 30,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18.0)),
                    ),
                    labelText: 'Email',
                    hintText: 'Email',
                  ),

                  //bu kısmı pub dev den aldık
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'email boş olamaz';
                    }
                    else if (!EmailValidator.validate(value)) {
                      return 'Geçerli mail adresi giriniz';
                    }
                  },
                  onSaved: (eMail) {
                    _email = eMail!;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  //şifreyi gizlememizi sağlıyor
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(18.0))),
                    labelText: 'PassWord',
                    hintText: 'PassWord',
                  ),
                  validator: (value) {
                    if (value!.length < 7) {
                      return 'PassWord en az 7 karakterli olacak';
                    } else
                      return null;
                  },
                  onSaved: (password) {
                    _password = password!;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    bool _validate = _formKey.currentState!.validate();
                    if (_validate) {
                      _formKey.currentState!.save();
                      String result =
                          'usernnam:$_userName, email:$_email, password:$_password';
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.purple.shade100,
                          content: Text(
                            result,
                            style: TextStyle(fontSize: 18),
                          )));
                      //formu onayladıktan sıfırladık
                      _formKey.currentState!.reset();
                    }
                  },
                  child: Text('Onayla'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

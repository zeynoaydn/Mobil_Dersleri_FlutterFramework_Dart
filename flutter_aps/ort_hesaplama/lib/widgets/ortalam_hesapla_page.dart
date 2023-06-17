import 'package:flutter/material.dart';
import 'package:flutter_application_6/consts/app_constants.dart';
import 'package:flutter_application_6/ders_listesi.dart';
import 'package:flutter_application_6/helper/data_helper.dart';
import 'package:flutter_application_6/model/ders.dart';
import 'package:flutter_application_6/widgets/ortalama_goster.dart';

class OrtalamaHesaplaPage extends StatefulWidget {
  const OrtalamaHesaplaPage({super.key});
  @override
  State<OrtalamaHesaplaPage> createState() => _OrtalamaHesaplaPageState();
}

class _OrtalamaHesaplaPageState extends State<OrtalamaHesaplaPage> {
  var formKey = GlobalKey<FormState>();
  double secilenDeger = 3;
  double secilenDeger2 = 1;
  String girilenDersAdi = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text(
            Sabitler.baslikText,
            style: Sabitler.baslikStyle,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: _buildForm(),
                ),
                Expanded(
                  flex: 1,
                  child: OrtalamaGoster(ortalama: DataHelper.ortalamaHesapla(), dersSayisi: DataHelper.tumEklenenDersler.length),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: DersListesi(),
          ),
        ],
      ),
    );
  }

  Widget _buildForm() {
    return Form(
      key: formKey,
      child: Column(
        children: [
          _buildTextFormField(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildHarfler(),
                _buildKrediler(),
                IconButton(
                  onPressed: _dersEkleveOrtalamaHesapla,
                  icon: Icon(Icons.arrow_forward_ios),
                  color: Sabitler.anaRenk,
                  iconSize: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildTextFormField() {
    return TextFormField(
      onSaved: (newValue) {
        setState(() {
          girilenDersAdi = newValue!;
        });
      },
      validator: (value) {
        if (value!.length <= 0) {
          return 'Ders adını giriniz:';
        } else
          return null;
      },
      decoration: InputDecoration(
        hintText: 'Ders Adı',
        border: OutlineInputBorder(
            borderRadius: Sabitler.borderRadius, borderSide: BorderSide.none),
        filled: true,
        fillColor: Sabitler.anaRenk.shade200.withOpacity(0.3),
      ),
    );
  }

  _buildHarfler() {
    return Container(
        padding: Sabitler.dropPadding,
        decoration: BoxDecoration(
          color: Sabitler.anaRenk.shade200.withOpacity(0.3),
          borderRadius: Sabitler.borderRadius,
        ),
        child: DropdownButton<double>(
          value: secilenDeger,
          elevation: 16,
          items: DataHelper.tumDerslerinHarfleri(),
          // items: [
          //   DropdownMenuItem<double>(child: Text('AA'), value: 5.0),
          //   DropdownMenuItem<double>(child: Text('CA'), value: 4.5),
          //   DropdownMenuItem<double>(child: Text('CC'), value: 4.0),
          //   DropdownMenuItem<double>(child: Text('DC'), value: 3.5),
          //   DropdownMenuItem<double>(child: Text('DD'), value: 3.0),
          //   DropdownMenuItem<double>(child: Text('FD'), value: 2.5),
          //   DropdownMenuItem<double>(child: Text('FX'), value: 2.0)
          // ],
          underline: Container(),
          onChanged: (value) {
            setState(() {
              secilenDeger = value!;
            });
          },
        ));
  }

  _buildKrediler() {
    return Container(
      padding: Sabitler.dropPadding,
      decoration: BoxDecoration(
        color: Sabitler.anaRenk.shade200.withOpacity(0.3),
        borderRadius: Sabitler.borderRadius,
      ),
      child: DropdownButton<double>(
        value: secilenDeger2,
        items: DataHelper.tumDerslerinKredileri(),
        elevation: 16,
        underline: Container(),
        onChanged: (value) {
          setState(() {
            secilenDeger2 = value!;
          });
        },
      ),
    );
  }

  void _dersEkleveOrtalamaHesapla() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      var eklenecekDers = Ders(
          ad: girilenDersAdi,
          harfDegeri: secilenDeger,
          krediDegeri: secilenDeger2);
      DataHelper.dersEkle(eklenecekDers);
      // print('eklenecek ders $eklenecekDers');
      setState(() {
        
      });
    }
  }
}

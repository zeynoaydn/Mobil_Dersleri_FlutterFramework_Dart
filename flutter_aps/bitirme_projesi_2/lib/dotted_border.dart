
import 'package:bitirme_projesi_2/background2.dart';
import 'package:bitirme_projesi_2/page_to_edit.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:flutter/services.dart';

class dottedBorder extends StatefulWidget {
  @override
  State<dottedBorder> createState() => _dottedBorderState();
}

class _dottedBorderState extends State<dottedBorder> {
  void pickImage(BuildContext context) async {
    final XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );

    if (pickedFile == null) return;
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => PageToEdit(image: pickedFile)));
  }

  Future pickImageC() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);

      if (image == null) return;

      final imageTemp = File(image.path);
    } on PlatformException catch (e) {
      
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background2(
        child: Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 8,
            children: <Widget>[
              SizedBox(
                child: DottedBorder(
                  dashPattern: [10, 9],
                  strokeWidth: 4,
                  color: Colors.white.withOpacity(0.6),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 200,
                    height: MediaQuery.of(context).size.height - 350,
                    child: TextButton.icon(
                        onPressed: () {
                          _alertDialog();
                        },
                        icon: const Icon(
                          Icons.add,
                          size: 120,
                          color: Color.fromARGB(255, 220, 215, 215),
                          
                        ),
                        label: Text('')),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _alertDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: Column(
              children: [
                InkWell(
                  child: const Text('Fotoğraf Arşivi'),
                  onTap: () {
                    pickImage(context);
                    debugPrint('galeri deneme');
                  },
                ),
                const SizedBox(
                  height: 14,
                ),
                const Divider(
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 14,
                ),
                InkWell(
                  child: const Text('Kamera'),
                  onTap: () {
                    pickImageC();
                    debugPrint('Kamera deneme');
                  },
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Kapat')),
          ],
        );
      },
    );
  }
}

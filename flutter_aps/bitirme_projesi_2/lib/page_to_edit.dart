/* dördüncü versiyon */
/* sayfa düzeni hatalıydı onlar düzenlendi
  circular progress eklendi
   */
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:gallery_saver/gallery_saver.dart';
// import 'package:colorful_circular_progress_indicator/colorful_circular_progress_indicator.dart';

class PageToEdit extends StatefulWidget {
  PageToEdit({
    Key? key,
    required this.image,
  }) : super(key: key);
  late final XFile image;

  @override
  State<PageToEdit> createState() => _PageToEditState();
}

class _PageToEditState extends State<PageToEdit> {
  bool loading = false;

  void saveImage() async {
    await GallerySaver.saveImage(widget.image.path,
        toDcim: true, albumName: 'Flutter');
    Future.delayed(const Duration(seconds: 2), (() {
      setState(() {
        loading = false;
      });
    }));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 81, 81, 81),
          elevation: 2,
          actions: [
            InkWell(
              child: button(),
              onTap: () async {
                setState(() {
                  loading = true;
                });
                saveImage();
              },
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(children: [
              Container(height: MediaQuery.of(context).size.height - 140),
              Positioned(
                top: 31,
                left: 45,
                child: Container(
                  height: 390,
                  width: 270,
                  child: Image.file(File(widget.image.path)),
                ),
              ),
              Positioned(
                  top: 181,
                  left: 115,
                  child: loading
                      ? loadingMethod()
                      : Container(
                          width: 1,
                          height: 1,
                        ))
            ]),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                    onTap: () {
                      debugPrint('deneme');
                    },
                    child: SizedBox(
                        width: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            SizedBox(child: Icon(Icons.add)),
                            SizedBox(child: Text('deneme')),
                          ],
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      debugPrint('deneme');
                    },
                    child: SizedBox(
                        width: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            SizedBox(child: Icon(Icons.add)),
                            SizedBox(child: Text('deneme')),
                          ],
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      debugPrint('deneme');
                    },
                    child: SizedBox(
                        width: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            SizedBox(child: Icon(Icons.add)),
                            SizedBox(child: Text('deneme')),
                          ],
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      debugPrint('deneme');
                    },
                    child: SizedBox(
                        width: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            SizedBox(child: Icon(Icons.add)),
                            SizedBox(child: Text('deneme')),
                          ],
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      debugPrint('deneme');
                    },
                    child: SizedBox(
                        width: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            SizedBox(child: Icon(Icons.add)),
                            SizedBox(child: Text('deneme')),
                          ],
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      debugPrint('deneme');
                    },
                    child: SizedBox(
                        width: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            SizedBox(child: Icon(Icons.add)),
                            SizedBox(child: Text('deneme')),
                          ],
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      debugPrint('deneme');
                    },
                    child: SizedBox(
                        width: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            SizedBox(child: Icon(Icons.add)),
                            SizedBox(child: Text('deneme')),
                          ],
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      debugPrint('deneme');
                    },
                    child: SizedBox(
                        width: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            SizedBox(child: Icon(Icons.add)),
                            SizedBox(child: Text('deneme')),
                          ],
                        )),
                  ),InkWell(
                    onTap: () {
                      debugPrint('deneme');
                    },
                    child: SizedBox(
                        width: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            SizedBox(child: Icon(Icons.add)),
                            SizedBox(child: Text('deneme')),
                          ],
                        )),
                  ),
                  
                ],
              ),
            )
          ],
        ));
  }

  Container loadingMethod() {
    return Container(
        padding: EdgeInsets.all(5),
        width: 120,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: Colors.white.withOpacity(0.5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircularProgressIndicator(
              color: Colors.purple.shade200,
              backgroundColor: Colors.purple.shade400,
              strokeWidth: 4,
            ),
            const Text('Başarıyla İndirildi'),
          ],
        ));
  }

  void _alerDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Download'),
          content: const SingleChildScrollView(
              child: Text('Resim başarıyla indirildi')),
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

  Column button() {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          width: 80,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0, 1.0],
              colors: [
                Colors.deepPurple.shade400,
                Colors.deepPurple.shade200,
              ],
            ),
            color: Colors.deepPurple.shade300,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Save',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ),
      ],
    );
  }
}



/* dördüncü versiyon */
/* download olduktan sonra alert dialog verildi
  alt seçenekler koyuldu
  butona linear gradient uygulandı
  sayfa düzenlenmesi hatalı
   */
// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:gallery_saver/gallery_saver.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';

// class PageToEdit extends StatefulWidget {
//   PageToEdit({
//     Key? key,
//     required this.image,
//   }) : super(key: key);
//   late final XFile image;
//   @override
//   State<PageToEdit> createState() => _PageToEditState();
// }

// class _PageToEditState extends State<PageToEdit> {
//   bool loading = false;
//   void saveImage() async {
//     await GallerySaver.saveImage(widget.image.path,
//         toDcim: true, albumName: 'Flutter');
//     Future.delayed(Duration(seconds:2),(() {
//           setState(() {
//       loading = false;
//     });
//     }));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: const Color.fromARGB(255, 81, 81, 81),
//           elevation: 2,
//           actions: [
//             InkWell(
//               child: button(),
//               onTap: () async {
//                 // saveImage();
//                 // _alerDialog();
//                 // loading
//                 //     ? showDialog(
//                 //         context: context,
//                 //         builder: (context) {
//                 //           return const Center(
//                 //             child: CircularProgressIndicator(),
//                 //           );
//                 //         },
//                 //       )
//                 //     : '';
//                 setState(() {
//                   loading = true;
//                 });
//                 saveImage();

//                 // EasyLoading.showSuccess('Resim İndiriliyor',
//                 //     duration: Duration(milliseconds: 1000), dismissOnTap: true);
//                 // Future.delayed(
//                 //   Duration(milliseconds: 1100),
//                 //   () {},
//                 // );
//               },
//             ),
//             // Padding(
//             //   padding: const EdgeInsets.all(8.0),
//             //   child: ElevatedButton(
//             //     child:const Text('Save',style:TextStyle(fontSize: 20,fontWeight: FontWeight.w400,),),
//             //     style: ElevatedButton.styleFrom(
//             //     backgroundColor: Colors.red,
//             //   ),
//             //   onPressed: () {
//             //       saveImage();
//             //       _alerDialog();
//             //     },
//             //   ),
//             // ),
//             // const SizedBox(width: 10,),
//             // TextButton(
//             //   style: TextButton.styleFrom(
//             //   backgroundColor: Color.fromARGB(255, 7, 230, 255),
//             // ),
//             //   child: const Text('Save'),
//             //   onPressed:() {
//             //     saveImage();
//             //     _alerDialog();
//             //   },
//             // ),
//             // IconButton(
//             //     onPressed: () {
//             //       saveImage();
//             //       _alerDialog();
//             //       debugPrint('indirildi');
//             //     },
//             //     icon: const Icon(Icons.download)),
//           ],
//         ),
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             const SizedBox(
//               height: 29,
//             ),
//             Stack(children: [
//               Container(
//                 color: const Color.fromARGB(255, 81, 81, 81),
//                 height: MediaQuery.of(context).size.height - 190,
//                 width: MediaQuery.of(context).size.width - 70,
//                 child: Image.file(File(widget.image.path)),
//               ),
//               loading
//                   ? Align(
//                       alignment: Alignment.center,
//                       child: CircularProgressIndicator(),
//                     )
//                   : Text(''),
//             ]),
//             const SizedBox(
//               height: 21,
//             ),

//             Container(
//               color: Colors.red,
//               width: double.infinity,
//               height: 60,
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                 children: [
//                   Container(
//                       width: 90,
//                       color: Colors.purple,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: const [
//                           SizedBox(child: Icon(Icons.add)),
//                           SizedBox(child: Text('deneme')),
//                         ],
//                       )),
//                   Container(
//                       width: 90,
//                       color: Colors.blue,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: const [
//                           SizedBox(child: Icon(Icons.add)),
//                           SizedBox(child: Text('deneme')),
//                         ],
//                       )),
//                   Container(
//                       width: 90,
//                       color: Colors.amber,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: const [
//                           SizedBox(child: Icon(Icons.add)),
//                           SizedBox(child: Text('deneme')),
//                         ],
//                       )),
//                   Container(
//                       width: 90,
//                       color: Colors.green,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: const [
//                           SizedBox(child: Icon(Icons.add)),
//                           SizedBox(child: Text('deneme')),
//                         ],
//                       )),
//                   Container(
//                       width: 90,
//                       color: Color.fromARGB(255, 39, 165, 176),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: const [
//                           SizedBox(child: Icon(Icons.add)),
//                           SizedBox(child: Text('deneme')),
//                         ],
//                       )),
//                   Container(
//                       width: 90,
//                       color: Color.fromARGB(255, 153, 176, 39),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: const [
//                           SizedBox(child: Icon(Icons.add)),
//                           SizedBox(child: Text('deneme')),
//                         ],
//                       )),
//                   Container(
//                       width: 90,
//                       color: Color.fromARGB(255, 176, 87, 39),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: const [
//                           SizedBox(child: Icon(Icons.add)),
//                           SizedBox(child: Text('deneme')),
//                         ],
//                       )),
//                 ],
//               ),
//             )
//           ],
//         ));
//   }

//   void _alerDialog() {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: const Text('Download'),
//           content: const SingleChildScrollView(
//               child: Text('Resim başarıyla indirildi')),
//           actions: [
//             TextButton(
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//                 child: const Text('Kapat')),
//           ],
//         );
//       },
//     );
//   }

//   Column button() {
//     return Column(
//       children: [
//         Container(
//           alignment: Alignment.center,
//           width: 80,
//           height: 40,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             boxShadow: const [
//               BoxShadow(
//                   color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
//             ],
//             gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               stops: [0.0, 1.0],
//               colors: [
//                 Colors.deepPurple.shade400,
//                 Colors.deepPurple.shade200,
//               ],
//             ),
//             color: Colors.deepPurple.shade300,
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: const [
//               Text(
//                 'Save',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 21,
//                     fontWeight: FontWeight.w300),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }



/* hatalı üçüncü versiyon */
/* easy loading eklenmye çalışıldı */
// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:gallery_saver/gallery_saver.dart';

// class deneme extends StatefulWidget {
//   deneme({
//     Key? key,
//     required this.image,
//   }) : super(key: key);
//   late final XFile image;
//   late final XFile pickImage;

//   @override
//   State<deneme> createState() => _denemeState();
// }

// class _denemeState extends State<deneme> {
//   String buttontext = 'take photo';

//   void saveImage() async {
//     await GallerySaver.saveImage(widget.image.path).then((value) {
//       setState(() {
//         buttontext = 'image saved';
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('deneme'),
//         actions: [
//           IconButton(
//               onPressed: () {
//                 saveImage();
//                 debugPrint('indirildi');
//               },
//               icon: Icon(Icons.download)),
//         ],
//       ),
//       body: Container(
//           child: Column(
//         children: [
//           SizedBox(
//             height: 35,
//           ),
//           Container(
//             width: 100,
//             height: 200,
//             alignment: Alignment.center,
//             child: Image.file(File(widget.image.path), fit: BoxFit.contain),
//           ),
//           Container(
//                   child: FadeInImage.assetNetwork(
//                     fit: BoxFit.cover,
//                     placeholder: 'assets/images/loading.gif',
//                     image: widget.image.path),
//                 ),
//           //Text('merhaba'), Image.file(File(image.path)),
//           //Image.file(File())
//         ],
//       )),
//     );
//   }
// }



/* ikinci versiyon */
/* fotoğraf inidirildi */
// import 'dart:io';
// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:gallery_saver/gallery_saver.dart';

// class deneme extends StatefulWidget {
//   deneme({
//     Key? key,
//     required this.image,
//   }) : super(key: key);
//   late final XFile image;

//   @override
//   State<deneme> createState() => _denemeState();
// }

// class _denemeState extends State<deneme> {
//   void saveImage() async {
//     await GallerySaver.saveImage(widget.image.path,
//         toDcim: true, albumName: 'Flutter');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('deneme'),
//         actions: [
//           IconButton(
//               onPressed: () {
//                 saveImage();
//                 debugPrint('indirildi');
//               },
//               icon: Icon(Icons.download)),
//         ],
//       ),
//       body: Container(
//           child: Column(
//         children: [
//           SizedBox(
//             height: 35,
//           ),
//           Container(
//             width: 100,
//             height: 200,
//             alignment: Alignment.center,
//             child: Image.file(File(widget.image.path), fit: BoxFit.contain),
//           ),
//           //Text('merhaba'), Image.file(File(image.path)),
//           //Image.file(File())
//         ],
//       )),
//     );
//   }
// }



/* ilk versiyon */
/* fotoğraf başka sayfaya yönlendirildi */
// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class deneme extends StatefulWidget {
//   deneme({
//     Key? key,
//     required this.image,
//   }) : super(key: key);
//   late final XFile image;

//   @override
//   State<deneme> createState() => _denemeState();
// }

// class _denemeState extends State<deneme> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('deneme'),
//         actions: [IconButton(onPressed: () {}, icon: Icon(Icons.check))],
//       ),
//       body: Container(
//           child: Column(
//         children: [
//           SizedBox(
//             height: 35,
//           ),
//           Container(
//             alignment: Alignment.center,
//             child: Image.file(File(widget.image.path)),
//           ),
//           //Text('merhaba'), Image.file(File(image.path)),
//           //Image.file(File())
//         ],
//       )),
//     );
//   }
// }

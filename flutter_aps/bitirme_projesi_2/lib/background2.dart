import 'package:flutter/material.dart';

class Background2 extends StatelessWidget {
  final Widget child;
  const Background2({
    Key? key,
    required this.child,
    this.topImage = "assets/images/purplesky.jpg",
  }) : super(key: key);

  final String topImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 592,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              child: Image.asset(
                topImage,
                height: 592,
                width: 360,
                fit: BoxFit.fill,
              ),
            ),
            SafeArea(child: child),
          ],
        ),
      ),
    );
  }
}

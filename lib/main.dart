import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget example1 = SplashScreenView(
      navigateRoute: HomeScreen(),
      duration: 5000,
      imageSize: 130,
      imageSrc: "assets/img/logo.png",
      text: "Welcome",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 40.0,
      ),
      colors: [
        Colors.blue,
        Colors.red,
      ],
      backgroundColor: Colors.white,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prakerin 2022',
      home: example1,
    );
  }
}
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:buildsplitapp/home.dart';
import 'package:flutter/material.dart';
class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override


  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        splash: 'images/img4.jpg',
        nextScreen: MyApp(),
        splashTransition: SplashTransition.rotationTransition,

      ),
    );
  }
}

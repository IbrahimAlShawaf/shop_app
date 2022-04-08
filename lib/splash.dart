import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/home_screen.dart';
import 'package:plant_app/screens/home/login_screen/loginscreen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class Splash2 extends StatelessWidget {
  const Splash2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: LoginPage(),
      duration: 8000,
      imageSize: 500,
      imageSrc: "assets/images/logo.jpg",
      text: "عـــالم الفــضة",
      textType: TextType.ColorizeAnimationText,
      textStyle: const TextStyle(
        fontSize: 50.0,
        fontWeight: FontWeight.bold,
        color: Colors.white
      ),
      backgroundColor: Color.fromARGB(166, 89, 121, 226),
    );
  }
}

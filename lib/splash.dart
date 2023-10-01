import 'package:delivr/afterSplash.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override

  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return AnimatedSplashScreen(
      duration: 1000,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icon.png',
            // fit: BoxFit.cover,
            height: 70,
            width: size.width*.7,
          ),
        ],
      ),
      backgroundColor: Colors.black87,
      // splashIconSize: 10000,
      nextScreen: const afterSpalsh(),
    );
          
  }
}

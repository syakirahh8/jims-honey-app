import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();

    // animasi fade in
    Future.delayed(Duration(milliseconds: 800), () {
      setState(() {
        _opacity = 1.0;
      });
    });

    // pindah ke onboarding setelah 3 detik
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/onboarding');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[200],
      body: Center(
        child: AnimatedOpacity(
          opacity: _opacity,
          duration: Duration(seconds: 2),
          child: Image.asset(
            "assets/images/logo jims honey.png", // buat logo nya
            width: 220,
            height: 220,
          ),
        ),
      ),
    );
  }
}

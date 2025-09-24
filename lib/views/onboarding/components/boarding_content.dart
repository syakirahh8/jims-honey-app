import 'package:flutter/material.dart';
import 'package:jims_honey/utils/const.dart';
import 'package:jims_honey/utils/size_config.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({super.key, required this.title, required this.text, required this.image});

  final String title, text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(flex: 2),
        Image.asset(
          image,
          fit: BoxFit.cover,
        ),
        Spacer(),
        Text(
          title,
          style: TextStyle(
            color: textColor,
            fontSize: getProporsionateScreenWidth(40),
            fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 20),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w200,
            color: textColor,
          ),
        ),
      ],
    );
  }  
}
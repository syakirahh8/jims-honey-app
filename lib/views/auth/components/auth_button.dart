import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color textColor;
  final Color backgroundColor;
  final Widget? icon;

  const AuthButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.textColor,
    required this.backgroundColor,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      // ?? adalah simbol dari null-aware operator
      // atau operator yang digunakan untuk menyimpan nilai default untuk suatu kondisi
      icon: icon ?? SizedBox.shrink(),
      label: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      style: ElevatedButton.styleFrom(
        elevation: 2,
        shadowColor: Colors.black26,
        minimumSize: Size(double.infinity, 50),
        backgroundColor: backgroundColor,
        foregroundColor: textColor,
        side: backgroundColor == Colors.white
            ? BorderSide(color: textColor)
            : null,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}

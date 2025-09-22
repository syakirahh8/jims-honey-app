import 'package:flutter/material.dart';
import 'package:owala/utils/const.dart';

class ColorPicker extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const ColorPicker({super.key, required this.color, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      // untuk color picker
      margin: EdgeInsets.only(
        top: defaultPadding,
        right: defaultPadding
      ),
      // jarak dari color picker ke teks color
      padding: EdgeInsets.all(2.5),
      width: 20,
      height: 20,
      // modifikasi untuk border dari color picker nya
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent
        )
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
        shape: BoxShape.circle,
        ),
      ),
    );
  }
}
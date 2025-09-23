import 'package:flutter/material.dart';
import 'package:jims_honey/models/products_model.dart';
import 'package:jims_honey/utils/const.dart';
import 'package:jims_honey/views/detail/components/color_picker.dart';

class ColorAndSize extends StatelessWidget {
  final ProductsModel product;

  const ColorAndSize({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Color", style: TextStyle(color: textColor)),
              Row(
                children: [
                  ColorPicker(color: Color(0xFF90B4C6), isSelected: true),
                  ColorPicker(color: Color(0xFFFCEABF), isSelected: false),
                  ColorPicker(color: Color(0xFF989493), isSelected: false),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Size",
                style: TextStyle(
                  color: textColor
                ),
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(color: textColor),
                  children: [
                    TextSpan(
                      text: "${product.size} oz",
                      style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold)

                    )
                  ]
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

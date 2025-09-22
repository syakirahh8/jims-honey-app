import 'package:flutter/material.dart';
import 'package:owala/models/products_model.dart';
import 'package:owala/utils/const.dart';

class Description extends StatelessWidget {
  final ProductsModel product;

  const Description({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: defaultPadding),
      child: Text(
        product.description,
        style: TextStyle(
          height: 1.5, // untuk jarak perkata
          color: textColor
        ),
      ),
    );
  }
}
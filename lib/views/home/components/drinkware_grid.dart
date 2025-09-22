import 'package:flutter/material.dart';
import 'package:owala/data/products_data.dart';
import 'package:owala/utils/const.dart';
import 'package:owala/views/home/components/items_cart.dart';

class DrinkwareGrid extends StatelessWidget {
  const DrinkwareGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: defaultPadding,
          crossAxisSpacing: defaultPadding,
          childAspectRatio: 0.75
        ),
        itemCount: products.length,
        itemBuilder: (context, index) => ItemsCart(
          product: products[index],
          press: () => Navigator.pushNamed(
            context,
            '/detail',
            arguments: products[index]
          ),
        ),
      ),
    );
  }
}
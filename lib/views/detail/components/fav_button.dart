import 'package:flutter/material.dart';
import 'package:jims_honey/models/products_model.dart';

class FavButton extends StatelessWidget {
  final ProductsModel product;

  const FavButton({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    bool isFavorite;

    return IconButton(
      onPressed: () {
        if (isFavorite = true) {
          // TODO dari provider untuk memutuskan dia warna apa dan ite, nya masuk kemana
        } else {
          // TODO masukkan kode untuk logika penambahan ite, di halaman wishlist
        }
      },
      icon: Icon(
        Icons.favorite,
        color: Colors.red,
      ),
    );
  }
}
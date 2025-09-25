import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProductsModel {
  final String image, title, description, category;
  final int price, size, id;
  final Color color;

  ProductsModel({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.size,
    required this.id,
    required this.color,
    required this.category,
  });

  String getFormattedPrice() {
    final formatter = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    );
    return formatter.format(price);
  }
}

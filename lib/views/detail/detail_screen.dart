import 'package:flutter/material.dart';
import 'package:jims_honey/models/products_model.dart';
import 'package:jims_honey/utils/const.dart';
import 'package:jims_honey/views/detail/components/add_to_cart.dart';
import 'package:jims_honey/views/detail/components/color_and_size.dart';
import 'package:jims_honey/views/detail/components/description.dart';
import 'package:jims_honey/views/detail/components/product_title.dart';

class DetailScreen extends StatefulWidget {
  final ProductsModel product;

  const DetailScreen({super.key, required this.product});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int quantity = 1;
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: widget.product.color,
      appBar: AppBar(
        backgroundColor: widget.product.color,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: textColor),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined, color: textColor),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height,
              child: Stack(
                children: [
                  // CARD PUTIH
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.38),
                    padding: EdgeInsets.only(
                      top: defaultPadding,
                      left: 25,
                      right: defaultPadding,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         SizedBox(height: 50),
                        ColorAndSize(product: widget.product),
                         SizedBox(height: defaultPadding),
                        Description(product: widget.product),
                         SizedBox(height: 20),

                        // quantity sm si favorite nya
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                _squareBtn(
                                  icon: Icons.remove,
                                  onTap: () {
                                    setState(() {
                                      if (quantity > 1) quantity--;
                                    });
                                  },
                                ),
                                 SizedBox(width: 8),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 8),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                        color: textColor.withOpacity(0.25)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 4,
                                        offset: Offset(0, 2),
                                      )
                                    ],
                                  ),
                                  child: Text(
                                    quantity.toString().padLeft(2, '0'),
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                 SizedBox(width: 8),
                                _squareBtn(
                                  icon: Icons.add,
                                  onTap: () {
                                    setState(() => quantity++);
                                  },
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () =>
                                  setState(() => isFavorite = !isFavorite),
                              icon: Icon(
                                isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: isFavorite
                                    ? Colors.red
                                    : textColor.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),

                         SizedBox(height: 20),
                         // tombol quantiity
                        AddToCart(product: widget.product, quantity: quantity),
                      ],
                    ),
                  ),

                  // judul sm gambar diatas card nya
                  Positioned(
                    top: size.height * 0.03,
                    left: defaultPadding,
                    right: 1,
                    child: ProductTitle(product: widget.product),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget _squareBtn({required IconData icon, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: textColor.withOpacity(0.25)),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            )
          ],
        ),
        child: Icon(icon, size: 20, color: textColor),
      ),
    );
  }
}

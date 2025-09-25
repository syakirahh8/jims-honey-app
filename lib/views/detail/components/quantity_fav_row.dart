import 'package:flutter/material.dart';
import 'package:jims_honey/utils/const.dart';

class QuantityFavRow extends StatefulWidget {
  const QuantityFavRow({
    super.key,
    this.initialQty = 1,
    required this.onQtyChanged,
    this.onFavChanged,
  });

  final int initialQty;
  final ValueChanged<int> onQtyChanged;
  final ValueChanged<bool>? onFavChanged;

  @override
  State<QuantityFavRow> createState() => _QuantityFavRowState();
}

class _QuantityFavRowState extends State<QuantityFavRow> {
  late int qty;
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    qty = widget.initialQty;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // --- Stepper (- 01 +) di kiri ---
        Row(
          children: [
            _squareBtn(
              icon: Icons.remove,
              onTap: () {
                if (qty > 1) {
                  setState(() => qty--);
                  widget.onQtyChanged(qty);
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                qty.toString().padLeft(2, '0'),
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            _squareBtn(
              icon: Icons.add,
              onTap: () {
                setState(() => qty++);
                widget.onQtyChanged(qty);
              },
            ),
          ],
        ),

        // --- Heart di kanan ---
        IconButton(
          onPressed: () {
            setState(() => isFavorite = !isFavorite);
            widget.onFavChanged?.call(isFavorite);
          },
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: isFavorite ? Colors.red : textColor.withOpacity(0.5),
          ),
        ),
      ],
    );
  }

  Widget _squareBtn({required IconData icon, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 32, height: 32,
        decoration: BoxDecoration(
          border: Border.all(color: textColor.withOpacity(0.35)),
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Icon(icon, size: 18, color: textColor),
      ),
    );
  }
}

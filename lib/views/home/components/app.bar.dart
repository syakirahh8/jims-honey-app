import 'package:flutter/material.dart';
import 'package:jims_honey/utils/const.dart';

class CatalogueAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CatalogueAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Padding(
        padding: EdgeInsets.only(left: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.location_on_outlined, size: 18, color: primaryColor),
           SizedBox(width: 3),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Location",
                      style: TextStyle(
                        color: textColor.withOpacity(0.7),
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      "Jakarta, Indonesia",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        Row(
          children: [
            _circleIconButton(Icons.search),
             SizedBox(width: 4),
            _circleIconButton(Icons.shopping_cart_outlined),
             SizedBox(width: 4),
            _circleIconButton(Icons.notifications_none),
             SizedBox(width: 12), // jarak aman kanan
          ],
        ),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(1),
        child: Container(
          height: 1,
          color: Colors.black12,
        ),
      ),
    );
  }

  // buat widgte button nya
  Widget _circleIconButton(IconData icon) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: Size(40, 40),
        shape: CircleBorder(),
        side: BorderSide(color: Colors.black26, width: 1.2),
        padding: EdgeInsets.all(8),
        backgroundColor: Colors.white,
      ),
      onPressed: () {},
      child: Icon(icon, color: Colors.black87, size: 20),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 8);
}

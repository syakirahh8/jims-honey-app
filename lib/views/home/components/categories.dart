import 'package:flutter/material.dart';
import 'package:jims_honey/utils/const.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

// kamu boleh tetap simpan icon di data, tapi di UI ini kita pakai teks saja
final List<Map<String, dynamic>> categories = [
  {"text": "All"},
  {"text": "Newest"},
  {"text": "Popular"},
  {"text": "Clothes"},
  {"text": "Bags"},
];

int selectedIndex = 0;

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Flash Sale",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.arrow_forward_ios,
                  color:textColor,
                  size: 18,
                ),
              ),
            ],
          ),
           SizedBox(height: defaultPadding),
          SizedBox(
            height: 40, // tinggi chip bar
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: categories.length,
              itemBuilder: (context, index) => _buildCategory(index),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategory(int index) {
    final bool isSelected = selectedIndex == index;

    return Padding(
      padding: EdgeInsets.only(right: 8),
      child: GestureDetector(
        onTap: () => setState(() => selectedIndex = index),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          decoration: BoxDecoration(
            color: isSelected ? primaryColor : Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: isSelected ? Colors.transparent : Color.fromARGB(255, 150, 148, 148),
              width: 1.2,
            ),
            boxShadow: isSelected
                ? [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: Offset(0, 3),
                    ),
                  ]
                : null,
          ),
          child: Text(
            categories[index]["text"],
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: isSelected ? Colors.white : Color.fromARGB(255, 169, 163, 163),
            ),
          ),
        ),
      ),
    );
  }
}

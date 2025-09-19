import 'package:flutter/material.dart';
import 'package:owala/models/products_model.dart';

final List<ProductsModel> products = [
  ProductsModel(
    id: 1,
    title: "FreeSip®",
    // data asli berformat int
    price: 433800,
    // data yang sudah dikonversi menjadi string
    // --> "433800"
    size: 24,
    description: "Welcome to my world! With a unique FreeSip spout and triple-layer insulation, your drinks stay just right. Explore my vibrant colors and sleek design! Perfect for any occasion, I guarantee a great look in photos!",
    image: "assets/images/drinkware/FreeSip_BlueOasis.png",
    color: const Color(0xFFE1EFF9)),
  ProductsModel(
    id: 2,
    title: "SmoothSip® Slider",
    price: 349500,
    size: 12,
    description: "I’ll never spill the (coffee) beans. You could say I’m pretty tight-lipped—all thanks to my leakproof slider lid. Keeping drinks hot or cold, my oh-so-smooth spout offers the best sipping experience. Cup holder friendly? You bet! Let’s grab coffee?",
    image: "assets/images/drinkware/SmoothSip_Cloudscape.png",
    color: const Color(0xFFE4F2F0)),
  ProductsModel(
    id: 3,
    title: "FreeSip® Twist",
    price: 425500,
    size: 20,
    description: "I’m the ultimate FreeSip companion! A versatile design for travel or nights out, I fit easily in any bag. I keep drinks cold for 24 hours and handle hot and fizzy beverages. I’m the perfect choice for your sipping adventures!",
    image: "assets/images/drinkware/FreeSipTwist_SleepyLavender.png",
    color: const Color(0xFFD0C3C7)),
  ProductsModel(
    id: 4,
    title: "40oz Tumbler",
    price: 578000,
    size: 40,
    description: "Stay hydrated with the Owala 40oz Tumbler! This isn’t just any insulated cup; it has a 2-in-1 sip-or-swig lid. Fits in most cup holders and is splash-resistant—seriously! Perfect for road trips and stylish hydration.",
    image: "assets/images/drinkware/40oz_DownToEarth.png",
    color: const Color(0xFFD2C9B6)),
  ProductsModel(
    id: 5,
    title: "24oz Tumbler",
    price: 425500,
    size: 24,
    description: "Just a normal tumbler! Great for hot and cold drinks, I feature a removable straw and cupholder compatibility. While I may seem simple, I deliver the hydration you need without the celebrity status. Functionality is my game!",
    image: "assets/images/drinkware/24oz_CandyStore.png",
    color: const Color(0xFFFFE6EA)),
  ProductsModel(
    id: 6,
    title: "SmoothSip®",
    price: 380000,
    size: 20,
    description: "Hey there! I’m packed with caffeine and ready for fun. My smooth spout keeps drinks at the ideal temperature. Splash-resistant, not leak-proof, so sip confidently. Let’s meet for coffee and enjoy some delightful moments together!",
    image: "assets/images/drinkware/SmoothSip_TelescopeTales.png",
    color: const Color(0xFFB0BBCC),
  ),
];
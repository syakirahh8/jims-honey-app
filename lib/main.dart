import 'package:flutter/material.dart';
import 'package:jims_honey/utils/const.dart';
import 'package:jims_honey/models/products_model.dart';
import 'package:jims_honey/views/auth/login_screen.dart';
import 'package:jims_honey/views/auth/register_screen.dart';
import 'package:jims_honey/views/detail/detail_screen.dart';
import 'package:jims_honey/views/home/catalogue_screen.dart';
import 'package:jims_honey/views/onboarding/onboarding_screen.dart';
import 'package:jims_honey/views/opening/splash_screen.dart';

void main() {
  runApp(JimsHoney());
}

class JimsHoney extends StatefulWidget {
  const JimsHoney({super.key});

  @override
  State<JimsHoney> createState() => _JimsHoneyState();
}

class _JimsHoneyState extends State<JimsHoney> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Jims Honey App",
      theme: ThemeData(
        fontFamily: 'Plus Jakarta Sans',
        visualDensity: VisualDensity.adaptivePlatformDensity, // untuk mengatur kepadatan di setiap platform
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: textColor),
          bodySmall: TextStyle(color: textColor),
        ),
        scaffoldBackgroundColor: Colors.white
      ),
      // initialRoute : untuk mendefinisikan kelas apa yang tampil pertama kali saat aplikasi dijalankan
      initialRoute: '/catalogue',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/onboarding': (context) => OnboardingScreen(),
        '/login': (context) => LoginScreen(),
        '/register' : (context) => RegisterScreen(),
        '/catalogue' : (context) => CatalogueScreen(),
        '/detail' : (context) => DetailScreen(
          // ModalRoute adalah class yang wajib dipanggil ketika akan melakukan navigator
          product: ModalRoute.of(context)!.settings.arguments as ProductsModel,
        ),
      },
    );
  }
}
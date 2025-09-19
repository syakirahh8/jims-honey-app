import 'package:flutter/material.dart';
import 'package:owala/utils/const.dart';
import 'package:owala/views/auth/login_screen.dart';
import 'package:owala/views/auth/register_screen.dart';
import 'package:owala/views/home/catalogue_screen.dart';
import 'package:owala/views/onboarding/onboarding_screen.dart';

void main() {
  runApp(OwalaApp());
}

class OwalaApp extends StatefulWidget {
  const OwalaApp({super.key});

  @override
  State<OwalaApp> createState() => _OwalaAppState();
}

class _OwalaAppState extends State<OwalaApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Owala App",
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
      initialRoute: '/login',
      routes: {
        '/onboarding': (context) => OnboardingScreen(),
        '/login': (context) => LoginScreen(),
        '/register' : (context) => RegisterScreen(),
        '/catalogue' : (context) => CatalogueScreen(),
      },
    );
  }
}
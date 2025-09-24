import 'package:flutter/material.dart';
import 'package:jims_honey/utils/const.dart';
import 'package:jims_honey/utils/validators.dart';
import 'package:jims_honey/views/auth/components/auth_button.dart';
import 'package:jims_honey/views/auth/components/auth_form_field.dart';

class LoginScreen extends StatelessWidget {
  // untuk memanggil sebuah validator dari setiap form
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double topPad = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: secondaryColor,
      body: Stack(
        children: [
          Container(height: topPad + 920, color: secondaryColor),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 80, right: 20),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, size: 35, color: textColor,),
                  onPressed: () =>
                    Navigator.pushNamed(context, '/onboarding'),
                ),
                SizedBox(width: 85), // jarak antara icon & teks
                Text(
                  "Sign In",
                  style: TextStyle(
                    color: textColor,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // CARD PUTIHNYA
          Positioned.fill(
            top: topPad + 190, // jarak dari atas
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, -2),
                  ),
                ],
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Let’s Get Started",
                        style: TextStyle(
                          fontSize: 38,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 2),
                    Center(
                      child: Text(
                        "Happy to see you again!",
                        style: TextStyle(
                          fontSize: 20,
                          color: textColor,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    // Form login
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          AuthFormField(
                            controller: _emailController,
                            label: "Email",
                            hintText: "Enter your email",
                            validator: Validators.validateEmail,
                          ),
                          SizedBox(height: 20),
                          AuthFormField(
                            controller: _passwordController,
                            label: "Password",
                            hintText: "Enter your password",
                            obscureText: true,
                            suffixIcon: Icon(Icons.visibility_off),
                            validator: Validators.validatePassword,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Forgot Password",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: primaryLightColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 24),
                          AuthButton(
                            text: "Sign In",
                            backgroundColor: primaryColor,
                            textColor: Colors.white,
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.pushReplacementNamed(
                                  context,
                                  '/catalogue',
                                );
                              }
                            },
                          ),
                          SizedBox(height: 16),
                          // Register link
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don’t have an account?",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              TextButton(
                                onPressed: () =>
                                    Navigator.pushNamed(context, '/register'),
                                child: Text(
                                  "Register",
                                  style: TextStyle(
                                    color: primaryLightColor,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Google
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            shape: CircleBorder(),
                            side: BorderSide(color: textColor, width: 1.5),
                            padding: EdgeInsets.all(12),
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {},
                          child: Image.asset(
                            "assets/icons/google.png",
                            height: 24,
                            width: 24,
                          ),
                        ),

                        SizedBox(width: 8),

                        // Facebook
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            shape: CircleBorder(),
                            side: BorderSide(color: textColor, width: 1.5),
                            padding: EdgeInsets.all(12),
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {},
                          child: Image.asset(
                            "assets/icons/facebook.png",
                            height: 24,
                            width: 24,
                          ),
                        ),

                        SizedBox(width: 8),

                        // X (Twitter)
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            shape: CircleBorder(),
                            side: BorderSide(color: textColor, width: 1.5),
                            padding: EdgeInsets.all(12),
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {},
                          child: Image.asset(
                            "assets/icons/X.png",
                            height: 24,
                            width: 24,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

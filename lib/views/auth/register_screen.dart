import 'package:flutter/material.dart';
import 'package:jims_honey/utils/const.dart';
import 'package:jims_honey/utils/validators.dart';
import 'package:jims_honey/views/auth/components/auth_button.dart';
import 'package:jims_honey/views/auth/components/auth_form_field.dart';

class RegisterScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double topPad = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: secondaryColor,
      body: Stack(
        children: [
          // header pink
          Container(height: topPad + 920, color: secondaryColor),

          // back + title
          Padding(
            padding: EdgeInsets.only(left: 20, top: 80, right: 20),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, size: 35, color: textColor),
                  onPressed: () => Navigator.pushNamed(context, '/login'),
                ),
               SizedBox(width: 75),
                Text(
                  "Sign Up",
                  style: TextStyle(
                    color: textColor,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // CARD PUTIH
          Positioned.fill(
            top: topPad + 190,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(28),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, -2),
                  ),
                ],
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // heading
                     Center(
                      child: Text(
                        "Create Account",
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
                        "Sign up to get started!",
                        style: TextStyle(
                          fontSize: 20,
                          color: textColor,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                     SizedBox(height: 20),

                    // ===== FORM REGISTER (4 field) =====
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          AuthFormField(
                            controller: _nameController,
                            label: "Full Name",
                            hintText: "Enter your full name",
                            validator: Validators.validateFullName,
                          ),
                           SizedBox(height: 20),
                          AuthFormField(
                            controller: _emailController,
                            label: "Email",
                            hintText: "Enter your email",
                            keyboardType: TextInputType.emailAddress,
                            validator: Validators.validateEmail,
                          ),
                           SizedBox(height: 20),
                          AuthFormField(
                            controller: _passwordController,
                            label: "Password",
                            hintText: "Enter your password",
                            obscureText: true,
                            suffixIcon:  Icon(Icons.visibility_off),
                            validator: Validators.validatePassword,
                          ),
                           SizedBox(height: 20),
                          AuthFormField(
                            controller: _confirmPasswordController,
                            label: "Confirm Password",
                            hintText: "Confirm your password",
                            obscureText: true,
                            suffixIcon: Icon(Icons.visibility_off),
                            validator: (value) =>
                                Validators.validateConfirmPassword(
                                  value,
                                  _passwordController.text,
                                ),
                          ),
                           SizedBox(height: 24),
                          AuthButton(
                            text: "Sign Up",
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
                          // link ke login
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               Text(
                                "Already have an account?",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              TextButton(
                                onPressed: () =>
                                    Navigator.pushNamed(context, '/login'),
                                child: Text(
                                  "Sign In",
                                  style: TextStyle(
                                    color: primaryLightColor,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Google
                              OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  shape: CircleBorder(),
                                  side: BorderSide(
                                    color: textColor,
                                    width: 1.5,
                                  ),
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
                                  side: BorderSide(
                                    color: textColor,
                                    width: 1.5,
                                  ),
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
                                  side: BorderSide(
                                    color: textColor,
                                    width: 1.5,
                                  ),
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
                          SizedBox(height: 20)
                        ],
                      ),
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

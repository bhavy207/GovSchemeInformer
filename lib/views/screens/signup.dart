import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:govunity_connect/views/screens/login_page.dart';
import 'package:govunity_connect/screens/all_scheme_page.dart';
import 'package:govunity_connect/helper/auth_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController cpasswordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> saveUserData(String email, String displayName) async {
    final prefs = await SharedPreferences.getInstance();
    final Map<String, dynamic> userData = {
      'email': email,
      'displayName': displayName,
    };
    final String userJson = jsonEncode(userData);
    await prefs.setString('userData', userJson);
  }

  Future<void> _navigateToAllSchemePage() async {
    if (!mounted) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const AllSchemePage()),
    );
  }

  void signup(BuildContext context, String email, String password, String cpassword) async {
    if (password != cpassword) {
      Get.snackbar('Error', 'Passwords do not match');
      return;
    }
    try {
      User? user = await FirebaseAuthHelper.firebaseAuthHelper.userSignUp(
        email: email,
        password: password,
        context: context,
      );

      if (user != null) {
        Get.snackbar('Success', 'Account created successfully');
        await saveUserData(user.email ?? "", user.displayName ?? "User");
        _navigateToAllSchemePage();
      }
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  Future<void> _handleGoogleSignUp() async {
    User? user = await FirebaseAuthHelper.firebaseAuthHelper.userGoogleSignIn(context: context);
    if (user != null) {
      await saveUserData(user.email ?? "", user.displayName ?? "User");
      _navigateToAllSchemePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Center(
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: size.height * 0.100),
                    Image.asset(
                      'assets/img/logo.png',
                      height: 120,
                    ),
                    SizedBox(height: size.height * 0.030),
                    Text(
                      "Gov Unity Connect",
                      style: GoogleFonts.raleway(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.pink),
                    ),
                    SizedBox(height: size.height * 0.040),
                    TextFormField(
                      controller: emailController,
                      validator: (val) => (val == null || val.isEmpty) ? "Enter email" : null,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.blue.withValues(alpha: 0.05),
                        hintText: 'Email',
                        hintStyle: GoogleFonts.raleway(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      obscureText: true,
                      controller: passwordController,
                      validator: (val) => (val == null || val.isEmpty) ? "Enter password" : null,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.blue.withValues(alpha: 0.05),
                        hintText: 'Password',
                        hintStyle: GoogleFonts.raleway(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      obscureText: true,
                      controller: cpasswordController,
                      validator: (val) =>
                          (val == null || val.isEmpty) ? "Enter confirm password" : null,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.blue.withValues(alpha: 0.05),
                        hintText: 'Confirm Password',
                        hintStyle: GoogleFonts.raleway(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          signup(
                            context,
                            emailController.text.trim(),
                            passwordController.text.trim(),
                            cpasswordController.text.trim(),
                          );
                        }
                      },
                      child: Container(
                        width: size.width * 0.35,
                        height: size.height * 0.06,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(14)),
                        child: Text(
                          'Sign Up',
                          style: GoogleFonts.raleway(
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: InkWell(
                            onTap: _handleGoogleSignUp,
                            borderRadius: BorderRadius.circular(14),
                            child: Container(
                              height: 50,
                              width: size.width * 0.60,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14),
                                border: Border.all(color: Colors.grey.shade300),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Image(
                                    image: AssetImage('assets/img/google.png'),
                                    height: 24,
                                  ),
                                  const SizedBox(width: 12),
                                  Text(
                                    'Continue with Google',
                                    style: GoogleFonts.raleway(
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF36455A),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Already have an account?"),
            CupertinoButton(
              child: const Text("Log in"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

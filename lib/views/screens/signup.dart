import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:govunity_connect/views/screens/login_page.dart';
import 'package:govunity_connect/helper/auth_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController cpasswordController = TextEditingController();

  void signup(BuildContext context, String email, String password,
      String cpassword) async {
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
        if (context.mounted) {
          // Firebase automatically signs in the user after signup.
          // Since the user wants to "check implementation", for now we'll 
          // redirect to home or login. Let's send them to LoginPage to verify.
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const LoginPage()),
          );
        }
      }
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
                    SizedBox(height: size.height * 0.140),
                    Image.asset(
                      'assets/img/logo.png',
                      height: 150,
                    ),
                    SizedBox(height: size.height * 0.040),
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
                      validator: (val) => (val == "") ? "Enter email" : null,
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
                      validator: (val) => (val == "") ? "Enter password" : null,
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
                          (val == "") ? "Enter confirm password" : null,
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
                    const SizedBox(height: 20),
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
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Sign Up',
                              style: GoogleFonts.raleway(
                                  letterSpacing: 2,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
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

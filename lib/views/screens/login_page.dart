import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:govunity_connect/controller/language_controller.dart';
import 'package:govunity_connect/screens/all_scheme_page.dart';
import 'package:govunity_connect/helper/auth_helper.dart';
import 'package:govunity_connect/views/screens/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  SharedPreferences? _prefs;

  @override
  void initState() {
    super.initState();
    _initSharedPreferences();
    _checkLoggedIn();
  }

  Future<void> _initSharedPreferences() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future<void> saveUserData(String email, String displayName) async {
    final Map<String, dynamic> userData = {
      'email': email,
      'displayName': displayName,
    };
    final String userJson = jsonEncode(userData);
    if (_prefs != null) {
      await _prefs!.setString('userData', userJson);
    }
  }

  Future<bool> isLoggedIn() async {
    final String? userData = _prefs?.getString('userData');
    return userData != null;
  }

  Future<void> _checkLoggedIn() async {
    if (await isLoggedIn()) {
      _navigateToAllSchemePage();
    }
  }

  Future<void> _navigateToAllSchemePage() async {
    if (!mounted) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const AllSchemePage()),
    );
  }

  Future<void> _handleGoogleSignIn() async {
    User? user = await FirebaseAuthHelper.firebaseAuthHelper.userGoogleSignIn(context: context);
    if (user != null) {
      await saveUserData(user.email ?? "", user.displayName ?? "User");
      _navigateToAllSchemePage();
    }
  }

  Future<void> _handleEmailLogin() async {
    if (_formKey.currentState!.validate()) {
      User? user = await FirebaseAuthHelper.firebaseAuthHelper.userSigIn(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
        context: context,
      );
      if (user != null) {
        await saveUserData(user.email ?? "", user.displayName ?? "User");
        _navigateToAllSchemePage();
      }
    }
  }

  Future<void> _handleAnonymousSignIn() async {
    User? user = await FirebaseAuthHelper.firebaseAuthHelper.userAnonymousSignIn(context: context);
    if (user != null) {
      await saveUserData("anonymous", "Anonymous");
      _navigateToAllSchemePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
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
              SizedBox(height: size.height * 0.050),
              Consumer<LanguageController>(builder: (context, pro, child) {
                return Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(height: size.height * 0.020),
                      SizedBox(
                        height: 50,
                        width: size.width * 0.9,
                        child: TextFormField(
                          controller: _emailController,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                          style: GoogleFonts.raleway(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.5,
                              fontSize: 16),
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
                      ),
                      SizedBox(height: size.height * 0.020),
                      SizedBox(
                        height: 50,
                        width: size.width * 0.9,
                        child: TextFormField(
                          controller: _passwordController,
                          textInputAction: TextInputAction.done,
                          obscureText: true,
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.5,
                            fontSize: 16,
                          ),
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
                      ),
                      SizedBox(height: size.height * 0.030),
                      GestureDetector(
                        onTap: _handleEmailLogin,
                        child: Container(
                          width: size.width * 0.35,
                          height: size.height * 0.06,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(14)),
                          child: Text(
                            'Log in',
                            style: GoogleFonts.raleway(
                                letterSpacing: 2,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
              SizedBox(height: size.height * 0.010),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupPage()),
                    ),
                    child: const Text("Sign Up"),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: InkWell(
                      onTap: _handleGoogleSignIn,
                      borderRadius: BorderRadius.circular(14),
                      child: Container(
                        height: 50,
                        width: size.width * 0.35,
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
                            const SizedBox(width: 8),
                            Text(
                              'Google',
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
                  SizedBox(width: size.width * 0.05),
                  Flexible(
                    child: InkWell(
                      onTap: _handleAnonymousSignIn,
                      borderRadius: BorderRadius.circular(14),
                      child: Container(
                        height: 50,
                        width: size.width * 0.40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Image(
                              image: AssetImage('assets/img/anonymous.png'),
                              height: 24,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'Guest',
                              style: GoogleFonts.raleway(
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF36455A),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

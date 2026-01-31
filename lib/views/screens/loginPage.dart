import 'dart:async';
import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:govunity_connect/controller/language_controller.dart';
import 'package:govunity_connect/screens/allSchemePage.dart';
import 'package:govunity_connect/screens/signup.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  late SharedPreferences _prefs;

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
    await _prefs.setString('userData', userJson);
  }

  Future<bool> isLoggedIn() async {
    final String? userData = _prefs.getString('userData');
    return userData != null;
  }

  Future<void> _checkLoggedIn() async {
    if (await isLoggedIn()) {
      _navigateToAllSchemePage();
    }
  }

  Future<void> _navigateToAllSchemePage() async {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const AllSchemePage()),
    );
  }

  Future<void> _handleGoogleSignIn() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        final UserCredential authResult =
            await _auth.signInWithCredential(credential);

        final User? user = authResult.user;

        const bool isLoggedIn = false;
        if (isLoggedIn) {
        } else {
          _navigateToAllSchemePage();
        }
      }
    } catch (error) {
      print(error);
      // Handle errors
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
                        height: 40,
                        width: size.width * 0.9,
                        child: TextFormField(
                          controller: _emailController,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                          style: GoogleFonts.raleway(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.5,
                              fontSize: 18),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.blue.withOpacity(0.05),
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
                        height: 40,
                        width: size.width * 0.9,
                        child: TextFormField(
                          controller: _passwordController,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.visiblePassword,
                          style: GoogleFonts.raleway(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.5,
                            fontSize: 18,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.blue.withOpacity(0.05),
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
                      SizedBox(height: size.height * 0.020),
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupPage(),
                          ),
                        ),
                        child: Container(
                          width: size.width * 0.35,
                          height: size.height * 0.06,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14)),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  const Image(
                                      image: AssetImage(
                                        'assets/img/persin.png',
                                      ),
                                      height: 40),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Log in',
                                    style: GoogleFonts.raleway(
                                        letterSpacing: 2,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xFF36455A),
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
              Visibility(
                visible: _emailController.text.isNotEmpty &&
                    _passwordController.text.isNotEmpty,
                child: GestureDetector(
                  onTap: () async {
                    // Handle login with email and password
                  },
                  child: Container(
                    width: size.width * 0.5,
                    height: size.height * 0.05,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Continue',
                          style: GoogleFonts.raleway(
                            letterSpacing: 2,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF36455A),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.05),
              GestureDetector(
                onTap: _handleGoogleSignIn,
                child: Row(
                  children: [
                    SizedBox(width: size.width * 0.0100),
                    IconButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.white),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        fixedSize: WidgetStateProperty.all(
                          Size(size.width * 0.30, 50),
                        ),
                      ),
                      onPressed: null,
                      icon: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Image(
                            image: AssetImage(
                              'assets/img/google.png',
                            ),
                            height: 50,
                          ),
                          Text(
                            'Google',
                            style: GoogleFonts.raleway(
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF36455A),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(height: size.height * 0.040),
                    SizedBox(width: size.width * 0.18),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AllSchemePage(),
                        ),
                      ),
                      child: IconButton(
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(Colors.white),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          fixedSize: WidgetStateProperty.all(
                            Size(size.width * 0.40, 50),
                          ),
                        ),
                        onPressed: null,
                        icon: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Image(
                              image: AssetImage(
                                'assets/img/anonymous.png',
                              ),
                              height: 50,
                            ),
                            Text(
                              'Anonymous',
                              style: GoogleFonts.raleway(
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF36455A),
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

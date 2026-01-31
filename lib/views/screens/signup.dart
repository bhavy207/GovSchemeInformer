// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:govunity_connect/screens/login/login_page.dart';
// import 'package:http/http.dart' as http;
//
// import 'verificationPage.dart';
//
// class SignupPage extends StatelessWidget {
//   SignupPage({super.key});
//
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   TextEditingController cpasswordController = TextEditingController();
//
//   void signup(BuildContext context, String email, String password, String cpassword) async {
//     if (password != cpassword) {
//       Get.snackbar('Error', 'Passwords do not match');
//       return;
//     }
//     try {
//       var response = await http.post(
//         Uri.parse('https://signup-api-kappa.vercel.app/api/user/signup'),
//         body: {
//           'email': email,
//           'password': password,
//           'confirm_password': cpassword,
//         },
//       );
//       if (response.statusCode == 200) {
//         // Handle success
//         Get.snackbar('Success', 'Account created successfully');
//         // Navigate to VerificationPage
//         Navigator.of(context).push(
//           MaterialPageRoute(builder: (context) => VerificationPage()),
//         );
//       } else {
//         // Handle error
//         Get.snackbar('Error', 'Failed to create account');
//       }
//     } catch (e) {
//       print(e.toString());
//       Get.snackbar('Error', e.toString());
//     }
//   }
//
//   GlobalKey<FormState> formKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: SingleChildScrollView(
//             child: Center(
//               child: Form(
//                 key: formKey,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     SizedBox(height: size.height * 0.140),
//                     Image.asset(
//                       'assets/img/logo.png',
//                       height: 150,
//                     ),
//                     SizedBox(height: size.height * 0.040),
//                     Text(
//                       "Gov Unity Connect",
//                       style: GoogleFonts.raleway(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 20,
//                           color: Colors.pink),
//                     ),
//                     SizedBox(height: size.height * 0.040),
//                     TextFormField(
//                       controller: emailController,
//                       validator: (val) => (val == "") ? "Enter email" : null,
//                       decoration: InputDecoration(
//                         filled: true,
//                         fillColor: Colors.blue.withOpacity(0.05),
//                         hintText: 'Email',
//                         hintStyle: GoogleFonts.raleway(
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                             letterSpacing: 0.5),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10.0),
//                           borderSide: BorderSide.none,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     TextFormField(
//                       obscureText: true,
//                       controller: passwordController,
//                       validator: (val) => (val == "") ? "Enter password" : null,
//                       decoration: InputDecoration(
//                         filled: true,
//                         fillColor: Colors.blue.withOpacity(0.05),
//                         hintText: 'Password',
//                         hintStyle: GoogleFonts.raleway(
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                             letterSpacing: 0.5),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10.0),
//                           borderSide: BorderSide.none,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     TextFormField(
//                       obscureText: true,
//                       controller: cpasswordController,
//                       validator: (val) => (val == "")
//                           ? "Enter confirm password"
//                           : null,
//                       decoration: InputDecoration(
//                         filled: true,
//                         fillColor: Colors.blue.withOpacity(0.05),
//                         hintText: 'Confirm Password',
//                         hintStyle: GoogleFonts.raleway(
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                             letterSpacing: 0.5),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10.0),
//                           borderSide: BorderSide.none,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     GestureDetector(
//                       onTap: () {
//                         if (formKey.currentState!.validate()) {
//                           signup(
//                             context,
//                             emailController.text.trim(),
//                             passwordController.text.trim(),
//                             cpasswordController.text.trim(),
//                           );
//                         }
//                       },
//                       child: Container(
//                         width: size.width * 0.35,
//                         height: size.height * 0.06,
//                         alignment: Alignment.center,
//                         decoration: BoxDecoration(
//                             color: Colors.blue,
//                             borderRadius: BorderRadius.circular(14)),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Text(
//                               'Sign Up',
//                               style: GoogleFonts.raleway(
//                                   letterSpacing: 2,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white,
//                                   fontSize: 16),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//         bottomNavigationBar: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text("Already have an account?"),
//             CupertinoButton(
//               child: const Text("Log in"),
//               onPressed: () {
//                 Navigator.of(context).push(
//                   MaterialPageRoute(builder: (context) => LoginPage()),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:govunity_connect/screens/login/login_page.dart';
import 'package:http/http.dart' as http;

import 'verificationPage.dart';

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
      var response = await http.post(
        Uri.parse('https://signup-api-tau.vercel.app/api/user/signup'),
        body: {
          'email': email,
          'password': password,
          'confirm_password': cpassword,
        },
      );
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
      if (response.statusCode == 200) {
        // Handle success
        Get.snackbar('Success', 'Account created successfully');
        // Navigate to VerificationPage
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => VerificationPage()),
        );
      } else {
        // Handle error
        Get.snackbar('Error', 'Failed to create account');
      }
    } catch (e) {
      print('Error: $e');
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
                    const SizedBox(height: 20),
                    TextFormField(
                      obscureText: true,
                      controller: passwordController,
                      validator: (val) => (val == "") ? "Enter password" : null,
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
                    const SizedBox(height: 20),
                    TextFormField(
                      obscureText: true,
                      controller: cpasswordController,
                      validator: (val) =>
                          (val == "") ? "Enter confirm password" : null,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.blue.withOpacity(0.05),
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

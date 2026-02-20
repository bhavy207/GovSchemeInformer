import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class VerificationPage extends StatelessWidget {
  VerificationPage({super.key});

  TextEditingController codeController = TextEditingController();

  void verifyCode(String code) async {
    try {
      // Mock verification logic
      await Future.delayed(const Duration(seconds: 2)); // Simulating network call
      if (code == "123456") {
        Get.snackbar('Success', 'Code verified successfully');
        // Navigate to the next page or perform any other action
      } else {
        Get.snackbar('Error', 'Invalid verification code');
      }
    } catch (e) {
      Get.log(e.toString());
      Get.snackbar('Error', e.toString());
    }
  }

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
                      "Verify Your Account",
                      style: GoogleFonts.raleway(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.pink),
                    ),
                    SizedBox(height: size.height * 0.040),
                    Text(
                      "Enter the verification code sent to your email.",
                      style: GoogleFonts.raleway(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: size.height * 0.040),
                    TextFormField(
                      controller: codeController,
                      validator: (val) => (val == "") ? "Enter verification code" : null,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.blue.withValues(alpha: 0.05),
                        hintText: 'Verification Code',
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
                          verifyCode(codeController.text.trim());
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
                              'Verify',
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
            const Text("Didn't receive a code?"),
            CupertinoButton(
              child: const Text("Resend"),
              onPressed: () {
                // Logic to resend the verification code
              },
            ),
          ],
        ),
      ),
    );
  }
}

 import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthHelper {
  FirebaseAuthHelper._();

  static final FirebaseAuthHelper firebaseAuthHelper = FirebaseAuthHelper._();

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email'],);

  Future<User?> userSignUp({required String email, required String password, required BuildContext context}) async {
    UserCredential? userCredential;
    try {
      userCredential = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("ERROR: ${e.code.toString()}"),
            backgroundColor: Colors.redAccent,
          ),
        );
      }
      log(e.code.toString());
    }

    if (userCredential != null) {
      return userCredential.user;
    }
    return null;
  }

  Future<User?> userSigIn({required String email, required String password, required BuildContext context}) async {
    UserCredential? userCredential;
    log("Sign in attempt for: $email");
    try {
      userCredential = await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      log(e.code.toString());
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("ERROR: ${e.code.toString()}"),
            backgroundColor: Colors.redAccent,
          ),
        );
      }
    }

    if (userCredential != null) {
      return userCredential.user;
    }
    return null;
  }

  Future<User?> userGoogleSignIn({required BuildContext context}) async {
    try {
      GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();

      if (googleSignInAccount == null) {
        return null; // The user canceled the sign-in flow
      }

      GoogleSignInAuthentication? googleSignInAuthentication = await googleSignInAccount.authentication;

      OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      UserCredential userCredential = await firebaseAuth.signInWithCredential(credential);
      return userCredential.user;
      
    } catch (e) {
      log("Google Sign-In Error: ${e.toString()}");
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              "Google Sign In Failed. Please ensure your SHA-1 is added to Firebase.\nDetails: $e",
            ),
            backgroundColor: Colors.redAccent,
            duration: const Duration(seconds: 4),
          ),
        );
      }
      return null;
    }
  }

  Future<User?> userAnonymousSignIn({required BuildContext context}) async {
    try {
      UserCredential userCredential = await firebaseAuth.signInAnonymously();
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      log(e.code.toString());
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("ERROR: ${e.code.toString()}"),
            backgroundColor: Colors.redAccent,
          ),
        );
      }
      return null;
    }
  }

  Future<void> logOutUser() async {
    await firebaseAuth.signOut();
    await googleSignIn.signOut();
  }
}

class UserModel {
  String uid;
  String userName;
  String email;
  String profilepic;

  UserModel({
    required this.uid,
    required this.userName,
    required this.email,
    required this.profilepic,
  });

  factory UserModel.formMap({required Map data}) {
    return UserModel(
      uid: data['uid'],
      userName: data['userName'],
      email: data['email'],
      profilepic: data['profilepic'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'userName': userName,
      'email': email,
      'profilepic': profilepic,
    };
  }
}

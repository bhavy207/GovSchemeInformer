import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../utils/rotesUtil.dart';

import 'package:firebase_auth/firebase_auth.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  FlutterLogoStyle myStyle = FlutterLogoStyle.markOnly;
  Timer? _timer1;
  Timer? _timer2;

  @override
  void dispose() {
    _timer1?.cancel();
    _timer2?.cancel();
    super.dispose();
  }

  void changeScreen() {
    _timer1 = Timer(const Duration(seconds: 4), () {
      if (mounted) {
        setState(() {
          myStyle = FlutterLogoStyle.horizontal;
        });
      }
    });

    _timer2 = Timer(const Duration(seconds: 5), () {
      if (mounted) {
        if (FirebaseAuth.instance.currentUser != null) {
          Navigator.of(context).pushReplacementNamed(MyRoutes.allSchemePage);
        } else {
          Navigator.of(context).pushReplacementNamed(MyRoutes.loginPage);
        }
      }
    });
  }

  @override
  void initState() {
    super.initState();
    changeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(
              flex: 3,
            ),
            Image.asset(
              "assets/img/logo.png",
              scale: 0.8,
            ),
            const Spacer(
              flex: 1,
            ),
            const Spacer(),
            LoadingAnimationWidget.discreteCircle(
              color: Colors.indigo,
              size: 70,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

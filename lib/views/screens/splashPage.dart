import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../utils/rotesUtil.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  FlutterLogoStyle myStyle = FlutterLogoStyle.markOnly;

  void changeScreen() {
    Timer.periodic(const Duration(seconds: 7), (timer) {
      setState(() {
        myStyle = FlutterLogoStyle.horizontal;
      });
    });

    Timer.periodic(
      const Duration(seconds: 8),
      (tick) {
        Navigator.of(context).pushReplacementNamed(MyRoutes.loginPage);
        tick.cancel();
      },
    );
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

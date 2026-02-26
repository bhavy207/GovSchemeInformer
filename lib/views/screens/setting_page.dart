import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../controller/language_controller.dart';

class Settingpage extends StatefulWidget {
  const Settingpage({super.key});

  @override
  State<Settingpage> createState() => _SettingpageState();
}

class _SettingpageState extends State<Settingpage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageController>(builder: (context, pro, child) {
      return Scaffold(
          appBar: AppBar(
            title: Text(
              pro.isGujarati
                  ? 'સેટિંગ્સ'
                  : pro.isHindi
                      ? 'सेटिंग्स'
                      : 'Settings',
              style: GoogleFonts.raleway(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.blue,
            iconTheme: const IconThemeData(
              color: Colors.white,
            ),
          ),
          body: const Center(
            child: Column(children: []),
          ));
    });
  }
}

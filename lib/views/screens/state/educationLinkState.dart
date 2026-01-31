import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../controller/language_controller.dart';
import '../../../modal/schemeModal.dart';

class EducationLinkState extends StatefulWidget {
   const EducationLinkState({super.key});

  @override
  State<EducationLinkState> createState() => _EducationLinkStateState();
}

class _EducationLinkStateState extends State<EducationLinkState> {
  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageController>(
      builder: (context, pro, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
              iconTheme:  const IconThemeData(
                color: Colors.white,
              ),
              backgroundColor: Colors.blue,
              title: Text(
                pro.isGujarati
                    ? 'અભ્યાસ સંબંધીત લિંક  '
                    : pro.isHindi ? 'शिक्षा अभियास लिंक' : 'Education related Link',
                style:  GoogleFonts.raleway(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )),
          body: SingleChildScrollView(
            child: Padding(
              padding:  const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   const SizedBox(
                    height: 20,
                  ),
                  Text(
                    pro.isGujarati ? sEdata[0].titleG : pro.isHindi ? sEdata[0].titleH : sEdata[0].title,
                    style:  GoogleFonts.raleway(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                   const SizedBox(
                    height: 18,
                  ),
                   Text(
                    "Link:",
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                   const SizedBox(
                    height: 20,
                  ),
                   const Divider(),
                   const SizedBox(
                    height: 20,
                  ),
                  Text(
                    pro.isGujarati ? sEdata[1].titleG : pro.isHindi ? sEdata[1].titleH : sEdata[1].title,
                    style:  GoogleFonts.raleway(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                   const SizedBox(
                    height: 18,
                  ),
                   Text(
                    "Link:",
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      if (Platform.isAndroid) {
                        final appId = sEdata[1].link;
                        final url = Uri.parse(appId);
                        launchUrl(
                          url,
                          mode: LaunchMode.externalApplication,
                        );
                      }
                    },
                    child: Text(
                      sEdata[1].link,
                      style:  GoogleFonts.raleway(
                        color: Colors.blue,
                        fontSize: 18,
                      ),
                    ),
                  ),
                   const SizedBox(
                    height: 20,
                  ),
                   const Divider(),
                   const SizedBox(
                    height: 20,
                  ),
                   const SizedBox(
                    height: 18,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

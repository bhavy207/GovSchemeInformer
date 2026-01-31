import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../controller/language_controller.dart';

class HealthLink extends StatefulWidget {
  const HealthLink({super.key});

  @override
  State<HealthLink> createState() => _HealthLinkState();
}

class _HealthLinkState extends State<HealthLink> {
  // SchemeModal Data = SchemeModal();
  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageController>(builder: (context, pro, child) {
      return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
              iconTheme: const IconThemeData(
                color: Colors.white,
              ),
              backgroundColor: Colors.blue,
              title: Text(
                pro.isGujarati
                    ? 'આરોગ્ય સંબંધીત લિંક  '
                    : pro.isHindi ? 'स्वास्थ्य संबंधी लिंक' : 'Health related Link',
                style:
                GoogleFonts.raleway(color: Colors.white, fontWeight: FontWeight.bold),
              )),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      pro.isGujarati
                          ? "ગ્રામીણ આરોગ્ય મિશન"
                          : pro.isHindi ? 'राष्ट्रीय ग्रामीण स्वास्थ्य मिशन' : 'NATIONAL RURAL HEALTH MISSION',
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    const Text(
                      "Link:",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextButton(
                        onPressed: () {
                          if (Platform.isAndroid) {
                            const appId =
                                'https://nhm.gov.in/';
                            final url = Uri.parse(appId);
                            launchUrl(
                              url,
                              mode: LaunchMode.externalApplication,
                            );
                          }
                        },
                        child: const Text(
                            "https://nhm.gov.in/",
                            style:
                            TextStyle(color: Colors.blue, fontSize: 18))),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      pro.isGujarati
                          ? "જનની સુરક્ષા યોજના "
                          : pro.isHindi ? 'जननी सुरक्षा योजना (जेएसवाई)' : 'Janani Suraksha Yojana (JSY)',
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    const Text(
                      "Link:",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextButton(
                        onPressed: () {
                          if (Platform.isAndroid) {
                            const appId =
                                'https://www.myscheme.gov.in/schemes/jsy';
                            final url = Uri.parse(appId);
                            launchUrl(
                              url,
                              mode: LaunchMode.externalApplication,
                            );
                          }
                        },
                        child: const Text(
                            'https://www.myscheme.gov.in/schemes/jsy',
                            style:
                            TextStyle(color: Colors.blue, fontSize: 18))),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      pro.isGujarati ? "આયુષ્માન ભારત" : pro.isHindi ? 'आयुष्मान भारत-प्रधानमंत्री जन आरोग्य योजना ' : 'Ayushman Bharat - Pradhan Mantri Jan Arogya Yojana',
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    const Text(
                      "Link:",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextButton(
                        onPressed: () {
                          if (Platform.isAndroid) {
                            const appId =
                                'https://www.myscheme.gov.in/schemes/ab-pmjay';
                            final url = Uri.parse(appId);
                            launchUrl(
                              url,
                              mode: LaunchMode.externalApplication,
                            );
                          }
                        },
                        child: const Text("https://www.myscheme.gov.in/schemes/ab-pmjay",
                            style:
                            TextStyle(color: Colors.blue, fontSize: 18))),
                    const SizedBox(
                      height: 20,
                    ),
                  ]),
            ),
          ));
    });
  }
}

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../controller/language_controller.dart';

class AgriculureLink extends StatefulWidget {
  const AgriculureLink({super.key});

  @override
  State<AgriculureLink> createState() => _AgriculureLinkState();
}

class _AgriculureLinkState extends State<AgriculureLink> {
  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageController>(
      builder: (context, pro, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            iconTheme: const IconThemeData(
              color: Colors.white,
            ),
            backgroundColor: Colors.blue,
            title: Text(
              pro.isGujarati
                  ? 'ખેતી વાડી સંબંધીત લિંક'
                  : pro.isHindi
                      ? 'खेति व्यावसायिक लिंक'
                      : 'Agriculture related Link',
              style: GoogleFonts.raleway(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
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
                        ? "કિશાન ક્રેડિટ કાર્ડ સ્કીમ"
                        : pro.isHindi
                            ? 'किसान क्रेडिट कार्ड'
                            : 'Kisan Credit Card (KCC) Scheme',
                    style: GoogleFonts.raleway(
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
                        const appId = 'https://www.myscheme.gov.in/schemes/kcc';
                        final url = Uri.parse(appId);
                        launchUrl(
                          url,
                          mode: LaunchMode.externalApplication,
                        );
                      }
                    },
                    child: Text(
                      "https://www.myscheme.gov.in/schemes/kcc",
                      style: GoogleFonts.raleway(
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
                  Text(
                    pro.isGujarati
                        ? "પ્રધાનમંત્રી ફસલ વીમા યોજના"
                        : pro.isHindi
                            ? 'प्रधानमंत्री फासल योजना'
                            : 'The Pradhan Mantri Fasal Bima Yojana',
                    style: GoogleFonts.raleway(
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
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  TextButton(
                      onPressed: () {
                        if (Platform.isAndroid) {
                          const appId =
                              'https://www.bajajallianz.com/blog/announcements/quick-overview-on-pmfby-crop-insurance-scheme.html#:~:text=Identity%20proof%20of%20the%20farmer,need%20to%20be%20kept%20together';
                          final url = Uri.parse(appId);
                          launchUrl(
                            url,
                            mode: LaunchMode.externalApplication,
                          );
                        }
                      },
                      child: Text(
                          "https://www.bajajallianz.com/blog/announcements/quick-overview-on-pmfby-crop-insurance-scheme.html#:~:text=Identity%20proof%20of%20the%20farmer,need%20to%20be%20kept%20together",
                          style: GoogleFonts.raleway(
                              color: Colors.blue, fontSize: 18))),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    pro.isGujarati
                        ? "સોઇલ હેલ્થ કાર્ડ યોજના"
                        : pro.isHindi
                            ? 'सोईल हेल्थ कार्ड योजना'
                            : 'Soil Health Card Scheme',
                    style: GoogleFonts.raleway(
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
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () {
                      if (Platform.isAndroid) {
                        const appId =
                            'https://www.acko.com/health-insurance/soil-health-card-scheme-shc/';
                        final url = Uri.parse(appId);
                        launchUrl(
                          url,
                          mode: LaunchMode.externalApplication,
                        );
                      }
                    },
                    child: Text(
                      "https://www.acko.com/health-insurance/soil-health-card-scheme-shc/",
                      style: GoogleFonts.raleway(
                        color: Colors.blue,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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

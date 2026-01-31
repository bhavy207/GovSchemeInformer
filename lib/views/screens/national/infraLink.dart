import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../controller/language_controller.dart';

class InfraLink extends StatefulWidget {
  const InfraLink({super.key});

  @override
  State<InfraLink> createState() => _InfraLinkState();
}

class _InfraLinkState extends State<InfraLink> {
  // SchemeModal Data = SchemeModal();
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
                    ? 'ઈન્ફ્રાસ્ટ્રક્ચર સંબંધીત લિંક  '
                    :pro.isHindi ? 'इंफ्रास्ट्रक्चर संबंधी लिंक' : 'Infrastructure related Link',
                style: GoogleFonts.raleway(
                    color: Colors.white, fontWeight: FontWeight.bold),
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
                        ? "પ્રધાનમંત્રી આવાસ યોજના"
                        : pro.isHindi ? 'प्रधानमंत्री आवास योजना' : 'Pradhan Mantri Awas Yojana',
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () {
                      if (Platform.isAndroid) {
                        const appId =
                            'https://www.myscheme.gov.in/schemes/pmay-u';
                        final url = Uri.parse(appId);
                        launchUrl(
                          url,
                          mode: LaunchMode.externalApplication,
                        );
                      }
                    },
                    child: const Text(
                      "https://www.myscheme.gov.in/schemes/pmay-u",
                      style: TextStyle(color: Colors.blue, fontSize: 18),
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
                        ? "સ્વચ્છ ભારત મિશન "
                        : pro.isHindi ? 'स्वच्छ भारत मिशन' : 'Swachh Bharat Mission (SBM)',
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  TextButton(
                      onPressed: () {
                        if (Platform.isAndroid) {
                          const appId =
                              'https://www.myscheme.gov.in/schemes/sbm-g-i';
                          final url = Uri.parse(appId);
                          launchUrl(
                            url,
                            mode: LaunchMode.externalApplication,
                          );
                        }
                      },
                      child: const Text(
                          'https://www.myscheme.gov.in/schemes/sbm-g-i',
                          style: TextStyle(color: Colors.blue, fontSize: 18))),
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

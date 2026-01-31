import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../controller/language_controller.dart';

class RuralLink extends StatefulWidget {
  const RuralLink({super.key});

  @override
  State<RuralLink> createState() => _RuralLinkState();
}

class _RuralLinkState extends State<RuralLink> {
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
                    ? 'ગ્રામીણ યોજના સંબંધીત લિંક  '
                    : pro.isHindi ? 'ग्रामीण सम्बंधित लिंक' : 'Rural related Link',
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
                          ? "મહાત્મા ગાંધી રાષ્ટ્રીય ગ્રામીણ રોજગાર ગેરંટી અધિનિયમ"
                          : pro.isHindi ? 'महात्मा गांधी राष्ट्रीय ग्रामीण रोजगार ग्रेमिंट अधिनियम' : 'Mahatma Gandhi National Rural Employment Guarantee Act',
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
                                'https://nrega.nic.in/MGNREGA_new/Nrega_home.aspx';
                            final url = Uri.parse(appId);
                            launchUrl(
                              url,
                              mode: LaunchMode.externalApplication,
                            );
                          }
                        },
                        child: const Text(
                            "https://nrega.nic.in/MGNREGA_new/Nrega_home.aspx",
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
                          ? "પ્રધાનમંત્રી ગ્રામ સડક યોજના "
                          : pro.isHindi ? 'प्रधानमंत्री ग्राम संडक योजना' : 'Pradhan Mantri Gram Sadak Yojana',
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
                            const appId = 'https://pmgsy.nic.in/';
                            final url = Uri.parse(appId);
                            launchUrl(
                              url,
                              mode: LaunchMode.externalApplication,
                            );
                          }
                        },
                        child: const Text('https://pmgsy.nic.in/',
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
                          ? "દીન દયાલ ઉપાધ્યાય ગ્રામીણ કૌશલ્ય યોજના"
                          : pro.isHindi ? 'दीन दायल उपाध्याय ग्रामीण कौशल्य योजना' : 'Deen Dayal Upadhyaya Grameen Kaushalya Yojana',
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
                              'https://www.xn--i1bj3fqcyde.xn--11b7cb3a6a.xn--h2brj9c/spotlight/%E0%A4%A6%E0%A5%80%E0%A4%A8-%E0%A4%A6%E0%A4%AF%E0%A4%BE%E0%A4%B2-%E0%A4%89%E0%A4%AA%E0%A4%BE%E0%A4%A7%E0%A5%8D%E0%A4%AF%E0%A4%BE%E0%A4%AF-%E0%A4%97%E0%A5%8D%E0%A4%B0%E0%A4%BE%E0%A4%AE%E0%A5%80%E0%A4%A3-%E0%A4%95%E0%A5%8C%E0%A4%B6%E0%A4%B2%E0%A5%8D%E0%A4%AF-%E0%A4%AF%E0%A5%8B%E0%A4%9C%E0%A4%A8%E0%A4%BE';
                          final url = Uri.parse(appId);
                          launchUrl(
                            url,
                            mode: LaunchMode.externalApplication,
                          );
                        }
                      },
                      child: const Text(
                        "https://www.xn--i1bj3fqcyde.xn--11b7cb3a6a.xn--h2brj9c/spotlight/%E0%A4%A6%E0%A5%80%E0%A4%A8-%E0%A4%A6%E0%A4%AF%E0%A4%BE%E0%A4%B2-%E0%A4%89%E0%A4%AA%E0%A4%BE%E0%A4%A7%E0%A5%8D%E0%A4%AF%E0%A4%BE%E0%A4%AF-%E0%A4%97%E0%A5%8D%E0%A4%B0%E0%A4%BE%E0%A4%AE%E0%A5%80%E0%A4%A3-%E0%A4%95%E0%A5%8C%E0%A4%B6%E0%A4%B2%E0%A5%8D%E0%A4%AF-%E0%A4%AF%E0%A5%8B%E0%A4%9C%E0%A4%A8%E0%A4%BE",
                        style: TextStyle(color: Colors.blue, fontSize: 18),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ]),
            ),
          ));
    });
  }
}

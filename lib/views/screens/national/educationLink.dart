import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../controller/language_controller.dart';

class EducationLink extends StatefulWidget {
  const EducationLink({super.key});

  @override
  State<EducationLink> createState() => _EducationLinkState();
}

class _EducationLinkState extends State<EducationLink> {
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
                    ? 'અભ્યાસ સંબંધીત લિંક  '
                    :pro.isHindi ? 'शिक्षा अभियास लिंक' : 'Education related Link',
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
                          ? "સર્વ શિક્ષા અભિયાન"
                          : pro.isHindi ? 'सर्व शिक्षा अभियास' : 'Sarva Shiksha Abhiyan',
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
                                'https://en.wikipedia.org/wiki/Sarva_Shiksha_Abhiyan';
                            final url = Uri.parse(appId);
                            launchUrl(
                              url,
                              mode: LaunchMode.externalApplication,
                            );
                          }
                        },
                        child: const Text(
                            "https://en.wikipedia.org/wiki/Sarva_Shiksha_Abhiyan",
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
                          ? "પ્રધાનમત્રીં ગ્રામીણ ડિજિટલ સાક્ષરતા અભિયાન "
                          : pro.isHindi ? 'प्रधानमत्रीं ग्रामीण डिजिटल सक्षरताः अभियास' : 'Pradhan Mantri Gramin Digital Saksharta Abhiyaan',
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
                                'https://www.myscheme.gov.in/schemes/pmgdish';
                            final url = Uri.parse(appId);
                            launchUrl(
                              url,
                              mode: LaunchMode.externalApplication,
                            );
                          }
                        },
                        child: const Text(
                            'https://www.myscheme.gov.in/schemes/pmgdish',
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
                      pro.isGujarati ? "મધ્યાહન ભોજન" : pro.isHindi ? 'मध्याहन भोजन' : 'Mid-Day Meal Scheme',
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
                                'https://www.myscheme.gov.in/schemes/mdmss';
                            final url = Uri.parse(appId);
                            launchUrl(
                              url,
                              mode: LaunchMode.externalApplication,
                            );
                          }
                        },
                        child: const Text("https://www.myscheme.gov.in/schemes/mdmss",
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

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../controller/language_controller.dart';
import '../../../modal/schemeModal.dart';

class InfraLinkState extends StatefulWidget {
   const InfraLinkState({super.key});

  @override
  State<InfraLinkState> createState() => _InfraLinkStateState();
}

class _InfraLinkStateState extends State<InfraLinkState> {
  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageController>(builder: (context, pro, child) {
      return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
              iconTheme:  const IconThemeData(
                color: Colors.white,
              ),
              backgroundColor: Colors.blue,
              title: Text(
                pro.isGujarati
                    ? 'ઈન્ફ્રાસ્ટ્રક્ચર સંબંધીત લિંક  '
                    : pro.isHindi ? 'इंफ्रास्ट्रक्चर संबंधी लिंक' : 'Infrastructure related Link',
                style:
                 GoogleFonts.raleway(color: Colors.white, fontWeight: FontWeight.bold),
              )),
          body: SingleChildScrollView(
            child: Padding(
              padding:  const EdgeInsets.all(15.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     const SizedBox(
                      height: 20,
                    ),
                    Text(
                      pro.isGujarati
                          ? sIdata[0].titleG
                          : pro.isHindi ? sIdata[0].titleH : sIdata[0].title,
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
                      style: GoogleFonts.raleway(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextButton(
                        onPressed: () {
                          if (Platform.isAndroid) {
                            final appId =
                                sIdata[0].link;
                            final url = Uri.parse(appId);
                            launchUrl(
                              url,
                              mode: LaunchMode.externalApplication,
                            );
                          }
                        },
                        child:  Text(sIdata[0].link,
                            style:  GoogleFonts.raleway(color: Colors.blue, fontSize: 18))),
                     const SizedBox(
                      height: 20,
                    ),
                     const Divider(),   const SizedBox(
                      height: 20,
                    ),
                    Text(
                      pro.isGujarati
                          ? sIdata[1].titleG
                          : pro.isHindi ? sIdata[1].titleH : sIdata[1].title,
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
                      style: GoogleFonts.raleway(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextButton(
                        onPressed: () {
                          if (Platform.isAndroid) {
                            final appId =
                                sIdata[0].link;
                            final url = Uri.parse(appId);
                            launchUrl(
                              url,
                              mode: LaunchMode.externalApplication,
                            );
                          }
                        },
                        child: Text(sIdata[0].link,
                            style:  GoogleFonts.raleway(color: Colors.blue, fontSize: 18))),   const SizedBox(
                      height: 20,
                    ),
                     const Divider(),
                  ]),
            ),
          ));
    });
  }
}

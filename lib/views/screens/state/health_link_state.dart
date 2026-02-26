import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../controller/language_controller.dart';
import '../../../modal/scheme_modal.dart';

class HealthLinkState extends StatefulWidget {
   const HealthLinkState({super.key});

  @override
  State<HealthLinkState> createState() => _HealthLinkStateState();
}

class _HealthLinkStateState extends State<HealthLinkState> {
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
                    ? 'આરોગ્ય સંબંધીત લિંક  '
                    : pro.isHindi ? 'स्वास्थ्य संबंधी लिंक' : 'Health related Link',
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
                          ? sHdata[0].titleG
                          : pro.isHindi ? sHdata[0].titleH : sHdata[0].title,
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
                                sHdata[0].link;
                            final url = Uri.parse(appId);
                            launchUrl(
                              url,
                              mode: LaunchMode.externalApplication,
                            );
                          }
                        },
                        child:  Text(sHdata[0].link,
                            style:  GoogleFonts.raleway(color: Colors.blue, fontSize: 18))),
                     const SizedBox(
                      height: 20,
                    ),
                     const Divider(),   const SizedBox(
                      height: 20,
                    ),
                    Text(
                      pro.isGujarati
                          ? sHdata[1].titleG
                          : pro.isHindi ? sHdata[1].titleH : sHdata[1].title,
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
                                sHdata[1].link;
                            final url = Uri.parse(appId);
                            launchUrl(
                              url,
                              mode: LaunchMode.externalApplication,
                            );
                          }
                        },
                        child: Text(sHdata[1].link,
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

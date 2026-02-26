import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../controller/language_controller.dart';
import '../../../modal/scheme_modal.dart';

class AgricultureLinkState extends StatefulWidget {
  const AgricultureLinkState({super.key});

  @override
  State<AgricultureLinkState> createState() => _AgricultureLinkStateState();
}

class _AgricultureLinkStateState extends State<AgricultureLinkState> {
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
                    ? 'ખેતી વાડી સંબંધીત લિંક  '
                    : pro.isHindi
                        ? 'खेति व्यावसायिक लिंक'
                        : 'Agriculture related Link',
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
                          ? sdata[0].titleG
                          : pro.isHindi
                              ? sdata[0].titleH
                              : sdata[0].title,
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
                            final appId = sdata[0].link;
                            final url = Uri.parse(appId);
                            launchUrl(
                              url,
                              mode: LaunchMode.externalApplication,
                            );
                          }
                        },
                        child: Text(sdata[0].link,
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
                          ? sdata[1].titleG
                          : pro.isHindi
                              ? sdata[1].titleH
                              : sdata[1].title,
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
                          final appId = sdata[0].link;
                          final url = Uri.parse(appId);
                          launchUrl(
                            url,
                            mode: LaunchMode.externalApplication,
                          );
                        }
                      },
                      child: Text(
                        sdata[0].link,
                        style: GoogleFonts.raleway(
                            color: Colors.blue, fontSize: 18),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(),
                  ] ),
            ),
          ));
    });
  }
}

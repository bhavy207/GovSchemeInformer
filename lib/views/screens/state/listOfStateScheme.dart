import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:govunity_connect/screens/state/InfraStatePage.dart';
import 'package:govunity_connect/screens/state/agricultureState.dart';
import 'package:govunity_connect/screens/state/healthPagestate.dart';
import 'package:govunity_connect/screens/state/ruralPage.dart';
import 'package:govunity_connect/screens/state/wstate.dart';
import 'package:provider/provider.dart';
import 'package:govunity_connect/controller/language_controller.dart';
import 'educationPagestate.dart';

class ListOfSchemeState extends StatefulWidget {
  const ListOfSchemeState({super.key});

  @override
  State<ListOfSchemeState> createState() => _ListOfSchemeStateState();
}

class _ListOfSchemeStateState extends State<ListOfSchemeState> {
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
                  ? 'ગુજરાત સહકાર સહાય '
                  : pro.isHindi
                      ? 'गुजरात सरकार योजना'
                      : 'Gujarat Government Scheme',
              style: GoogleFonts.raleway(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AgricultureStatePage(),
                      ),
                    ),
                    child: ListTile(
                      leading: Text(
                        pro.isGujarati
                            ? '૧'
                            : pro.isHindi
                                ? '१'
                                : '1',
                        style: GoogleFonts.raleway(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      title: Card(
                        color: const Color(0xF6F5FAFF),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            pro.isGujarati
                                ? 'ખેતી વાડી (કૃષિ)'
                                : pro.isHindi
                                    ? 'कृषि'
                                    : 'Agriculture',
                            style: GoogleFonts.raleway(
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                      // height: 5,
                      ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EducationState(),
                      ),
                    ),
                    child: ListTile(
                      leading: Text(
                        pro.isGujarati
                            ? '૨'
                            : pro.isHindi
                                ? '२'
                                : '2',
                        style: GoogleFonts.raleway(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      title: Card(
                        color: const Color(0xF6F5FAFF),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            pro.isGujarati
                                ? 'અભ્યાસ '
                                : pro.isHindi
                                    ? 'शिक्षा'
                                    : 'Education',
                            style: GoogleFonts.raleway(
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RuralState(),
                      ),
                    ),
                    child: ListTile(
                      leading: Text(
                        pro.isGujarati
                            ? '૩'
                            : pro.isHindi
                                ? '३'
                                : '3',
                        style: GoogleFonts.raleway(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      title: Card(
                        color: const Color(0xF6F5FAFF),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            pro.isGujarati
                                ? 'ગ્રામીણ યોજના '
                                : pro.isHindi
                                    ? 'ग्रामीण योजना'
                                    : 'Rural',
                            style: GoogleFonts.raleway(
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HealthStatePage(),
                      ),
                    ),
                    child: ListTile(
                      leading: Text(
                        pro.isGujarati
                            ? '૪'
                            : pro.isHindi
                                ? '४'
                                : '4',
                        style: GoogleFonts.raleway(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      title: Card(
                        color: const Color(0xF6F5FAFF),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            pro.isGujarati
                                ? 'આરોગ્ય સહાય'
                                : pro.isHindi
                                    ? 'आरोग्य योजना'
                                    : 'Health ',
                            style: GoogleFonts.raleway(
                              letterSpacing: 1.5,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const InfraState(),
                      ),
                    ),
                    child: ListTile(
                      leading: Text(
                        pro.isGujarati
                            ? '૫'
                            : pro.isHindi
                                ? '५'
                                : '5',
                        style: GoogleFonts.raleway(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      title: Card(
                        color: const Color(0xF6F5FAFF),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            pro.isGujarati
                                ? 'ઈન્ફ્રાસ્ટ્રક્ચર'
                                : pro.isHindi
                                    ? 'इन्फ्रार्स्ट्रैक'
                                    : 'Infrastructure  ',
                            style: GoogleFonts.raleway(
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Wstate(),
                      ),
                    ),
                    child: ListTile(
                      leading: Text(
                        pro.isGujarati
                            ? '૬'
                            : pro.isHindi
                                ? '६'
                                : '6',
                        style: GoogleFonts.raleway(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      title: Card(
                        color: const Color(0xF6F5FAFF),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            pro.isGujarati
                                ? 'કલ્યાણ'
                                : pro.isHindi
                                    ? 'कल्याण'
                                    : 'Walfair',
                            style: GoogleFonts.raleway(
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ),
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

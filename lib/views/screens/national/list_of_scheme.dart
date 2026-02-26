import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:govunity_connect/screens/national/infra_page.dart';
import 'package:govunity_connect/screens/national/agriculture_page.dart';
import 'package:govunity_connect/screens/national/education_page.dart';
import 'package:govunity_connect/screens/national/health_page.dart';
import 'package:govunity_connect/screens/national/rural_page.dart';
import 'package:provider/provider.dart';
import '../../../controller/language_controller.dart';

class ListOfSchemeNational extends StatefulWidget {
  const ListOfSchemeNational({super.key});

  @override
  State<ListOfSchemeNational> createState() => _ListOfSchemeNationalState();
}

class _ListOfSchemeNationalState extends State<ListOfSchemeNational> {
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
                  ? 'રાષ્ટ્રીય સરકારી સહાય '
                  : pro.isHindi
                      ? 'राष्ट्रीय सरकारी सहायता'
                      : 'National Government Scheme',
              style: GoogleFonts.raleway(
                  color: Colors.white, fontWeight: FontWeight.bold),
            )),
        body: Stack(
          children: [
            Center(
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
                          builder: (context) => const AgriculturePage(),
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
                          builder: (context) => const EducationPage(),
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
                          builder: (context) => const RuralPage(),
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
                          builder: (context) => const HealthPage(),
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
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        title: Card(
                          color: const Color(0xF6F5FAFF),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              pro.isGujarati
                                  ? 'આરોગ્ય સહાય'
                                  : pro.isHindi
                                      ? 'आरोग्य सहायता'
                                      : 'Health ',
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
                          builder: (context) => const InfraPage(),
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
                                      ? 'इंफ्रास्ट्रक्चर'
                                      : 'Infrastructure',
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
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:govunity_connect/screens/state/listOfStateScheme.dart';
import 'package:govunity_connect/screens/settingPage.dart';
import 'package:provider/provider.dart';
import 'package:govunity_connect/controller/language_controller.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:govunity_connect/services/auth_service.dart';
import 'favouritePage.dart';
import 'loginPage.dart';
import 'national/listOfscheme.dart';

class AllSchemePage extends StatefulWidget {
  const AllSchemePage({super.key});

  @override
  State<AllSchemePage> createState() => _AllSchemePageState();
}

class _AllSchemePageState extends State<AllSchemePage>
    with TickerProviderStateMixin {
  final GlobalKey _one = GlobalKey();
  final GlobalKey _two = GlobalKey();
  final GlobalKey _three = GlobalKey();
  final GlobalKey _four = GlobalKey();
  final GlobalKey _five = GlobalKey();

  T? ambiguate<T>(T? object) => object;
  final scrollController = ScrollController();

  @override
  initState() {
    super.initState();
    ambiguate(WidgetsBinding.instance)?.addPostFrameCallback(
      (_) => ShowCaseWidget.of(context)
          .startShowCase([_one, _two, _three, _four, _five]),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  Future<bool> _onWillPop() async {
    final result = await showDialog<bool>(
      context: context,
      builder: (c) => AlertDialog(
        title: Text(
          'Do you really want to exit?',
          style:
              GoogleFonts.raleway(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(
                const Color(0xFF6C5586),
              ),
            ),
            child: Text(
              'Exit',
              style: GoogleFonts.raleway(color: Colors.white),
            ),
            onPressed: () => SystemNavigator.pop(),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(
                const Color(0xFF81689D),
              ),
            ),
            child: Text(
              'Resume App',
              style: GoogleFonts.raleway(color: Colors.white),
            ),
            onPressed: () => Navigator.pop(c, false),
          ),
        ],
      ),
    );
    return result ?? false;
  }
  User? user = FirebaseAuthHelper.firebaseAuthHelper.firebaseAuth.currentUser;
  final List<bool> _selectedLanguages = [
    true,
    false,
    false
  ]; // English, Gujarati, Hindi

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    bool vertical = false;
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Consumer<LanguageController>(
        builder: (context, pro, child) {
          return Scaffold(
            key: scaffoldKey,
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text(
                pro.isGujarati
                    ? 'ગવઁ યુનિટી કન્નેક્ટ '
                    : pro.isHindi
                        ? 'सरकारी एकता कनेक्ट'
                        : 'Gov Unity Connect',
                style: GoogleFonts.raleway(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.blue,
              iconTheme: const IconThemeData(
                color: Colors.white,
              ),
              leading: IconButton(
                icon: const Icon(
                  CupertinoIcons.line_horizontal_3_decrease,
                  fill: 0.8,
                  size: 25,
                ),
                onPressed: () {
                  scaffoldKey.currentState?.openDrawer();
                },
              ),
            ),
            // drawer: Drawer(
            //   shadowColor: Colors.blue,
            //   backgroundColor: Colors.white10,
            //   child: ListView(
            //     padding: EdgeInsets.zero,
            //     children: [
            //       Column(children: [
            //         UserAccountsDrawerHeader(
            //           decoration: BoxDecoration(
            //               color: Colors.blue.shade200.withOpacity(0.1),
            //               boxShadow: const [
            //                 BoxShadow(
            //                     color: Colors.white54,
            //                     spreadRadius: 0.5,
            //                     blurRadius: 3,
            //                     offset: Offset(0, 2))
            //               ]),
            //           currentAccountPicture: CircleAvatar(
            //             backgroundImage: NetworkImage(user?.photoURL ??
            //                 'https://cdn-icons-png.flaticon.com/512/4123/4123763.png'),
            //           ),
            //           accountName: Text(
            //             user?.displayName ?? 'Anonymous',
            //             style: GoogleFonts.raleway(
            //                 color: Colors.black,
            //                 fontSize: 16,
            //                 fontWeight: FontWeight.bold),
            //           ),
            //           accountEmail: Text(
            //             user?.email ?? 'Logged in As Anonymous',
            //             style: GoogleFonts.raleway(
            //                 color: Colors.black,
            //                 fontWeight: FontWeight.bold,
            //                 fontSize: 14),
            //           ),
            //         ),
            //       ]),
            //       // SizedBox(height: 80),
            //       ListTile(
            //         leading:
            //             const Icon(color: Colors.white, CupertinoIcons.home),
            //         title: Text(
            //           pro.isGujarati
            //               ? 'ઘર'
            //               : pro.isHindi
            //                   ? 'घर'
            //                   : 'Home',
            //           style: GoogleFonts.raleway(
            //               color: Colors.white, fontSize: 19),
            //         ),
            //         onTap: () {
            //           Navigator.of(context).pop();
            //         },
            //       ),
            //       ListTile(
            //         leading:
            //             const Icon(color: Colors.white, CupertinoIcons.heart),
            //         title: Text(
            //           pro.isGujarati
            //               ? 'મનપસંદ '
            //               : pro.isHindi
            //                   ? 'पसंदीदा'
            //                   : 'Favorite',
            //           style: GoogleFonts.raleway(
            //               color: Colors.white, fontSize: 19),
            //         ),
            //         onTap: () {
            //           Navigator.of(context).push(
            //             MaterialPageRoute(
            //               builder: (context) => FavoritePage(),
            //             ),
            //           );
            //         },
            //       ),
            //       const Divider(),
            //       ListTile(
            //         leading:
            //             const Icon(color: Colors.white, CupertinoIcons.globe),
            //         title: Text(
            //           pro.isGujarati
            //               ? 'ગુજરાતી'
            //               : pro.isHindi
            //                   ? 'हिन्दी'
            //                   : 'English',
            //           style: GoogleFonts.raleway(
            //               color: Colors.white, fontSize: 19),
            //         ),
            //         onTap: () {
            //           pro.toggleLanguage();
            //         },
            //       ),
            //       ListTile(
            //         onTap: () {
            //           FirebaseAuthHelper.firebaseAuthHelper.logOutUser();
            //           Navigator.of(context).push(
            //             MaterialPageRoute(
            //               builder: (context) => LoginPage(),
            //             ),
            //           );
            //         },
            //         leading: const Icon(
            //           color: Colors.white,
            //           CupertinoIcons.settings,
            //         ),
            //         title: Text(
            //           pro.isGujarati
            //               ? 'Settings'
            //               : pro.isHindi
            //                   ? 'सेटिंग्स'
            //                   : 'Settings',
            //           style: GoogleFonts.raleway(
            //             color: Colors.white,
            //             fontSize: 19,
            //           ),
            //         ),
            //       ),
            //       ListTile(
            //         onTap: () {
            //           FirebaseAuthHelper.firebaseAuthHelper.logOutUser();
            //           Navigator.of(context).push(
            //             MaterialPageRoute(
            //               builder: (context) => LoginPage(),
            //             ),
            //           );
            //         },
            //         leading:
            //             const Icon(color: Colors.white, Icons.logout_rounded),
            //         title: Text(
            //           pro.isGujarati
            //               ? 'લૉગ આઉટ'
            //               : pro.isHindi
            //                   ? 'लॉग आउट'
            //                   : 'Logout',
            //           style: GoogleFonts.raleway(
            //               color: Colors.white, fontSize: 19),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            drawer: Drawer(
              shadowColor: Colors.black,
              backgroundColor: Colors.white,
              // backgroundColor: Colors.white10,
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Column(
                    children: [
                      UserAccountsDrawerHeader(
                        decoration: BoxDecoration(
                            color: Colors.blue.shade200.withOpacity(0.1),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.white54,
                                  spreadRadius: 0.5,
                                  blurRadius: 3,
                                  offset: Offset(0, 2))
                            ]),
                        currentAccountPicture: CircleAvatar(
                          backgroundImage: NetworkImage(user?.photoURL ??
                              'https://cdn-icons-png.flaticon.com/512/4123/4123763.png'),
                        ),
                        accountName: Text(
                          user?.displayName ?? 'Anonymous',
                          style: GoogleFonts.raleway(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        accountEmail: Text(
                          user?.email ?? 'Logged in As Anonymous',
                          style: GoogleFonts.raleway(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  ListTile(
                    leading:
                        const Icon(color: Colors.black, CupertinoIcons.home),
                    title: Text(
                      pro.isGujarati
                          ? 'ઘર'
                          : pro.isHindi
                              ? 'घर'
                              : 'Home',
                      style: GoogleFonts.raleway(
                          color: Colors.black, fontSize: 19),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    leading:
                        const Icon(color: Colors.black, CupertinoIcons.heart),
                    title: Text(
                      pro.isGujarati
                          ? 'મનપસંદ '
                          : pro.isHindi
                              ? 'पसंदीदा'
                              : 'Favorite',
                      style: GoogleFonts.raleway(
                          color: Colors.black, fontSize: 19),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const FavoritePage(),
                        ),
                      );
                    },
                  ),
                  const Divider(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Language',
                        style: GoogleFonts.raleway(fontSize: 18),
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          ToggleButtons(
                            direction: Axis.horizontal,
                            onPressed: (int index) {
                              setState(() {
                                for (int i = 0;
                                    i < _selectedLanguages.length;
                                    i++) {
                                  _selectedLanguages[i] = i == index;
                                }

                                // Update language preference based on the selected button.
                                switch (index) {
                                  case 0:
                                    // English
                                    pro.toggleLanguage(
                                        english: true,
                                        hindi: false,
                                        gujarati: false);
                                    break;
                                  case 1:
                                    // Gujarati
                                    pro.toggleLanguage(
                                        english: false,
                                        hindi: false,
                                        gujarati: true);
                                    break;
                                  case 2:
                                    // Hindi
                                    pro.toggleLanguage(
                                        english: false,
                                        hindi: true,
                                        gujarati: false);
                                    break;
                                }
                              });
                            },
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            selectedBorderColor: Colors.blue.shade100,
                            selectedColor: Colors.white,
                            disabledColor: Colors.grey,
                            fillColor: Colors.blue.shade100,
                            color: Colors.blue.shade200,
                            constraints: const BoxConstraints(
                              minHeight: 40.0,
                              minWidth: 80.0,
                            ),
                            isSelected: _selectedLanguages,
                            children: const [
                              Text(
                                'English',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 19),
                              ),
                              Text(
                                'ગુજરાતી',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 19),
                              ),
                              Text(
                                'हिन्दी',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 19),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
//***************************************************************************
                  //          const Divider(),
                  //          ListTile(
                  //            leading: const Icon(
                  //              CupertinoIcons.globe,
                  //              color: Colors.white,
                  //            ),
                  //            title: Text(
                  //                pro.isGujarati
                  //                    ? 'ભાષા'
                  //                    : pro.isHindi
                  //                        ? 'भाषा'
                  //                        : 'Languages',
                  //                style: GoogleFonts.raleway(
                  //                    color: Colors.white, fontSize: 19)),
                  //          ),
                  //          CheckboxListTile(
                  //            activeColor: Colors.white,
                  //            checkColor: Colors.blue,
                  //            tileColor: Colors.white10,
                  //            side: const BorderSide(color: Colors.white),
                  //            title: Text('English',
                  //                style: GoogleFonts.raleway(
                  //                    color: Colors.white, fontSize: 19)),
                  //            value: !pro.isHindi && !pro.isGujarati,
                  //            // Assuming default is English
                  //            onChanged: (newValue) {
                  //              // Update language preference
                  //              pro.toggleLanguage(
                  //                  english: true, hindi: false, gujarati: false);
                  //            },
                  //          ),
                  //          CheckboxListTile(
                  //            activeColor: Colors.white,
                  //            checkColor: Colors.blue,
                  //            tileColor: Colors.white10,
                  //            side: const BorderSide(color: Colors.white),
                  //            title: Text('ગુજરાતી',
                  //                style: GoogleFonts.raleway(
                  //                    color: Colors.white, fontSize: 19)),
                  //            value: pro.isGujarati,
                  //            onChanged: (newValue) {
                  //              // Update language preference
                  //              pro.toggleLanguage(
                  //                  gujarati: true, hindi: false, english: false);
                  //            },
                  //          ),
                  //          CheckboxListTile(
                  //              title: Text('हिन्दी',
                  //                  style: GoogleFonts.raleway(
                  //                      color: Colors.white, fontSize: 19)),
                  //              value: pro.isHindi,
                  //              activeColor: Colors.white,
                  //              checkColor: Colors.blue,
                  //              tileColor: Colors.white10,
                  //              side: const BorderSide(color: Colors.white),
                  //              onChanged: (newValue) {
                  //                // Update language preference
                  //                pro.toggleLanguage(
                  //                    hindi: true, english: false, gujarati: false);
                  //              }),
                  //          const Divider(),
                  //          ListTile(
                  //            leading: const Icon(
                  //              CupertinoIcons.globe,
                  //              color: Colors.white,
                  //            ),
                  //            title: Text(
                  //              pro.isGujarati
                  //                  ? 'ભાષા'
                  //                  : pro.isHindi
                  //                      ? 'भाषा'
                  //                      : 'Languages',
                  //              style: GoogleFonts.raleway(
                  //                  color: Colors.white, fontSize: 19),
                  //            ),
                  //          ),
                  //          Row(
                  //
                  //            children: [
                  //            Text('English',style: GoogleFonts.raleway(color: Colors.white,fontSize: 19),),
                  //              CupertinoSwitch(
                  //                value: !pro.isHindi && !pro.isGujarati,
                  //                activeColor: Colors.white,
                  //                onChanged: (newValue) {
                  //                  // Update language preference
                  //                  pro.toggleLanguage(
                  //                      english: true, hindi: false, gujarati: false);
                  //                },
                  //              ),
                  //            ],
                  //          ),
                  //          Row(
                  //            children: [
                  //  Text('ગુજરાતી',style: GoogleFonts.raleway(color: Colors.white,fontSize: 19),),
                  //              CupertinoSwitch(
                  //                value: pro.isGujarati,
                  //                activeColor: Colors.white,
                  //                onChanged: (newValue) {
                  //                  // Update language preference
                  //                  pro.toggleLanguage(
                  //                      gujarati: true, hindi: false, english: false);
                  //                },
                  //              ),
                  //            ],
                  //          ),
                  //          Row(
                  //            children: [
                  // Text('हिन्दी',style: GoogleFonts.raleway(color: Colors.white,fontSize: 19),),
                  //              CupertinoSwitch(
                  //                value: pro.isHindi,
                  //                activeColor: Colors.white,
                  //                onChanged: (newValue) {
                  //                  // Update language preference
                  //                  pro.toggleLanguage(
                  //                      hindi: true, english: false, gujarati: false);
                  //                },
                  //              ),
                  //            ],
                  //          ),
//***************************************************************************

                  const Divider(),
                  // ExpansionTile(
                  //   trailing: Icon(
                  //       color: Colors.white, CupertinoIcons.chevron_down),
                  //   leading: const Icon(
                  //       color: Colors.white, CupertinoIcons.sort_down),
                  //   title: Text(
                  //     'Filter',aaaaasssssss
                  //     style: GoogleFonts.raleway(
                  //         color: Colors.white, fontSize: 19),
                  //   ),
                  //   children: [
                  //     ListTile(
                  //       title: Text(
                  //         'Agriculture',
                  //         style: GoogleFonts.raleway(color: Colors.white),
                  //       ),
                  //       onTap: () {
                  //         // Handle filter for Agriculture schemes
                  //       },
                  //     ),
                  //     ListTile(
                  //       title: Text(
                  //         'Education',
                  //         style: GoogleFonts.raleway(color: Colors.white),
                  //       ),
                  //       onTap: () {
                  //         // Handle filter for Education schemes
                  //       },
                  //     ),
                  //     ListTile(
                  //       title: Text(
                  //         'Health',
                  //         style: GoogleFonts.raleway(color: Colors.white),
                  //       ),
                  //       onTap: () {
                  //         // Handle filter for Health schemes
                  //       },
                  //     ),
                  //     ListTile(
                  //       title: Text(
                  //         'Rural',
                  //         style: GoogleFonts.raleway(color: Colors.white),
                  //       ),
                  //       onTap: () {
                  //         // Handle filter for Rural schemes
                  //       },
                  //     ),
                  //     ListTile(
                  //       title: Text(
                  //         'Infra',
                  //         style: GoogleFonts.raleway(color: Colors.white),
                  //       ),
                  //       onTap: () {
                  //         // Handle filter for Infra schemes
                  //       },
                  //     ),
                  //   ],
                  // ),
                  // const Divider(),
                  ListTile(
                    onTap: () {
                      FirebaseAuthHelper.firebaseAuthHelper.logOutUser();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Settingpage(),
                        ),
                      );
                    },
                    leading: const Icon(
                        color: Colors.black, CupertinoIcons.settings),
                    title: Text(
                      pro.isGujarati
                          ? 'Settings'
                          : pro.isHindi
                              ? 'सेटिंग्स'
                              : 'Settings',
                      style: GoogleFonts.raleway(
                          color: Colors.black, fontSize: 19),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      FirebaseAuthHelper.firebaseAuthHelper.logOutUser();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    leading:
                        const Icon(color: Colors.black, Icons.logout_rounded),
                    title: Text(
                      pro.isGujarati
                          ? 'લૉગ આઉટ'
                          : pro.isHindi
                              ? 'लॉग आउट'
                              : 'Logout',
                      style: GoogleFonts.raleway(
                          color: Colors.black, fontSize: 19),
                    ),
                  ),
                ],
              ),
            ),

            body: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ListOfSchemeNational(),
                      ),
                    ),
                    child: Card(
                      color: Colors.grey[100],
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Image(
                              image: AssetImage('assets/img/india.png'),
                              height: 100,
                              width: 100,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Flexible(
                              child: Text(
                                pro.isGujarati
                                    ? 'રાષ્ટ્રીય સહકાર સહાય '
                                    : pro.isHindi
                                        ? 'भारत सरकार की योजनाएँ'
                                        : "India Government schemes",
                                style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ListOfSchemeState(),
                      ),
                    ),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Image(
                              image: AssetImage('assets/img/gujarat.png'),
                              height: 100,
                              width: 100,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Flexible(
                              child: Text(
                                pro.isGujarati
                                    ? 'ગુજરાત રાજ્ય સરકારની યોજનાઓ '
                                    : pro.isHindi
                                        ? 'गुजरात राज्य सरकार की योजनाएँ'
                                        : 'Gujarat State Government schemes',
                                style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ListOfSchemeState(),
                      ),
                    ),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Image(
                              image: AssetImage('assets/img/up.png'),
                              height: 100,
                              width: 100,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Flexible(
                              child: Text(
                                pro.isGujarati
                                    ? 'ઉત્તર પ્રદેશ રાજ્ય સરકારની યોજનાઓ '
                                    : pro.isHindi
                                        ? 'उत्तर प्रदेश राज्य सरकार की योजनाएँ'
                                        : 'Uttar Pradesh State Government schemes',
                                style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ListOfSchemeState())),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Image(
                              image: AssetImage('assets/img/mh.png'),
                              height: 100,
                              width: 100,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Flexible(
                              child: Text(
                                pro.isGujarati
                                    ? 'મહારાષ્ટ્ર રાજ્ય સરકારની યોજનાઓ'
                                    : pro.isHindi
                                        ? 'महाराष्ट्र राज्य सरकार की योजनाएँ'
                                        : 'Maharashtra State Government schemes',
                                style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

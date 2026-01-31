import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:govunity_connect/config/theme.dart';
import 'package:govunity_connect/utils/rotesUtil.dart';
import 'package:govunity_connect/screens/allSchemePage.dart';
import 'package:govunity_connect/screens/detailSchemepage.dart';
import 'package:govunity_connect/screens/homePage.dart';
import 'package:govunity_connect/screens/login/login_page.dart';
import 'package:govunity_connect/screens/national/agricultureLink.dart';
import 'package:govunity_connect/screens/national/educationLink.dart';
import 'package:govunity_connect/screens/national/educationPage.dart';
import 'package:govunity_connect/screens/national/healthPage.dart';
import 'package:govunity_connect/screens/national/listOfscheme.dart';
import 'package:govunity_connect/screens/national/ruralPage.dart';
import 'package:govunity_connect/screens/state/InfraStatePage.dart';
import 'package:govunity_connect/screens/state/agricultureState.dart';
import 'package:govunity_connect/screens/state/educationPagestate.dart';
import 'package:govunity_connect/screens/state/listOfStateScheme.dart';
import 'package:provider/provider.dart';
import 'controller/language_controller.dart';
import 'firebase_options.dart';
import 'modal/schemeModal.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  masterList.addAll(data);
  masterList.addAll(Edata);
  masterList.addAll(Rdata);
  masterList.addAll(Hdata);
  masterList.addAll(Idata);
  masterList.addAll(sdata);
  masterList.addAll(sRdata);
  masterList.addAll(sHdata);
  masterList.addAll(sEdata);
  masterList.addAll(sIdata);
  masterList.addAll(sWdata);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LanguageController(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      // initialRoute: (FirebaseAuthHelper.firebaseAuthHelper.firebaseAuth.currentUser != null) ? 'home' : 'loginPage',

      initialRoute: MyRoutes.splashPage,
      routes: {
        MyRoutes.loginPage: (context) => const LoginPage(),
        MyRoutes.home: (context) => const HomePage(),
        MyRoutes.allSchemePage: (context) => const AllSchemePage(),
        // MyRoutes.loginPage: (context) => LoginPage(),
        MyRoutes.detailSchemePage: (context) => const SchemeListWidget(),
        MyRoutes.listOfScheme: (context) => const ListOfSchemeNational(),
        MyRoutes.SdetailSchemePage: (context) => SchemeDetailsPage(
            ModalRoute.of(context)!.settings.arguments as schemeModal),
        MyRoutes.agricultureLink: (context) => const AgriculureLink(),
        MyRoutes.educationLink: (context) => const EducationLink(),
        MyRoutes.educationPage: (context) => const EducationPage(),
        MyRoutes.ruralPage: (context) => const RuralPage(),
        MyRoutes.healthPage: (context) => const HealthPage(),
        MyRoutes.agriculturestate: (context) => const AgricultureStatePage(),
        MyRoutes.listOfStateScheme: (context) => const ListOfSchemeState(),
        MyRoutes.educationPagestate: (context) => const EducationState(),
        MyRoutes.infraStatePage: (context) => const InfraState(),
      },
    );
  }
}

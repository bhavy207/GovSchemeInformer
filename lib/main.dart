import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'services/notification_service.dart';

import 'package:flutter/material.dart';
import 'package:govunity_connect/config/theme.dart';
import 'package:govunity_connect/utils/routes_util.dart';
import 'package:govunity_connect/screens/all_scheme_page.dart';
import 'package:govunity_connect/screens/detail_scheme_page.dart';
import 'package:govunity_connect/views/screens/home_page.dart';
import 'package:govunity_connect/views/screens/login_page.dart';
import 'package:govunity_connect/screens/national/agriculture_link.dart';
import 'package:govunity_connect/screens/national/education_link.dart';
import 'package:govunity_connect/screens/national/education_page.dart';
import 'package:govunity_connect/screens/national/health_page.dart';
import 'package:govunity_connect/screens/national/list_of_scheme.dart';
import 'package:govunity_connect/screens/national/rural_page.dart';
import 'package:govunity_connect/screens/state/infra_state_page.dart';
import 'package:govunity_connect/screens/state/agriculture_state.dart';
import 'package:govunity_connect/screens/state/education_page_state.dart';
import 'package:govunity_connect/screens/state/list_of_state_scheme.dart';
import 'package:provider/provider.dart';
import 'views/screens/analytics_page.dart';
import 'controller/language_controller.dart';
import 'firebase_options.dart';
import 'modal/scheme_modal.dart';

import 'package:get/get.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print("Handling a background message: ${message.messageId}");
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await NotificationService().init();

  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  // National Schemes
  for (var s in data) { s.category = 'Agriculture'; s.type = 'National'; s.state = 'National'; }
  for (var s in edata) { s.category = 'Education'; s.type = 'National'; s.state = 'National'; }
  for (var s in rdata) { s.category = 'Rural'; s.type = 'National'; s.state = 'National'; }
  for (var s in hdata) { s.category = 'Health'; s.type = 'National'; s.state = 'National'; }
  for (var s in idata) { s.category = 'Infrastructure'; s.type = 'National'; s.state = 'National'; }

  // Gujarat Schemes
  for (var s in sdata) { s.category = 'Agriculture'; s.type = 'State'; s.state = 'Gujarat'; }
  for (var s in sRdata) { s.category = 'Rural'; s.type = 'State'; s.state = 'Gujarat'; }
  for (var s in sHdata) { s.category = 'Health'; s.type = 'State'; s.state = 'Gujarat'; }
  for (var s in sEdata) { s.category = 'Education'; s.type = 'State'; s.state = 'Gujarat'; }
  for (var s in sIdata) { s.category = 'Infrastructure'; s.type = 'State'; s.state = 'Gujarat'; }
  for (var s in sWdata) { s.category = 'Welfare'; s.type = 'State'; s.state = 'Gujarat'; }

  // UP Schemes (Using some national samples as placeholders)
  upData.add(SchemeModal.fromJson(data[0].toJson())); 
  upEData.add(SchemeModal.fromJson(edata[0].toJson()));
  for (var s in upData) { s.category = 'Agriculture'; s.type = 'State'; s.state = 'Uttar Pradesh'; }
  for (var s in upEData) { s.category = 'Education'; s.type = 'State'; s.state = 'Uttar Pradesh'; }

  // MH Schemes (Using some national samples as placeholders)
  mhData.add(SchemeModal.fromJson(data[0].toJson()));
  mhHData.add(SchemeModal.fromJson(hdata[0].toJson()));
  for (var s in mhData) { s.category = 'Agriculture'; s.type = 'State'; s.state = 'Maharashtra'; }
  for (var s in mhHData) { s.category = 'Health'; s.type = 'State'; s.state = 'Maharashtra'; }

  masterList.addAll(data);
  masterList.addAll(edata);
  masterList.addAll(rdata);
  masterList.addAll(hdata);
  masterList.addAll(idata);
  masterList.addAll(sdata);
  masterList.addAll(sRdata);
  masterList.addAll(sHdata);
  masterList.addAll(sEdata);
  masterList.addAll(sIdata);
  masterList.addAll(sWdata);
  masterList.addAll(upData);
  masterList.addAll(upEData);
  masterList.addAll(mhData);
  masterList.addAll(mhHData);
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
    return GetMaterialApp(
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
        MyRoutes.sdetailSchemePage: (context) => SchemeDetailsPage(
            ModalRoute.of(context)!.settings.arguments as SchemeModal),
        MyRoutes.agricultureLink: (context) => const AgriculureLink(),
        MyRoutes.educationLink: (context) => const EducationLink(),
        MyRoutes.educationPage: (context) => const EducationPage(),
        MyRoutes.ruralPage: (context) => const RuralPage(),
        MyRoutes.healthPage: (context) => const HealthPage(),
        MyRoutes.agriculturestate: (context) => const AgricultureStatePage(),
        MyRoutes.listOfStateScheme: (context) => const ListOfSchemeState(),
        MyRoutes.educationPagestate: (context) => const EducationState(),
        MyRoutes.infraStatePage: (context) => const InfraState(),
        MyRoutes.analyticsPage: (context) => const AnalyticsPage(),
      },
    );
  }
}

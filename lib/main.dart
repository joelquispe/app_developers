import 'package:appdevelopers/developerWeb/courseCss.dart';
import 'package:appdevelopers/developerWeb/courseHtml.dart';
import 'package:appdevelopers/developerWeb/courseadobexd.dart';
import 'package:appdevelopers/developergames/coursegodot.dart';
import 'package:appdevelopers/folderdonate/donate.dart';
import 'package:appdevelopers/lenguajesclases/javaclases.dart';
import 'package:appdevelopers/lenguajesclases/javascriptclases.dart';
import 'package:appdevelopers/lenguajesclases/pyclases.dart';
import 'package:appdevelopers/listas/listasclases.dart';
import 'package:appdevelopers/page/donaciones.dart';
import 'package:appdevelopers/page/database.dart';
import 'package:appdevelopers/page/developinggames.dart';
import 'package:appdevelopers/page/developingweb.dart';
import 'package:appdevelopers/page/home.dart';
import 'package:appdevelopers/page/lenguagecourse.dart';
import 'package:appdevelopers/page/menucourses.dart';
import 'package:appdevelopers/page/programmingzero.dart';
import 'package:appdevelopers/page/tutorials.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
// import 'package:admob_flutter/admob_flutter.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  // Admob.initialize();
  // Override SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   statusBarColor: Colors.transparent,
  //   statusBarBrightness: Brightness.light
  // ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      color: Color(0xff071e3d),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xff071e3d),
          textTheme: TextTheme(bodyText1: TextStyle(), bodyText2: TextStyle())
              .apply(bodyColor: Color(0xff21e6c1), displayColor: Colors.red)),
      initialRoute: HomePage.route,
      routes: {
        HomePage.route: (_) => HomePage(),
        DonacionesPage.route: (_) => DonacionesPage(),
        PythonClassPage.route: (_) => PythonClassPage(),
        JavaClassPage.route: (_) => JavaClassPage(),
        JavascriptClassPage.route: (_) => JavascriptClassPage(),
        DatabasePage.route: (_) => DatabasePage(),
        DevelopingGamesPage.route: (_) => DevelopingGamesPage(),
        DevelopingWeb.route: (_) => DevelopingWeb(),
        LenguageCoursePage.route: (_) => LenguageCoursePage(),
        ProgrammingZeroPage.route: (_) => ProgrammingZeroPage(),
        TutorialsPage.route: (_) => TutorialsPage(),
        // DonatePage.route: (_) => DonatePage(),
        CourseCss.route: (_) => CourseCss(),
        CourseHtml.route: (_) => CourseHtml(),
        CourseAdobexd.route: (_) => CourseAdobexd(),
        CourseGodot.route: (_) => CourseGodot(),
      },
    );
  }
}

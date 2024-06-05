import 'package:flutter/material.dart';
import 'package:flutter_app/main_layout.dart';
import 'package:flutter_app/screens/auth_page.dart';
import 'package:flutter_app/screens/doctor_details.dart';
import 'package:flutter_app/utils/config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static final navigatorKey = GlobalKey<NavigatorState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          inputDecorationTheme: const InputDecorationTheme(
              focusColor: Config.primaryColor,
              border: Config.outlineBorder,
              focusedBorder: Config.focusBorder,
              errorBorder: Config.errorBorder,
              enabledBorder: Config.outlineBorder,
              floatingLabelStyle: TextStyle(color: Config.primaryColor),
              prefixIconColor: Colors.black38),
          scaffoldBackgroundColor: Colors.white,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Config.primaryColor,
              selectedItemColor: Colors.white,
              showSelectedLabels: true,
              showUnselectedLabels: false,
              unselectedItemColor: Colors.grey.shade700,
              elevation: 10,
              type: BottomNavigationBarType.fixed)),
      initialRoute: '/',
      routes: {
        '/': (context) => const AuthPage(),
        'main': (context) => const MainLayout(),
        'doc_details': (context) => const DoctorDetails()
      },
    );
  }
}

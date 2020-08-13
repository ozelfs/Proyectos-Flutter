import 'package:flutter/material.dart';
import 'package:sharedpreferences/src/home_page.dart';
//import 'package:sharedpreferences/src/login_page.dart';
import 'package:sharedpreferences/src/setting_page.dart';
import 'package:sharedpreferences/src/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = new SharedPreferencesUsuario();
  await prefs.initPref();
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prefrencias',
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (BuildContext context) => HomePage(),
        SettingPage.routeName: (BuildContext context) => SettingPage()
      },
    );
  }
}

import 'package:coach_better/Routes/routing_constants.dart';
import 'package:coach_better/Theme/app_theme.dart';
import 'package:coach_better/locator.dart';
import 'package:coach_better/utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:coach_better/Routes/router.dart' as router;
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.pref = await SharedPreferences.getInstance();
  setuplocator();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  SharedPreferences sharedPreferences;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CoachBetter',
      theme: coachAppTheme,
      onGenerateRoute: router.generateRoute,
      initialRoute: Constants.pref.getBool('loggedIn') == true
          ? HomeAdminViewRoute
          : WelcomeViewRoute,
    );
  }
}

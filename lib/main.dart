import 'package:coach_better/Routes/routing_constants.dart';
import 'package:coach_better/Theme/app_theme.dart';
import 'package:coach_better/locator.dart';
import 'package:coach_better/views/exam.dart';
import 'package:flutter/material.dart';
import 'package:coach_better/Routes/router.dart' as router;
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  setuplocator();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isloggedIn = false;
  SharedPreferences sharedPreferences;
  Future user;
  @override
  void initState() {
    // TODO: implement initState
    _checkloggedIn();
    super.initState();
  }

  Future<void> _checkloggedIn() async {
    sharedPreferences = await SharedPreferences.getInstance();
    var token = sharedPreferences.getString('token');
    if (token != null) {
      setState(() {
        _isloggedIn = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CoachBetter',
      theme: coachAppTheme,
      onGenerateRoute: router.generateRoute,
      initialRoute: WelcomeViewRoute,
    );
  }
}

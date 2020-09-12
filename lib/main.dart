import 'package:coach_better/Routes/routing_constants.dart';
import 'package:coach_better/Theme/app_theme.dart';
import 'package:coach_better/locator.dart';
import 'package:coach_better/size_config.dart';
import 'package:coach_better/utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:coach_better/Routes/router.dart' as router;
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  Constants.pref = await SharedPreferences.getInstance();
  setuplocator();

  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  SharedPreferences sharedPreferences;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'CoachBetter',
              theme: AppTheme().coachAppTheme,
              onGenerateRoute: router.generateRoute,
              initialRoute: Constants.pref.getBool('loggedIn') == true
                  ? HomeAdminViewRoute
                  : WelcomeViewRoute,
            );
          },
        );
      },
    );
  }
}

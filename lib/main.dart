import 'package:coach_better/UI/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const MaterialColor DarkGreen = const MaterialColor(
      0xFF186064,
      const <int, Color>{100: const Color(0xFF186064)},
    );
      const MaterialColor LightGreen = const MaterialColor(
      0xFF3ba374,
      const <int, Color>{100: const Color(0xFF3ba374)},
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CoachBetter',
      theme: ThemeData(
        primaryColor: DarkGreen,
        accentColor: LightGreen,
        textTheme: TextTheme(
          title: TextStyle(
              fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}

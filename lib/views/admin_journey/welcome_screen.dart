import 'package:coach_better/Animations/FadeAnimation.dart';
import 'package:coach_better/Routes/routing_constants.dart';
import 'package:coach_better/widget/button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Key("Scaffold test"),
      body: SafeArea(
        child: Container(
          child: Column(children: <Widget>[
            FadeAnimation(
                1,
                Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset('images/logo-dark.png'))),
            FadeAnimation(
                2,
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'All your team events in',
                        style: Theme.of(context).textTheme.headline5,
                        softWrap: true,
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      Text(
                        'one place',
                        style: Theme.of(context).textTheme.headline5,
                        softWrap: true,
                      ),
                    ],
                  ),
                )),
            SizedBox(height: MediaQuery.of(context).size.height * 0.06),
            // login button
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FadeAnimation(
                    3,
                    Container(
                      width: MediaQuery.of(context).size.width * 0.75,
                      height: MediaQuery.of(context).size.height * 0.08,
                      child: Button(
                        'Login',
                        onPressed: () {
                          Navigator.pushNamed(context, LoginViewRoute);
                        },
                      ),
                    )),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                // signup button
                FadeAnimation(
                    4,
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      width: MediaQuery.of(context).size.width * 0.75,
                      height: MediaQuery.of(context).size.height * 0.08,
                      child: Button(
                        'Sign-Up',
                        onPressed: () {
                          Navigator.pushNamed(context, SignUpViewRoute);
                        },
                      ),
                    )),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

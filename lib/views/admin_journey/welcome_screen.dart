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
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(children: <Widget>[
            FadeAnimation(
                1,
                Container(
                    margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 50.0),
                    child: Image.asset('images/logo-dark.png'))),
            FadeAnimation(
                2,
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'All your team events in',
                        style: Theme.of(context).textTheme.headline5,
                        softWrap: true,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text(
                          'one place',
                          style: Theme.of(context).textTheme.headline5,
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                )),

            // login button
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FadeAnimation(
                    3,
                    Container(
                      margin: EdgeInsets.only(left: 55, right: 55, top: 30),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 55.0,
                        child: Button(
                          'Login',
                          onPressed: () {
                            Navigator.pushNamed(context, LoginViewRoute);
                          },
                        ),
                      ),
                    )),
                // signup button
                FadeAnimation(
                    4,
                    Container(
                      margin: EdgeInsets.only(left: 55.0, right: 55.0, top: 30),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 55.0,
                        child: Button(
                          'Sign-Up',
                          onPressed: () {
                            Navigator.pushNamed(context, SignUpViewRoute);
                          },
                        ),
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

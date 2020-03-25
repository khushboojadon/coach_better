import 'package:coach_better/UI/login_screen.dart';
import 'package:coach_better/UI/signup_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFF186064),
      body: Container(
        // width: double.infinity,
        // height: double.infinity,
        //   color: Theme.of(context).primaryColor,
        child: Column(
           // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16.0, top: 80.0),
                child: Image.asset('images/logo-2x.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Align(
                  child: Center(
                    child: Text(
                      'All your team events in',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600),
                      softWrap: true,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Align(
                  child: Center(
                    child: Text(
                      'one place',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600),
                      softWrap: true,
                    ),
                  ),
                ),
              ),
              // login button
              Padding(
                padding: const EdgeInsets.only(left: 55, right: 55, top: 50),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 55.0,
                  child: RaisedButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(4.0),
                        side: BorderSide(color: Colors.white60)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new LoginScreen()));
                    },
                    color: Theme.of(context).accentColor,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
              // signup button
              Padding(
                padding:
                    const EdgeInsets.only(left: 55.0, right: 55.0, top: 30),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 55.0,
                  child: RaisedButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(4.0),
                        side: BorderSide(color: Colors.white60)),
                         onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new SignupScreen()));
                    },
                    color: Theme.of(context).accentColor,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Sign-Up',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}

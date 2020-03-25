import 'package:coach_better/UI/create_team_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  HomePage createState() => HomePage();
}

class HomePage extends State<SignupScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color(0xFF186064),
      child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 50),
              child: Image.asset('images/logo-2x.png'),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, right: 16.0, top: 20.0),
              child: Align(
                child: Center(
                  child: Text(
                    'All your team events in',
// style: TextStyle(
// fontFamily: 'Roboto',
// color: Colors.white,
// fontSize: 26.0,
// fontWeight: FontWeight.bold),
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
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 2.0),
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
            Padding(
              padding:
                  const EdgeInsets.only(left: 55.0, right: 55.0, top: 20.0),
              child: Container(
                height: 55.0,
                child: TextFormField(
//controller: emailController,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 5.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),
                    hintText: 'Email',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some email';
                    }
                    return null;
                  },
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 55.0, right: 55.0, top: 20.0),
              child: Container(
                height: 55.0,
                child: TextFormField(
// style: TextStyle(backgroundColor: Colors.white),
//controller: emailController,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 5.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),
                    hintText: 'First Name',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some email';
                    }
                    return null;
                  },
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 55.0, right: 55.0, top: 20.0),
              child: Container(
                height: 55.0,
                child: TextFormField(
                  style: TextStyle(fontSize: 16.0),
// style: TextStyle(backgroundColor: Colors.white),
//controller: emailController,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 5.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),
                    hintText: 'Last Name',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some email';
                    }
                    return null;
                  },
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 55.0, right: 55.0, top: 20.0),
              child: Container(
                height: 55.0,
                child: TextFormField(
// style: TextStyle(backgroundColor: Colors.white),
//controller: emailController,
                  style: TextStyle(fontSize: 16.0),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 5.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),
                    hintText: 'Password',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some email';
                    }
                    return null;
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, top: 20),
              child: Row(
                children: <Widget>[
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool value) {
                      setState(() {
                        isChecked = value;
                      });
                    },
                  ),
                  Text(
                    'Accept Terms & Conditions',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 55, right: 55, top: 30),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 55.0,
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(4.0),
                      side: BorderSide(color: Colors.white)),
                     onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new CreateTeamScreen()));
                    },
                  color: Color(0xFF3ba374),
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
    ));
  }
}

import 'package:coach_better/views/member_journey/member_home_screen.dart';
import 'package:flutter/material.dart';

class CreateProfile extends StatefulWidget {
  HomePage createState() => HomePage();
}

class HomePage extends State<CreateProfile> {
  bool isChecked = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();

  @override
  void dispose() {
// Clean up the controller when the widget is disposed.
    emailController.dispose();
    passwordController.dispose();
    firstnameController.dispose();
    lastnameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Create Profile',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        //  backgroundColor: Theme.of(context).primaryColor,
        body: Container(
          // color: Color(0xFF186064),
          child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Padding(
                //   padding:
                //       const EdgeInsets.only(left: 16.0, right: 16.0, top: 20.0),
                //   child: Align(
                //     child: Center(
                //       child: Text(
                //         'Create Profile',
                //         style: TextStyle(
                //             fontSize: 25,
                //             fontWeight: FontWeight.bold,
                //             color: Color(0xFF3ba374)),
                //         softWrap: true,
                //       ),
                //     ),
                //   ),
                // ),

                // Padding(
                //   padding:
                //       const EdgeInsets.only(left: 55.0, right: 55.0, top: 20.0),
                //   child: Container(
                //     height: 55.0,
                //     child: TextFormField(
                //       style: Theme.of(context).textTheme.body1,
                //       controller: emailController,
                //       decoration: InputDecoration(
                //         fillColor: Colors.white,
                //         filled: true,
                //         border: OutlineInputBorder(
                //           borderSide:
                //               BorderSide(color: Colors.white, width: 5.0),
                //         ),
                //         enabledBorder: OutlineInputBorder(
                //           borderSide:
                //               BorderSide(color: Colors.white, width: 2.0),
                //         ),
                //         hintText: 'Email',
                //       ),
                //       validator: (value) {
                //         if (value.isEmpty) {
                //           return 'Please enter some email';
                //         }
                //         return null;
                //       },
                //     ),
                //   ),
                // ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 55.0, right: 55.0, top: 50.0),
                  child: Container(
                    child: TextFormField(
                      style: Theme.of(context).textTheme.bodyText1,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        labelText: "Name",
                        labelStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 5.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 2.0),
                        ),
// hintText: 'Event Name',
                        hintStyle: Theme.of(context).textTheme.body1,
                      ),
                    ),
                  ),
                ),
                // Padding(
                //   padding:
                //       const EdgeInsets.only(left: 55.0, right: 55.0, top: 20.0),
                //   child: Container(
                //     height: 55.0,
                //     child: TextFormField(
                //       style: Theme.of(context).textTheme.body1,
                //       controller: firstnameController,
                //       decoration: InputDecoration(
                //         fillColor: Colors.white,
                //         filled: true,
                //         border: OutlineInputBorder(
                //           borderSide:
                //               BorderSide(color: Colors.white, width: 5.0),
                //         ),
                //         enabledBorder: OutlineInputBorder(
                //           borderSide:
                //               BorderSide(color: Colors.white, width: 2.0),
                //         ),
                //         hintText: 'First Name',
                //       ),
                //       validator: (value) {
                //         if (value.isEmpty) {
                //           return 'Please enter some email';
                //         }
                //         return null;
                //       },
                //     ),
                //   ),
                // ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 55.0, right: 55.0, top: 10.0),
                  child: Container(
                    child: TextFormField(
                      style: Theme.of(context).textTheme.bodyText1,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        labelText: "Surname",
                        labelStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 5.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 2.0),
                        ),
// hintText: 'Event Name',
                        hintStyle: Theme.of(context).textTheme.body1,
                      ),
                    ),
                  ),
                ),
                // Padding(
                //   padding:
                //       const EdgeInsets.only(left: 55.0, right: 55.0, top: 20.0),
                //   child: Container(
                //     height: 55.0,
                //     child: TextFormField(
                //       style: Theme.of(context).textTheme.body1,
                //       controller: lastnameController,
                //       decoration: InputDecoration(
                //         fillColor: Colors.white,
                //         filled: true,
                //         border: OutlineInputBorder(
                //           borderSide:
                //               BorderSide(color: Colors.white, width: 5.0),
                //         ),
                //         enabledBorder: OutlineInputBorder(
                //           borderSide:
                //               BorderSide(color: Colors.white, width: 2.0),
                //         ),
                //         hintText: 'Last Name',
                //       ),
                //       validator: (value) {
                //         if (value.isEmpty) {
                //           return 'Please enter some email';
                //         }
                //         return null;
                //       },
                //     ),
                //   ),
                // ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 55.0, right: 55.0, top: 10.0),
                  child: Container(
                    child: TextFormField(
                      style: Theme.of(context).textTheme.bodyText1,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 5.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 2.0),
                        ),
// hintText: 'Event Name',
                        hintStyle: Theme.of(context).textTheme.body1,
                      ),
                    ),
                  ),
                ),
                // Padding(
                //   padding:
                //       const EdgeInsets.only(left: 55.0, right: 55.0, top: 20.0),
                //   child: Container(
                //     height: 55.0,
                //     child: TextFormField(
                //       style: Theme.of(context).textTheme.body1,
                //       controller: passwordController,
                //       // style: TextStyle(fontSize: 16.0),
                //       decoration: InputDecoration(
                //         fillColor: Colors.white,
                //         filled: true,
                //         border: OutlineInputBorder(
                //           borderSide:
                //               BorderSide(color: Colors.white, width: 5.0),
                //         ),
                //         enabledBorder: OutlineInputBorder(
                //           borderSide:
                //               BorderSide(color: Colors.white, width: 2.0),
                //         ),
                //         hintText: 'Password',
                //       ),
                //       validator: (value) {
                //         if (value.isEmpty) {
                //           return 'Please enter some email';
                //         }
                //         return null;
                //       },
                //     ),
                //   ),
                // ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 55.0, right: 55.0, top: 10.0),
                  child: Container(
                    child: TextFormField(
                      style: Theme.of(context).textTheme.bodyText1,
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.white,

                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 5.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 2.0),
                        ),
// hintText: 'Event Name',
                        hintStyle: Theme.of(context).textTheme.bodyText1,
                      ),
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
                        style: Theme.of(context).textTheme.bodyText1,
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
                          MaterialPageRoute(
                              builder: (context) => MemberHomeScreen()),
                        );
                      },
                      color: Color(0xFF3ba374),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Join Now',
                          style: Theme.of(context).textTheme.button,
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
        ));
  }
}

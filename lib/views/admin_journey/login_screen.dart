import 'package:coach_better/Routes/routing_constants.dart';
import 'package:coach_better/view_models/base_model.dart';
import 'package:coach_better/view_models/login_view_model.dart';
import 'package:coach_better/views/base_view.dart';
import 'package:coach_better/widget/button.dart';
import 'package:coach_better/widget/text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  HomePage createState() => HomePage();
}

class HomePage extends State<LoginScreen> {
  final emailController = TextEditingController(text: 'admin@pixel-plus.ch');
  final passwordController = TextEditingController(text: 'cGFzc3dvcmQ');
  String errormessage;
  // bool _isloading = true;
  // Future<void> setuserdetails(String email) async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setString('email', email);
  // }

  @override
  void dispose() {
// Clean up the controller when the widget is disposed.
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  // signIn(String email, String password) async {
  //   var response = await login(email, password);
  //   if (response.accessToken != null) {
  //     setState(() {
  //       _isloading = false;

  //       Navigator.of(context).pushNamedAndRemoveUntil(
  //           TeamViewRoute, (Route<dynamic> route) => false);
  //     });
  //   } else {
  //     setState(() {
  //       _isloading = false;
  //     });
  //     showDialog(
  //         context: context,
  //         builder: (BuildContext context) {
  //           return AlertDialog(
  //             title: Text("Login failed"),
  //             content: Text("Email/password id incorrect"),
  //           );
  //         });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // return ChangeNotifierProvider<LoginViewModel>(
    //   create: (context) => locator<LoginViewModel>(),
    //   child: Consumer<LoginViewModel>(
    return BaseView<LoginViewModel>(
      builder: (context, model, child) => Scaffold(
          //    backgroundColor: Theme.of(context).primaryColor,
          body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 50),
              child: Image.asset('images/logo-dark.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
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
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 55.0, right: 55.0, top: 20.0),
              child: Container(
                //    height: 55.0,
                // child: TextFormField(
                //   controller: emailController,
                //   validator: (value) {
                //     if (value.isEmpty) {
                //       return 'Please enter eamil';
                //     }
                //     return null;
                //   },
                //   style: Theme.of(context).textTheme.bodyText1,
                //   decoration: InputDecoration(
                //     fillColor: Colors.white,
                //     filled: true,
                //     labelText: 'Email',
                //     labelStyle: Theme.of(context).textTheme.bodyText1,
                //     border: OutlineInputBorder(
                //       borderSide: BorderSide(
                //           color: Theme.of(context).primaryColor, width: 5.0),
                //     ),
                //     enabledBorder: OutlineInputBorder(
                //       borderSide: BorderSide(
                //           color: Theme.of(context).primaryColor, width: 2.0),
                //     ),
                //   ),
                // ),
                child: UserTextField(
                  textController: emailController,
                  hintText: 'Email',
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 55.0, right: 55.0, top: 20.0),
              child: Container(
                //    height: 55.0,
                child: TextFormField(
                  obscureText: true,
                  controller: passwordController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter password';
                    }
                    return null;
                  },
                  style: Theme.of(context).textTheme.bodyText1,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Password',
                    labelStyle: Theme.of(context).textTheme.bodyText1,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Theme.of(context).primaryColor, width: 5.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Theme.of(context).primaryColor, width: 2.0),
                    ),
                  ),
                ),
              ),
            ),
            model.state == ViewState.Busy
                ? CircularProgressIndicator()
                : Padding(
                    padding:
                        const EdgeInsets.only(left: 55, right: 55, top: 30),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 55.0,
                      child: Button('Login', onPressed: () async {
                        var loginsuccess = await model.login(
                            emailController.text, passwordController.text);
                        if (loginsuccess) {
                          Navigator.pushNamedAndRemoveUntil(
                              context, TeamViewRoute, (route) => false);
                        }
                        // setState(() {
                        //   _isloading = true;
                        //   setuserdetails(emailController.text);
                        // //  signIn(emailController.text, passwordController.text);
                        // });
                      }),
                      // child: RaisedButton(
                      //   shape: new RoundedRectangleBorder(
                      //       borderRadius: new BorderRadius.circular(4.0),
                      //       side: BorderSide(color: Colors.white)),
                      //   onPressed: () {
                      //     setState(() {
                      //       _isloading = true;

                      //       setuserdetails(emailController.text);
                      //       signIn(emailController.text, passwordController.text);
                      //     });
                      //   },
                      //   color: Theme.of(context).accentColor,
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(15.0),
                      //     child: Text(
                      //       'Login',
                      //       style: Theme.of(context).textTheme.button,
                      //     ),
                      //   ),
                      // ),
                    ),
                  )
          ]),
        ),
      )),
    );
  }
}

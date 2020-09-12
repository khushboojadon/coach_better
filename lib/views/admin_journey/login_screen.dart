import 'package:coach_better/Routes/routing_constants.dart';
import 'package:coach_better/ViewModels/base_model.dart';
import 'package:coach_better/ViewModels/login_view_model.dart';
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

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  final _loginformKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      builder: (context, model, child) => Scaffold(
          body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(children: <Widget>[
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
                child: Image.asset('images/logo-dark.png')),
            Column(
              children: <Widget>[
                Text(
                  'All your team events in',
                  style: Theme.of(context).textTheme.headline5,
                  softWrap: true,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Text(
                  'one place',
                  style: Theme.of(context).textTheme.headline5,
                  softWrap: true,
                ),
              ],
            ),
            Form(
              key: _loginformKey,
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: MediaQuery.of(context).size.height * 0.08,
                    child: UserTextField(
                      textController: emailController,
                      hintText: 'Email',
                      validator: (emailController) {
                        // Pattern pattern =
                        //     r'^[A-Za-z0-9]+(?:[ _-][A-Za-z0-9]+)*$';
                        // RegExp regex = new RegExp(pattern);
                        if (emailController.isEmpty) {
                          return 'Please enter email';
                        } else
                          return null;
                      },
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: MediaQuery.of(context).size.height * 0.08,
                    child: TextFormField(
                      obscureText: true,
                      controller: passwordController,
                      validator: (passwordController) {
                        if (passwordController.isEmpty) {
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
                              color: Theme.of(context).primaryColor,
                              width: 5.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 2.0),
                        ),
                      ),
                    ),
                  ),
                  model.state == ViewState.Busy
                      ? CircularProgressIndicator()
                      : SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.78,
                    height: MediaQuery.of(context).size.height * 0.08,
                    child: Button('Login', onPressed: () async {
                      if (_loginformKey.currentState.validate()) {
                        await model.login(
                            emailController.text, passwordController.text);

                        Navigator.pushNamedAndRemoveUntil(
                            context, TeamViewRoute, (route) => false);
                      }
                    }),
                  )
                ],
              ),
            ),
          ]),
        ),
      )),
    );
  }
}

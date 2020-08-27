import 'package:coach_better/Routes/routing_constants.dart';
import 'package:coach_better/widget/button.dart';
import 'package:coach_better/widget/text_field.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  HomePage createState() => HomePage();
}

class HomePage extends State<SignupScreen> {
  bool isChecked = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    firstnameController.dispose();
    lastnameController.dispose();
    super.dispose();
  }

  final _signupformKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 50),
              child: Image.asset('images/logo-dark.png'),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, right: 16.0, top: 20.0),
              child: Align(
                child: Center(
                  child: Text(
                    'All your team events in',
                    style: Theme.of(context).textTheme.headline5,
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
                    style: Theme.of(context).textTheme.headline5,
                    softWrap: true,
                  ),
                ),
              ),
            ),
            Form(
              key: _signupformKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 55.0, right: 55.0, top: 20.0),
                    child: Container(
                      child: UserTextField(
                          textController: emailController,
                          hintText: 'Email',
                          validator: (emailController) {
                            if (emailController.isEmpty)
                              return 'Please enter email';
                            else
                              return null;
                          }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 55.0, right: 55.0, top: 20.0),
                    child: UserTextField(
                        textController: firstnameController,
                        hintText: 'First Name',
                        validator: (firstnameController) {
                          if (firstnameController.isEmpty)
                            return 'Please enter first name';
                          else
                            return null;
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 55.0, right: 55.0, top: 20.0),
                    child: UserTextField(
                        textController: firstnameController,
                        hintText: 'Last Name',
                        validator: (lastnameController) {
                          if (lastnameController.isEmpty)
                            return 'Please enter first name';
                          else
                            return null;
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 55.0, right: 55.0, top: 20.0),
                    child: UserTextField(
                      validator: (passwordController) {
                        if (passwordController.isEmpty) {
                          return 'Please enter Password';
                        }
                      },
                      hintText: 'Password',
                      textController: passwordController,
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
                              fontSize: 16.0, color: Color(0xFF3ba374)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 55, right: 55, top: 20),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 55.0,
                      child: Button(
                        'Sign-Up',
                        onPressed: () {
                          if (_signupformKey.currentState.validate()) {
                            Navigator.pushNamed(context, LoginViewRoute);
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

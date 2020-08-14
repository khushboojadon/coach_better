import 'package:coach_better/Routes/routing_constants.dart';
import 'package:coach_better/widget/button.dart';
import 'package:flutter/material.dart';

class CreateTeamScreen extends StatefulWidget {
  @override
  _CreateTeamScreenState createState() => _CreateTeamScreenState();
}

class _CreateTeamScreenState extends State<CreateTeamScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      // appbar with title
      appBar: AppBar(
        title: Column(
          children: <Widget>[
            Image.asset(
              'images/team.png',
              width: 50,
              height: 40,
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text('My Teams',
                  style: Theme.of(context).textTheme.headline6),
            ),
          ],
        ),
      ),
      // navigation drawer
//drawer: DrawerScreen(),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(left: 50.0, right: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                    elevation: 10,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0),
                          child: Icon(
                            Icons.add,
                            color: Theme.of(context).accentColor,
                            size: 50.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 55, right: 55, top: 40, bottom: 90),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 55.0,
                            child: Button(
                              'Create Team',
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(
                                    context, SignUpAdminViewRoute, (route) => false);
                                //  Navigator.of(context).pushAndRemoveUntil(
                                //       MaterialPageRoute(
                                //           builder: (context) =>
                                //               SignupAdminScreen()),
                                //       (Route<dynamic> route) => false);
                              },
                            ),
                            // child: RaisedButton(
                            //   shape: new RoundedRectangleBorder(
                            //       borderRadius: new BorderRadius.circular(4.0),
                            //       side: BorderSide(color: Colors.white60)),
                            //   onPressed: () {
                            //     Navigator.of(context).pushAndRemoveUntil(
                            //         MaterialPageRoute(
                            //             builder: (context) =>
                            //                 SignupAdminScreen()),
                            //         (Route<dynamic> route) => false);
                            //   },
                            //   color: Theme.of(context).accentColor,
                            //   child: Padding(
                            //     padding: const EdgeInsets.all(15.0),
                            //     child: Text(
                            //       'Create Team',
                            //       style: Theme.of(context).textTheme.button,
                            //     ),
                            //   ),
                            // ),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

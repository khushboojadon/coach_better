import 'package:coach_better/widget/button.dart';
import 'package:coach_better/widget/drawer.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class YourProfile extends StatefulWidget {
  @override
  State createState() {
    return YourProfileState();
  }
}

class YourProfileState extends State<YourProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text("Your Profile"),
      ),
      drawer: DrawerScreen(),
      body: SafeArea(
        child: ExpandableTheme(
          data: const ExpandableThemeData(
              iconColor: Color(0xFF186064), useInkWell: true),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: <Widget>[
              ChangePassword(),
              ChangeEmail(),
              ChangeTeamName(),
              _RaisedButton(context)
            ],
          ),
        ),
      ),
    );
  }
}

// ChangePassword
class ChangePassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.only(
          top: 50.0, left: 10.0, right: 10.0, bottom: 10.0),
      child: Card(
        elevation: 5,
        clipBehavior: Clip.antiAlias,
        child: Form(
                  child: Column(
            children: <Widget>[
              ScrollOnExpand(
                scrollOnExpand: true,
                scrollOnCollapse: false,
                child: ExpandablePanel(
                  theme: const ExpandableThemeData(
                    headerAlignment: ExpandablePanelHeaderAlignment.center,
                    tapBodyToCollapse: true,
                  ),
                  header: Padding(
                      padding:
                          EdgeInsets.only(left: 25.0, top: 20.0, bottom: 10.0),
                      child: Text(
                        "Change Password",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      )),
                  expanded: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 20.0),
                        child: Container(
                          //   height: 50.0,
                          child: TextFormField(
                            // controller: _email,
                            style: TextStyle(fontSize: 16.0),
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: "Current Password",
                              labelStyle: TextStyle(color: Colors.grey),
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
                              hintStyle: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 20.0),
                        child: Container(
                          child: TextFormField(
                            // controller: _email,
                            style: TextStyle(fontSize: 16.0),
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: "New Password",
                              labelStyle: TextStyle(color: Colors.grey),
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
                              hintStyle: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 20.0),
                        child: Container(
                          child: TextFormField(
                            //controller: _email,
                            style: TextStyle(fontSize: 16.0),
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: "Confirm Password",
                              labelStyle: TextStyle(color: Colors.grey),
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
                              hintStyle: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 20.0, bottom: 20.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 55.0,
                          child: Button(
                            'Save Changes',
                            onPressed: () {},
                          ),
                          // child: RaisedButton(
                          //   child: Text(
                          //     'Save Changes',
                          //     style: Theme.of(context).textTheme.body2,
                          //   ),
                          //   shape: new RoundedRectangleBorder(
                          //       borderRadius: new BorderRadius.circular(4.0),
                          //       side: BorderSide(color: Colors.white60)),
                          //   onPressed: () {},
                          //   color: Color(0xFF3ba374),
                          // ),
                        ),
                      )
                    ],
                  ),
                  builder: (_, collapsed, expanded) {
                    return Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      child: Expandable(
                        collapsed: collapsed,
                        expanded: expanded,
                        theme: const ExpandableThemeData(crossFadePoint: 0),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class ChangeEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        elevation: 5,
        clipBehavior: Clip.antiAlias,
        child: Form(
                  child: Column(
            children: <Widget>[
              ScrollOnExpand(
                scrollOnExpand: true,
                scrollOnCollapse: false,
                child: ExpandablePanel(
                  theme: const ExpandableThemeData(
                    headerAlignment: ExpandablePanelHeaderAlignment.center,
                    tapBodyToCollapse: true,
                  ),
                  header: Padding(
                      padding:
                          EdgeInsets.only(left: 25.0, top: 20.0, bottom: 10.0),
                      child: Text(
                        "Change Email",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      )),
                  expanded: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 20.0),
                        child: Container(
                          // height: 55.0,
                          child: TextFormField(
                            // controller: _email,
                            style: TextStyle(fontSize: 16.0),
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: "Current Email",
                              labelStyle: TextStyle(color: Colors.grey),
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
                              hintStyle: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 20.0),
                        child: Container(
                          child: TextFormField(
                            // controller: _email,
                            style: TextStyle(fontSize: 16.0),
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: "New Email",
                              labelStyle: TextStyle(color: Colors.grey),
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
                              hintStyle: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 20.0),
                        child: Container(
                          child: TextFormField(
                            //controller: _email,
                            style: TextStyle(fontSize: 16.0),
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: "Confirm Email",
                              labelStyle: TextStyle(color: Colors.grey),
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
                              hintStyle: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 20.0, bottom: 20.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 55.0,
                          child: Button(
                            'Save Changes',
                            onPressed: () {},
                          ),
                          // child: RaisedButton(
                          //   child: Text(
                          //     'Save Changes',
                          //     style: Theme.of(context).textTheme.button,
                          //   ),
                          //   shape: new RoundedRectangleBorder(
                          //       borderRadius: new BorderRadius.circular(4.0),
                          //       side: BorderSide(color: Colors.white60)),
                          //   onPressed: () {},
                          //   color: Color(0xFF3ba374),
                          // ),
                        ),
                      )
                    ],
                  ),
                  builder: (_, collapsed, expanded) {
                    return Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      child: Expandable(
                        collapsed: collapsed,
                        expanded: expanded,
                        theme: const ExpandableThemeData(crossFadePoint: 0),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class ChangeTeamName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        elevation: 5,
        clipBehavior: Clip.antiAlias,
        child: Form(
                  child: Column(
            children: <Widget>[
              ScrollOnExpand(
                scrollOnExpand: true,
                scrollOnCollapse: false,
                child: ExpandablePanel(
                  theme: const ExpandableThemeData(
                    headerAlignment: ExpandablePanelHeaderAlignment.center,
                    tapBodyToCollapse: true,
                  ),
                  header: Padding(
                      padding:
                          EdgeInsets.only(left: 25.0, top: 20.0, bottom: 10.0),
                      child: Text(
                        "Change Team Name",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      )),
                  expanded: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 20.0),
                        child: Container(
                          child: TextFormField(
                            // controller: _email,
                            style: TextStyle(fontSize: 16.0),
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: "Current Team Name",
                              labelStyle: TextStyle(color: Colors.grey),
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
                              hintStyle: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 20.0),
                        child: Container(
                          child: TextFormField(
                            // controller: _email,
                            style: TextStyle(fontSize: 16.0),
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: "New Team Name",
                              labelStyle: TextStyle(color: Colors.grey),
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
                              hintStyle: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 20.0),
                        child: Container(
                          child: TextFormField(
                            //controller: _email,
                            style: TextStyle(fontSize: 16.0),
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: "Confirm Team Name",
                              labelStyle: TextStyle(color: Colors.grey),
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
                              hintStyle: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 20.0, bottom: 20.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 55.0,
                          child: Button(
                            'Save Changes',
                            onPressed: () {},
                          ),
                          // child: RaisedButton(
                          //   child: Text(
                          //     'Save Changes',
                          //     style: Theme.of(context).textTheme.body2,
                          //   ),
                          //   shape: new RoundedRectangleBorder(
                          //       borderRadius: new BorderRadius.circular(4.0),
                          //       side: BorderSide(color: Colors.white60)),
                          //   onPressed: () {},
                          //   color: Color(0xFF3ba374),
                          // ),
                        ),
                      )
                    ],
                  ),
                  builder: (_, collapsed, expanded) {
                    return Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      child: Expandable(
                        collapsed: collapsed,
                        expanded: expanded,
                        theme: const ExpandableThemeData(crossFadePoint: 0),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

// delete account button
Widget _RaisedButton(BuildContext context) {
  return Padding(
    padding:
        const EdgeInsets.only(left: 15, right: 15, top: 20.0, bottom: 50.0),
    child: SizedBox(
      //width: MediaQuery.of(context).size.width * 0.78,
      height: 55.0,
      child: Button(
        'Delete Account',
        onPressed: () {},
      ),
      // child: RaisedButton(
      //   child: Text(
      //     'Delete Account',
      //     style: Theme.of(context).textTheme.body2,
      //   ),
      //   shape: new RoundedRectangleBorder(
      //       borderRadius: new BorderRadius.circular(4.0),
      //       side: BorderSide(color: Colors.white60)),
      //   onPressed: () {},
      //   color: Color(0xFF3ba374),
      // ),
    ),
  );
}

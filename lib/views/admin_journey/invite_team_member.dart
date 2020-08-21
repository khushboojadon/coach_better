import 'package:flutter/material.dart';

class InviteTeamMember extends StatefulWidget {
  HomePage createState() => HomePage();
}

class HomePage extends State<InviteTeamMember> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Column(
            children: <Widget>[
              Icon(
                Icons.people,
                size: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                  'Invite Player',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ],
          ),
        ),
        body: Container(
          child: Column(children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, right: 16.0, top: 50.0),
              child: Align(
                child: Center(
                  child: Text(
                    'Invite your player',
                    style: Theme.of(context).textTheme.headline5,
                    softWrap: true,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 55, right: 55, top: 20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 55.0,
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(4.0),
                      side: BorderSide(color: Colors.white)),
                  onPressed: () {},
                  color: Theme.of(context).accentColor,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Invite Mobile',
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 55, right: 55, top: 20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 55.0,
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(4.0),
                      side: BorderSide(color: Colors.white)),
                  onPressed: () {},
                  color: Theme.of(context).accentColor,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Invite via E-mail',
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 55, right: 55, top: 20),
              child: Container(
                height: 55,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: new BorderRadius.circular(4.0),
                    color: Colors.white),
                child: Center(
                  child: Text(
                    'https://www.coachbetter.com/',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(4.0),
                      side: BorderSide(color: Colors.white)),
                  onPressed: () {},
                  color: Theme.of(context).accentColor,
                  child: Text(
                    'Copy Link',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
              ),
            ),
          ]),
        ));
  }
}

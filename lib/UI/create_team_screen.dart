import 'package:flutter/material.dart';

class CreateTeam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CreateTeamScreen();
  }
}

class CreateTeamScreen extends StatefulWidget {
  @override
  _CreateTeamScreenState createState() => _CreateTeamScreenState();
}

class _CreateTeamScreenState extends State<CreateTeamScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar with title
      appBar: AppBar(
          title: Text(
            'My Teams',
            style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w600),
          ),
         // iconTheme: new IconThemeData(color: Color(0xFF186064))
         ),
      // navigation drawer
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Coach Better',
                style: Theme.of(context).textTheme.title,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: Container(
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
                        padding: const EdgeInsets.only(
                            left: 55, right: 55, top: 40, bottom: 30),
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
                                      builder: (context) =>
                                          new CreateTeamScreen()));
                            },
                            color: Theme.of(context).accentColor,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                'Create Team',
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
                      //  create team button
                      Padding(
                        padding: const EdgeInsets.only(bottom: 90.0),
                        child: Icon(
                          Icons.add,
                          color: Theme.of(context).accentColor,
                          size: 50.0,
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

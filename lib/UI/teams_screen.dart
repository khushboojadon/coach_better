import 'package:flutter/material.dart';

class Teams extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TeamScreen();
  }
}

class TeamScreen extends StatefulWidget {
  @override
  _TeamScreenState createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                child: Text(
                  'My Teams',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
            ],
          ),
          //   actions: <Widget>[
          //   Image.asset('images/logoapp.png',fit: BoxFit.contain,height: 32,),
          //       Container(padding: const EdgeInsets.all(8.0), child: Text('Solid Shop')),

          //   Image.asset('images/logoapp.png',fit: BoxFit.contain,height: 32,), // here add notification icon
          //       Container(padding: const EdgeInsets.all(8.0), child: Text('Solid Shop')) // here add other icon
          // ],
          elevation: 0.0,
          bottomOpacity: 0.0,
          // iconTheme: new IconThemeData(color: Color(0xFF186064)),
          // actions: <Widget>[
          //   // action button
          //   IconButton(
          //     icon: Icon(
          //       Icons.add,
          //       //  color: Color(0xFF186064),
          //       color: Colors.white,
          //       size: 25.0,
          //     ),
          //     onPressed: null,
          //   ),
          // ]
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
                  //    color: Theme.of(context).primaryColor,
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
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              //height: 100,
              child: Card(
                  elevation: 5,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0, top: 20.0),
                        child: Icon(
                          Icons.add,
                          color: Theme.of(context).accentColor,
                          size: 30.0,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 55, right: 55, bottom: 20.0),
                          child: Text(
                            'Create New Team',
                            style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Roboto',
                                color: Colors.grey),
                          )),
                      //  create team button
                    ],
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
            child: GridView.count(
              shrinkWrap: true,
              // Create a grid with 2 columns. If you change the scrollDirection to
              // horizontal, this produces 2 rows.
              crossAxisCount: 2,
              // Generate 100 widgets that display their index in the List.
              children: List.generate(3, (index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 5.0, right: 5.0, top: 10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Card(
                      elevation: 5,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(8.0),
                      ),
                      child: Column(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.person,
                                color: Color(0xFF186064),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'FIFA FC $index',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Roboto',
                                      color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Center(
                            child: Image.asset(
                              'images/ic_launcher.png',
                              height: 110,
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //     onPressed: () {
      //       // Add your onPressed code here!
      //     },
      //     child: Icon(Icons.add),
      //     backgroundColor: Color(0xFF186064)),
    );
  }
}

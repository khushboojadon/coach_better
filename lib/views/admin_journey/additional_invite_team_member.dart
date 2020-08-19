import 'package:flutter/material.dart';

class AdditionalTeamMember extends StatefulWidget {
  HomePage createState() => HomePage();
}

class HomePage extends State<AdditionalTeamMember> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF186064),
          title: Column(
            children: <Widget>[
              Icon(
                Icons.people,
                //color: Color(0xFF186064),
                size: 30.0,
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
          // elevation: 0.0,
          // bottomOpacity: 0.0,
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
// color: Theme.of(context).primaryColor,
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
          color: Color(0xFF186064),
          child: Column(children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, right: 16.0, top: 50.0),
              child: Align(
                child: Center(
                  child: Text(
                    'Invite your player',
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
                  textAlign: TextAlign.center,
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
                    hintText: 'Name',
                    
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
              padding: const EdgeInsets.only(left: 55, right: 55, top: 20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 55.0,
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(4.0),
                      side: BorderSide(color: Colors.white60)),
                  onPressed: () {},
                  color: Color(0xFF3ba374),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Invite Mobile',
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
            Padding(
              padding: const EdgeInsets.only(left: 55, right: 55, top: 20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 55.0,
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(4.0),
                      side: BorderSide(color: Colors.white60)),
                  onPressed: () {},
                  color: Color(0xFF3ba374),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Invite via E-mail',
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

            Padding(
              padding: const EdgeInsets.only(left: 55, right: 55, top: 20),
              child: Container(
                height: 55,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white60),
                    borderRadius: new BorderRadius.circular(4.0),
                    color: Colors.white),
                child: Center(
                  child: Text('https://www.coachbetter.com/',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontFamily: 'Roboto',
                          //backgroundColor: Color(0xFF3ba374),
                         // backgroundColor: Colors.white,
                          fontWeight: FontWeight.w600)),
                ),
              ),
            ),
           
            // RaisedButton(
            //   child: Text("Copy Link"),
            //   onPressed: () {},
            //   color: Color(0xFF3ba374),
            //   //color: Colors.transparent,
            //   textColor: Colors.white,
            //   //padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            //   //splashColor: Colors.grey,
            // ),
             Padding(
               padding: const EdgeInsets.only(top: 10),
               child: SizedBox(
                  //width: MediaQuery.of(context).size.width,
                  //height: 55.0,
                  child: RaisedButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(4.0),
                        side: BorderSide(color: Colors.white60)),
                    onPressed: () {},
                    color: Color(0xFF3ba374),
                    // child: Padding(
                    //   padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Copy Link',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600),
                      ),
                    //),
                  ),
                ),
             ),
            
          ]),
        ));
  }
}

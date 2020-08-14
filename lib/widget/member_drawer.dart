import 'package:flutter/material.dart';
import 'package:coach_better/services/authentication.dart';

class MemberDrawerScreen extends StatefulWidget {
  @override
  _DrawerState createState() => _DrawerState();
}

class _DrawerState extends State<MemberDrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).primaryColor,
        child: ListView(
          children: <Widget>[
           SizedBox(height:150),
            Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  new ListTile(
                    title: Text('Home',
                        style: Theme.of(context).textTheme.bodyText1),
                    leading: Icon(
                      Icons.home,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  new ListTile(
                    onTap: () {
              
                    },
                    title: Text('Your Profile',
                        style: Theme.of(context).textTheme.bodyText1),
                    leading: Icon(
                      Icons.person,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  new ListTile(
                    onTap: () {
                      
                    },
                    title: Text('Switch Teams',
                        style: Theme.of(context).textTheme.bodyText1),
                    leading: Icon(
                      Icons.people,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  new ListTile(
                    onTap: () {
                    //  logout();
                   
                    },
                    title: Text('Logout',
                        style: Theme.of(context).textTheme.bodyText1),
                    leading: Icon(
                      Icons.exit_to_app,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

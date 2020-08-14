import 'package:coach_better/Routes/routing_constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerState createState() => _DrawerState();
}

class _DrawerState extends State<DrawerScreen> {
  String email;
  getuserdetails() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      email = prefs.getString('email');
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getuserdetails();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).primaryColor,
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
                margin: EdgeInsets.only(bottom: 0.0),
                accountName: Text(
                  '',
                  style: Theme.of(context).textTheme.headline6,
                ),
                currentAccountPicture: ClipRRect(
                    borderRadius: BorderRadius.circular(40.0),
                    child: Image.asset('images/original.jpg')),
                accountEmail: Text('$email',
                    style: Theme.of(context).textTheme.headline6)),
            Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  new ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, HomeAdminViewRoute);
                      // Navigator.push(
                      //     context,
                      //     new MaterialPageRoute(
                      //         builder: (context) => new YourProfile()));
                    },
                    title: Text('Home',
                        style: Theme.of(context).textTheme.bodyText1),
                    leading: Icon(
                      Icons.home,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  new ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, YourProfileViewRoute);
                      // Navigator.push(
                      //     context,
                      //     new MaterialPageRoute(
                      //         builder: (context) => new YourProfile()));
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
                      //  Navigator.pushNamed(context, VideoRoomViewRoute);
                      Navigator.pushNamed(context, AdminRightsTeamViewRoute);
                      // Navigator.push(
                      //     context,
                      //     new MaterialPageRoute(
                      //         builder: (context) => new AdminRightTeams()));
                    },
                    title: Text('Admin Rights Team',
                        style: Theme.of(context).textTheme.bodyText1),
                    leading: Icon(
                      Icons.event,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  new ListTile(
                    onTap: () {
                      //  Navigator.pushNamed(context, VideoRoomViewRoute);
                      Navigator.pushNamed(context, HomeMemberViewRoute);
                      // Navigator.push(
                      //     context,
                      //     new MaterialPageRoute(
                      //         builder: (context) => new AdminRightTeams()));
                    },
                    title: Text('Member Journey',
                        style: Theme.of(context).textTheme.bodyText1),
                    leading: Icon(
                      Icons.event,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  new ListTile(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, TeamViewRoute, (route) => false);
                      // Navigator.push(
                      //     context,
                      //     new MaterialPageRoute(
                      //         builder: (context) => new TeamScreen()));
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
                      Navigator.pushNamed(context, WelcomeViewRoute);
                      // Navigator.of(context).pushAndRemoveUntil(
                      //     MaterialPageRoute(
                      //         builder: (context) => WelcomeScreen()),
                      //     (Route<dynamic> route) => false);
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

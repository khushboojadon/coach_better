import 'package:coach_better/Routes/routing_constants.dart';
import 'package:coach_better/ViewModels/base_model.dart';
import 'package:coach_better/ViewModels/teams_view_model.dart';
import 'package:coach_better/models/teams_model.dart';
import 'package:coach_better/views/base_view.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TeamScreen extends StatefulWidget {
  @override
  _TeamScreenState createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  setteamId(int teamid, int seasonid) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('teamId', teamid);
    prefs.setInt('season_id', seasonid);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ],
          ),
        ),
        // navigation drawer
        //  drawer: DrawerScreen(),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
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
                            padding:
                                const EdgeInsets.only(bottom: 20.0, top: 20.0),
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
                                style: Theme.of(context).textTheme.bodyText1,
                              )),
                          //  create team button
                        ],
                      )),
                ),
              ),
              BaseView<TeamsViewModel>(
                  onModelReady: (model) => model.getTeams(),
                  builder: (context, model, child) =>
                      model.state == ViewState.Busy
                          ? CircularProgressIndicator()
                          : model.teams?.data == null
                              ? CircularProgressIndicator()
                              : teamsCard(model.teams))
            ],
          ),
        )));
  }

  Widget teamsCard(Teams teams) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.builder(
          itemCount: teams.data.length,
          shrinkWrap: true,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 10.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    var teamId = teams.data[index].id;
                    var seasonId = teams.data[index].seasons[0].id;
                    //   print(seasonId);
                    setteamId(teamId, seasonId);
                  });
                  Navigator.pushNamed(context, HomeAdminViewRoute);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Card(
                    elevation: 5,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                    ),
                    child: Column(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, top: 10.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.person,
                              color: Theme.of(context).accentColor,
                            ),
                            Flexible(
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    teams.data[index].name,
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                    maxLines: 3,
                                    softWrap: true,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Image.asset(
                              'images/ic_launcher.png',
                              height: 450,
                              width: 400,
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            );
          }),
    );
  }
}

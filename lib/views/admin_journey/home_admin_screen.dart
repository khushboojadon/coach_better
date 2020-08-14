import 'package:coach_better/Routes/routing_constants.dart';
import 'package:coach_better/services/matches_service.dart';
import 'package:coach_better/services/playersService.dart';
import 'package:coach_better/services/training_service.dart';
import 'package:coach_better/widget/drawer.dart';
import 'package:flutter/material.dart';

class HomeAdminScreen extends StatefulWidget {
  @override
  _HomeAdminScreenState createState() => _HomeAdminScreenState();
}

class _HomeAdminScreenState extends State<HomeAdminScreen> {
  PlayerService _playerService = PlayerService();
  TrainingService _trainingService = TrainingService();
  MatchService _matchService = MatchService();
  var players = 0;
  var events = 0;

  playerscount() async {
    var count = await _playerService.fetchPlayercount();
    setState(() {
      players = count;
    });
  }

  eventscount() async {
    var training = await _trainingService.fetchtrainingscount();
    var matches = await _matchService.fetchmatchescount();
    setState(() {
      events = training + matches;
    });
  }

  @override
  void initState() {
    super.initState();
    playerscount();
    eventscount();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Color(0xFF186064),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Home',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      drawer: DrawerScreen(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 10.0, top: 50.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.21,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    elevation: 5,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                    ),
                    child: Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              decoration: new BoxDecoration(
                                  color: Theme.of(context).accentColor,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(8.0),
                                      bottomLeft: const Radius.circular(8.0))),
                              width: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0, top: 10.0, bottom: 10.0),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Text(
                                        'Team',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(),
                                      child: Row(children: <Widget>[
                                        Icon(Icons.people,
                                            color:
                                                Theme.of(context).accentColor),
                                        // Padding(
                                        //   padding:
                                        //       const EdgeInsets.only(left: 10.0),
                                        //   child: Text(
                                        //    "${widget.teamName}",
                                        //     style: TextStyle(
                                        //         fontSize: 16.0,
                                        //         fontFamily: 'Roboto',
                                        //         color: Colors.grey),
                                        //   ),
                                        // ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Text(
                                            players.toString(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Text(
                                            'Player',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                        ),
                                      ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(),
                                      child: Text(
                                        'Add Player to your team',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.85,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          // FlatButton(
                                          //   onPressed: () {},
                                          //   color: Colors.white,
                                          GestureDetector(
                                            onTap: () async {
                                             // final isPopped =
                                                  await Navigator.pushNamed(
                                                      context,
                                                      YourTeamAdminViewRoute);
                                              // if (isPopped) {
                                              //   setState(() {});
                                              // }
                                              // Navigator.push(
                                              //     context,
                                              //     new MaterialPageRoute(
                                              //         builder: (context) =>
                                              //             new YourTeamAdmin(
                                              //                 // teamId:
                                              //                 //     widget.teamId,
                                              //                 )));
                                            },
                                            child: Container(
                                              child: Text(
                                                'VIEW PLAYERS',
                                                textAlign: TextAlign.left,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle1,
                                              ),
                                            ),
                                          ),
                                          // Button(
                                          //   'ADD PLAYER',
                                          //   onPressed: () {
                                          //     Navigator.pushNamed(
                                          //         context, AddTeamMemberViewRoute);
                                          //   },
                                          // )
                                          RaisedButton(
                                            shape: new RoundedRectangleBorder(
                                                borderRadius:
                                                    new BorderRadius.circular(
                                                        4.0),
                                                side: BorderSide(
                                                    color: Colors.white60)),
                                            onPressed: () {
                                              Navigator.pushNamed(context,
                                                  AddTeamMemberViewRoute);
                                              // Navigator.push(
                                              //     context,
                                              //     new MaterialPageRoute(
                                              //         builder: (context) =>
                                              //             new AddTeamMember()));
                                            },
                                            color: Color(0xFF3ba374),
                                            child: Text(
                                              'ADD PLAYER',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .button,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                            )
                          ]),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.21,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    elevation: 5,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                    ),
                    child: Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              decoration: new BoxDecoration(
                                  color: Theme.of(context).accentColor,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(8.0),
                                      bottomLeft: const Radius.circular(8.0))),
                              width: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0, top: 10.0, bottom: 10.0),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Text(
                                        'Event',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(),
                                      child: Row(children: <Widget>[
                                        Icon(Icons.people,
                                            color:
                                                Theme.of(context).accentColor),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Text(
                                            events.toString(),
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontFamily: 'Roboto',
                                                color: Colors.grey),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Text(
                                            'Events',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                        ),
                                      ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(),
                                      child: Text(
                                        'Add Event for your team',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.85,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(context,
                                                  EventsViewAdminViewRoute);
                                              // Navigator.push(
                                              //     context,
                                              //     new MaterialPageRoute(
                                              //         builder: (context) =>
                                              //             new EventsViewAdmin()));
                                            },
                                            child: Container(
                                              child: Text(
                                                'VIEW EVENTS',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Theme.of(context)
                                                        .accentColor,
                                                    fontFamily: 'Roboto',
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                          ),
                                          //  ),
                                          RaisedButton(
                                            shape: new RoundedRectangleBorder(
                                                borderRadius:
                                                    new BorderRadius.circular(
                                                        4.0),
                                                side: BorderSide(
                                                    color: Colors.white60)),
                                            onPressed: () {
                                              Navigator.pushNamed(context,
                                                  CreateEventAdminViewRoute);
                                              // Navigator.push(
                                              //     context,
                                              //     new MaterialPageRoute(
                                              //         builder: (context) =>
                                              //             new CreateEventAdmin()));
                                            },
                                            color: Color(0xFF3ba374),
                                            child: Text(
                                              'CREATE EVENT',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .button,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                            )
                          ]),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.21,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    elevation: 5,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                    ),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            decoration: new BoxDecoration(
                                color: Theme.of(context).accentColor,
                                borderRadius: new BorderRadius.only(
                                    topLeft: const Radius.circular(8.0),
                                    bottomLeft: const Radius.circular(8.0))),
                            width: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15.0, top: 10.0, bottom: 15.0),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(
                                      'Calender',
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(),
                                    child: Row(children: <Widget>[
                                      Icon(Icons.event,
                                          color: Theme.of(context).accentColor),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          '1',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          'Events',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ),
                                      ),
                                    ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(),
                                    child: Text(
                                      'Explore your teams daily events',
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                  ),
                                  Row(children: <Widget>[
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(context,
                                            CalenderViewAdminViewRoute);
                                        // Navigator.push(
                                        //     context,
                                        //     new MaterialPageRoute(
                                        //         builder: (context) =>
                                        //             new CalenderViewAdmin()));
                                      },
                                      child: Container(
                                        child: Text(
                                          'VIEW UPCOMING EVENTS',
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1,
                                        ),
                                      ),
                                    ),
                                    //  ),
                                  ]),
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

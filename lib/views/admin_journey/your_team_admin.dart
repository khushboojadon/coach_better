// import 'package:coach_better/Routes/routing_constants.dart';
// import 'package:coach_better/models/players_model.dart';
// import 'package:coach_better/services/playersService.dart';
// import 'package:coach_better/view_models/base_model.dart';
// import 'package:coach_better/view_models/players_view_model.dart';
// import 'package:coach_better/views/base_view.dart';
// import 'package:coach_better/widget/button.dart';
// import 'package:flutter/material.dart';

// class YourTeamAdmin extends StatefulWidget {
//   @override
//   _YourTeamAdminState createState() => _YourTeamAdminState();
// }

// class _YourTeamAdminState extends State<YourTeamAdmin> {
//   var teamId;
//   PlayerService _playerService = new PlayerService();

//   @override
//   Widget build(BuildContext context) {
//     return
//         //WillPopScope(
//         // onWillPop: () {
//         //   Navigator.pop(context, true);
//         //   return Future.value(false);
//         // },
//         // child:
//         BaseView<PlayersViewModel>(
//       onModelReady: (model) => model.getPlayers(),
//       builder: (context, model, child) => Scaffold(
//         //  backgroundColor: Theme.of(context).primaryColor,
//         appBar: AppBar(
//           centerTitle: true,
//           title: Text(
//             'Your Team Admin',
//             style: Theme.of(context).textTheme.headline6,
//           ),
//         ),
//         //  drawer: DrawerScreen(),
//         body: SafeArea(
//           child: Column(
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.only(
//                     left: 10, right: 10, top: 20, bottom: 20),
//                 child: Container(
//                   height: MediaQuery.of(context).size.height * 0.22,
//                   width: MediaQuery.of(context).size.width,
//                   child: Card(
//                     elevation: 5,
//                     shape: new RoundedRectangleBorder(
//                       borderRadius: new BorderRadius.circular(8.0),
//                     ),
//                     child: Container(
//                       child: Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: <Widget>[
//                             Container(
//                               decoration: new BoxDecoration(
//                                   color: Theme.of(context).accentColor,
//                                   borderRadius: new BorderRadius.only(
//                                       topLeft: const Radius.circular(8.0),
//                                       bottomLeft: const Radius.circular(8.0))),
//                               width: 5,
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(
//                                   left: 14.0, top: 10.0, bottom: 10.0),
//                               child: Column(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: <Widget>[
//                                     Padding(
//                                       padding: const EdgeInsets.only(top: 5.0),
//                                       child: Text(
//                                         'TEAM',
//                                         style: Theme.of(context)
//                                             .textTheme
//                                             .bodyText2,
//                                       ),
//                                     ),
//                                     Text(
//                                       'Type in the name of the team member',
//                                       style:
//                                           Theme.of(context).textTheme.bodyText1,
//                                     ),
//                                     Text(
//                                       'you want to add to your team',
//                                       style:
//                                           Theme.of(context).textTheme.bodyText1,
//                                     ),
//                                     Container(
//                                       width: MediaQuery.of(context).size.width *
//                                           0.85,
//                                       child: Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.spaceBetween,
//                                           children: <Widget>[
//                                             Row(children: <Widget>[
//                                               Icon(Icons.people,
//                                                   color: Theme.of(context)
//                                                       .accentColor),
//                                               Padding(
//                                                 padding: const EdgeInsets.only(
//                                                     left: 10.0),
//                                                 child: Text(
//                                                   '1',
//                                                   style: Theme.of(context)
//                                                       .textTheme
//                                                       .bodyText1,
//                                                 ),
//                                               ),
//                                               Padding(
//                                                 padding: const EdgeInsets.only(
//                                                     left: 10.0),
//                                                 child: Text(
//                                                   'Player',
//                                                   style: Theme.of(context)
//                                                       .textTheme
//                                                       .bodyText1,
//                                                 ),
//                                               ),
//                                             ]),
//                                             // Button(
//                                             //   'ADD PLAYER',
//                                             //   onPressed: () {
//                                             //     Navigator.pushNamed(
//                                             //         context, AddPlayerViewRoute);
//                                             //   },
//                                             // )
//                                             RaisedButton(
//                                               shape: new RoundedRectangleBorder(
//                                                   borderRadius:
//                                                       new BorderRadius.circular(
//                                                           4.0),
//                                                   side: BorderSide(
//                                                       color: Colors.white)),
//                                               onPressed: () {
//                                                 Navigator.pushNamed(context,
//                                                     AddPlayerViewRoute);
//                                                 // Navigator.push(
//                                                 //     context,
//                                                 //     new MaterialPageRoute(
//                                                 //         builder: (context) =>
//                                                 //             new AddPlayer()));
//                                               },
//                                               color:
//                                                   Theme.of(context).accentColor,
//                                               child: Text(
//                                                 'ADD PLAYER',
//                                                 style: Theme.of(context)
//                                                     .textTheme
//                                                     .headline6,
//                                               ),
//                                             ),
//                                           ]),
//                                     ),
//                                   ]),
//                             )
//                           ]),
//                     ),
//                   ),
//                 ),
//               ),
//               model.state == ViewState.Busy
//                   ? CircularProgressIndicator()
//                   : model.player?.data == null
//                       ? CircularProgressIndicator()
//                       : playerCard(model.player),
//             ],
//           ),
//         ),
//         //  ),
//       ),
//     );
//   }

//   Widget playerCard(Players player) {
//     return Expanded(
//       child: ListView.builder(
//           itemCount: player.data.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Padding(
//                 padding: const EdgeInsets.only(
//                   left: 10,
//                   right: 10,
//                 ),
//                 child: Card(
//                   elevation: 5.0,
//                   child: Container(
//                     padding: EdgeInsets.all(8.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Row(children: <Widget>[
//                           Padding(
//                               padding: const EdgeInsets.only(left: 10),
//                               child: Image.asset(
//                                 'images/shirt.png',
//                                 width: 30,
//                                 height: 30,
//                               )),
//                           Padding(
//                             padding: const EdgeInsets.only(
//                               left: 15.0,
//                             ),
//                             child: Text(
//                               player.data[index].id.toString() ?? '',
//                               textAlign: TextAlign.center,
//                               style: Theme.of(context).textTheme.bodyText2,
//                             ),
//                           ),
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: <Widget>[
//                               Padding(
//                                 padding: const EdgeInsets.only(
//                                     left: 15.0, top: 10.0),
//                                 child: Text(
//                                   player.data[index].firstName ??
//                                       '' + " " + player.data[index].lastName ??
//                                       '',
//                                   textAlign: TextAlign.center,
//                                   style: Theme.of(context).textTheme.bodyText2,
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(
//                                     left: 15.0, top: 5, bottom: 10.0),
//                                 child: Text(
//                                   player.data[index].position ?? '',
//                                   style: Theme.of(context).textTheme.bodyText1,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ]),
//                         Padding(
//                           padding: const EdgeInsets.only(right: 10),
//                           child: IconButton(
//                             color: Theme.of(context).accentColor,
//                             onPressed: () {
//                               showDialog(
//                                   context: context,
//                                   builder: (context) {
//                                     return AlertDialog(
//                                       title: Text(
//                                         'Do you want to delete the player?',
//                                         style: TextStyle(
//                                             fontSize: 16.0,
//                                             color: Colors.black),
//                                       ),
//                                       content: Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.spaceBetween,
//                                           children: [
//                                             Button(
//                                               'No',
//                                               onPressed: () {
//                                                 Navigator.pop(context);
//                                               },
//                                             ),
//                                             Button(
//                                               'Yes',
//                                               onPressed: () {
//                                                 setState(() {
//                                                   _playerService.deletePlayer(
//                                                       player.data[index].id);

//                                                   Navigator.pop(context);
//                                                 });
//                                               },
//                                             )
//                                           ]),
//                                     );
//                                   });
//                             },
//                             icon: Icon(
//                               Icons.delete,
//                               size: 30,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ));
//           }),
//     );
//   }
// }

import 'package:coach_better/Routes/routing_constants.dart';
import 'package:coach_better/models/players_model.dart';
import 'package:coach_better/view_models/base_model.dart';
import 'package:coach_better/view_models/players_view_model.dart';
import 'package:coach_better/views/base_view.dart';
import 'package:coach_better/widget/button.dart';
import 'package:flutter/material.dart';

class YourTeamAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<PlayersViewModel>(
      onModelReady: (model) => model.getPlayers(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Your Team Admin',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        //  drawer: DrawerScreen(),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 20, bottom: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.22,
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
                                  left: 14.0, top: 10.0, bottom: 10.0),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Text(
                                        'TEAM',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                    ),
                                    Text(
                                      'Type in the name of the team member',
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                    Text(
                                      'you want to add to your team',
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.85,
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Row(children: <Widget>[
                                              Icon(Icons.people,
                                                  color: Theme.of(context)
                                                      .accentColor),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10.0),
                                                child: Text(
                                                  '1',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText1,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10.0),
                                                child: Text(
                                                  'Player',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText1,
                                                ),
                                              ),
                                            ]),
                                            // Button(
                                            //   'ADD PLAYER',
                                            //   onPressed: () {
                                            //     Navigator.pushNamed(
                                            //         context, AddPlayerViewRoute);
                                            //   },
                                            // )
                                            RaisedButton(
                                              shape: new RoundedRectangleBorder(
                                                  borderRadius:
                                                      new BorderRadius.circular(
                                                          4.0),
                                                  side: BorderSide(
                                                      color: Colors.white)),
                                              onPressed: () {
                                                Navigator.pushNamed(context,
                                                    AddPlayerViewRoute);
                                                // Navigator.push(
                                                //     context,
                                                //     new MaterialPageRoute(
                                                //         builder: (context) =>
                                                //             new AddPlayer()));
                                              },
                                              color:
                                                  Theme.of(context).accentColor,
                                              child: Text(
                                                'ADD PLAYER',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline6,
                                              ),
                                            ),
                                          ]),
                                    ),
                                  ]),
                            )
                          ]),
                    ),
                  ),
                ),
              ),
              model.state == ViewState.Busy
                  ? CircularProgressIndicator()
                  : model.player?.data == null
                      ? CircularProgressIndicator()
                      : playerCard(model.player),
            ],
          ),
        ),
        //  ),
      ),
    );
  }

  Widget playerCard(Players player) {
    return Expanded(
      child: ListView.builder(
          itemCount: player.data.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Card(
                  elevation: 5.0,
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Image.asset(
                                'images/shirt.png',
                                width: 30,
                                height: 30,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 15.0,
                            ),
                            child: Text(
                              player.data[index].id.toString() ?? '',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, top: 10.0),
                                child: Text(
                                  player.data[index].firstName ??
                                      '' + " " + player.data[index].lastName ??
                                      '',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, top: 5, bottom: 10.0),
                                child: Text(
                                  player.data[index].position ?? '',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                            ],
                          ),
                        ]),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: IconButton(
                            color: Theme.of(context).accentColor,
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text(
                                        'Do you want to delete the player?',
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.black),
                                      ),
                                      content: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Button(
                                              'No',
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                            ),
                                            Button(
                                              'Yes',
                                              onPressed: () {
                                                
                                              },
                                            )
                                          ]),
                                    );
                                  });
                            },
                            icon: Icon(
                              Icons.delete,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ));
          }),
    );
  }
}

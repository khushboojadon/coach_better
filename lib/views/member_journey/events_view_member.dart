// import 'package:coach_better/UI/drawer.dart';
// import 'package:flutter/material.dart';

// class EventsViewAdmin extends StatefulWidget {
//   @override
//   _CreateEventAdminState createState() => _CreateEventAdminState();
// }

// class _CreateEventAdminState extends State<EventsViewAdmin> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).primaryColor,
//       appBar: AppBar(
//         title: Column(
//           children: <Widget>[
//             Icon(
//               Icons.people,
//               color: Colors.white,
//               size: 30.0,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(bottom: 10.0),
//               child: Text(
//                 'Event View Admin ',
//                 style: TextStyle(
//                   fontSize: 16,
//                   color: Colors.white,
//                   fontFamily: 'Roboto',
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     //  drawer: DrawerScreen(),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Container(
//             width: MediaQuery.of(context).size.width,
//             child: Column(children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.only(top: 50.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Text(
//                       'January 2020',
//                       style: Theme.of(context).textTheme.title,
//                       softWrap: true,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 20.0),
//                       child: Icon(
//                         Icons.people,
//                         size: 30.0,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding:
//                     const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
//                 child: Container(
//                   height: MediaQuery.of(context).size.height * 0.21,
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
//                                     Container(
//                                       width: MediaQuery.of(context).size.width *
//                                           0.85,
//                                       child: Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: <Widget>[
//                                           Row(children: <Widget>[
//                                             Padding(
//                                               padding: const EdgeInsets.only(
//                                                   left: 0.0),
//                                               child: Text('Training Day - ',
//                                                   style: TextStyle(
//                                                     color: Colors.black,
//                                                     fontSize: 16.0,
//                                                   )),
//                                             ),
//                                             Padding(
//                                               padding: const EdgeInsets.only(
//                                                   left: 5.0),
//                                               child: Text(
//                                                 '03/06/2020',
//                                                 style: Theme.of(context)
//                                                     .textTheme
//                                                     .body1,
//                                               ),
//                                             ),
//                                           ]),
//                                           Row(
//                                             children: <Widget>[
//                                               Icon(
//                                                 Icons.edit,
//                                                 size: 20.0,
//                                                 color: Theme.of(context)
//                                                     .accentColor,
//                                               ),
//                                               Padding(
//                                                 padding: const EdgeInsets.only(
//                                                     left: 5.0),
//                                                 child: Text(
//                                                   'Edit',
//                                                   style: TextStyle(
//                                                       fontSize: 16.0,
//                                                       color: Colors.grey),
//                                                 ),
//                                               ),
//                                             ],
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                     Container(
//                                       width: MediaQuery.of(context).size.width *
//                                           0.85,
//                                       child: Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: <Widget>[
//                                           Row(children: <Widget>[
//                                             Padding(
//                                               padding: const EdgeInsets.only(
//                                                   left: 0.0),
//                                               child: Text(
//                                                 'Meet Time - ',
//                                                 style: TextStyle(
//                                                   color: Colors.black,
//                                                   fontSize: 16.0,
//                                                 ),
//                                               ),
//                                             ),
//                                             Padding(
//                                               padding: const EdgeInsets.only(
//                                                   left: 5.0),
//                                               child: Text(
//                                                 '06:00 PM',
//                                                 style: Theme.of(context)
//                                                     .textTheme
//                                                     .body1,
//                                               ),
//                                             ),
//                                           ]),
//                                           Row(children: <Widget>[
//                                             Padding(
//                                               padding: const EdgeInsets.only(
//                                                   left: 0.0),
//                                               child: Text('Start Time - ',
//                                                   style: TextStyle(
//                                                     color: Colors.black,
//                                                     fontSize: 16.0,
//                                                   )),
//                                             ),
//                                             Padding(
//                                               padding: const EdgeInsets.only(
//                                                   left: 5.0),
//                                               child: Text(
//                                                 '06:30 PM',
//                                                 style: Theme.of(context)
//                                                     .textTheme
//                                                     .body1,
//                                               ),
//                                             ),
//                                           ]),
//                                         ],
//                                       ),
//                                     ),
//                                     Container(
//                                       width: MediaQuery.of(context).size.width *
//                                           0.85,
//                                       child: Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: <Widget>[
//                                           Row(children: <Widget>[
//                                             Padding(
//                                               padding: const EdgeInsets.only(
//                                                   left: 0.0),
//                                               child: Container(
//                                                 child: Row(
//                                                   children: <Widget>[
//                                                     Icon(
//                                                       Icons.people,
//                                                       color: Theme.of(context)
//                                                           .accentColor,
//                                                     ),
//                                                     Padding(
//                                                       padding:
//                                                           const EdgeInsets.only(
//                                                               left: 10.0),
//                                                       child: Text('14'),
//                                                     ),
//                                                     Padding(
//                                                       padding:
//                                                           const EdgeInsets.only(
//                                                               left: 10.0),
//                                                       child: Text('Available',
//                                                           style: TextStyle(
//                                                             color: Theme.of(
//                                                                     context)
//                                                                 .accentColor,
//                                                             fontSize: 16.0,
//                                                           )),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                             ),
//                                           ]),
//                                           Container(
//                                             child: Row(
//                                               children: <Widget>[
//                                                 Icon(
//                                                   Icons.people,
//                                                   color: Theme.of(context)
//                                                       .accentColor,
//                                                 ),
//                                                 Padding(
//                                                   padding:
//                                                       const EdgeInsets.only(
//                                                           left: 10.0),
//                                                   child: Text('4'),
//                                                 ),
//                                                 Padding(
//                                                   padding:
//                                                       const EdgeInsets.only(
//                                                           left: 10.0),
//                                                   child: Text('Not Available',
//                                                       style: TextStyle(
//                                                         color: Colors.red,
//                                                         fontSize: 16.0,
//                                                       )),
//                                                 ),
//                                               ],
//                                             ),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                     Container(
//                                       child: Row(
//                                         children: <Widget>[
//                                           Icon(Icons.place,
//                                               color: Theme.of(context)
//                                                   .accentColor),
//                                           Padding(
//                                             padding: const EdgeInsets.only(
//                                                 left: 10.0),
//                                             child: Text('Training Location',
//                                                 style: Theme.of(context)
//                                                     .textTheme
//                                                     .body1),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                   ]),
//                             )
//                           ]),
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding:
//                     const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
//                 child: Container(
//                   height: MediaQuery.of(context).size.height * 0.21,
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
//                                     Container(
//                                       width: MediaQuery.of(context).size.width *
//                                           0.85,
//                                       child: Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: <Widget>[
//                                           Row(children: <Widget>[
//                                             Padding(
//                                               padding: const EdgeInsets.only(
//                                                   left: 0.0),
//                                               child: Text('Match Day - ',
//                                                   style: TextStyle(
//                                                     color: Colors.black,
//                                                     fontSize: 16.0,
//                                                   )),
//                                             ),
//                                             Padding(
//                                               padding: const EdgeInsets.only(
//                                                   left: 5.0),
//                                               child: Text(
//                                                 '05/06/2020',
//                                                 style: Theme.of(context)
//                                                     .textTheme
//                                                     .body1,
//                                               ),
//                                             ),
//                                           ]),
//                                           Row(
//                                             children: <Widget>[
//                                               Icon(
//                                                 Icons.edit,
//                                                 size: 20.0,
//                                                 color: Theme.of(context)
//                                                     .accentColor,
//                                               ),
//                                               Padding(
//                                                 padding: const EdgeInsets.only(
//                                                     left: 5.0),
//                                                 child: Text(
//                                                   'Edit',
//                                                   style: TextStyle(
//                                                       fontSize: 16.0,
//                                                       color: Colors.grey),
//                                                 ),
//                                               ),
//                                             ],
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                     Container(
//                                       width: MediaQuery.of(context).size.width *
//                                           0.85,
//                                       child: Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: <Widget>[
//                                           Row(children: <Widget>[
//                                             Padding(
//                                               padding: const EdgeInsets.only(
//                                                   left: 0.0),
//                                               child: Text(
//                                                 'Meet Time - ',
//                                                 style: TextStyle(
//                                                   color: Colors.black,
//                                                   fontSize: 16.0,
//                                                 ),
//                                               ),
//                                             ),
//                                             Padding(
//                                               padding: const EdgeInsets.only(
//                                                   left: 5.0),
//                                               child: Text(
//                                                 '06:00 PM',
//                                                 style: Theme.of(context)
//                                                     .textTheme
//                                                     .body1,
//                                               ),
//                                             ),
//                                           ]),
//                                           Row(children: <Widget>[
//                                             Padding(
//                                               padding: const EdgeInsets.only(
//                                                   left: 0.0),
//                                               child: Text('Start Time - ',
//                                                   style: TextStyle(
//                                                     color: Colors.black,
//                                                     fontSize: 16.0,
//                                                   )),
//                                             ),
//                                             Padding(
//                                               padding: const EdgeInsets.only(
//                                                   left: 5.0),
//                                               child: Text(
//                                                 '06:30 PM',
//                                                 style: Theme.of(context)
//                                                     .textTheme
//                                                     .body1,
//                                               ),
//                                             ),
//                                           ]),
//                                         ],
//                                       ),
//                                     ),
//                                     Container(
//                                       width: MediaQuery.of(context).size.width *
//                                           0.85,
//                                       child: Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: <Widget>[
//                                           Row(children: <Widget>[
//                                             Padding(
//                                               padding: const EdgeInsets.only(
//                                                   left: 0.0),
//                                               child: Container(
//                                                 child: Row(
//                                                   children: <Widget>[
//                                                     Icon(
//                                                       Icons.people,
//                                                       color: Theme.of(context)
//                                                           .accentColor,
//                                                     ),
//                                                     Padding(
//                                                       padding:
//                                                           const EdgeInsets.only(
//                                                               left: 10.0),
//                                                       child: Text('16'),
//                                                     ),
//                                                     Padding(
//                                                       padding:
//                                                           const EdgeInsets.only(
//                                                               left: 10.0),
//                                                       child: Text('Available',
//                                                           style: TextStyle(
//                                                             color: Theme.of(
//                                                                     context)
//                                                                 .accentColor,
//                                                             fontSize: 16.0,
//                                                           )),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                             ),
//                                           ]),
//                                           Container(
//                                             child: Row(
//                                               children: <Widget>[
//                                                 Icon(
//                                                   Icons.people,
//                                                   color: Theme.of(context)
//                                                       .accentColor,
//                                                 ),
//                                                 Padding(
//                                                   padding:
//                                                       const EdgeInsets.only(
//                                                           left: 10.0),
//                                                   child: Text('2'),
//                                                 ),
//                                                 Padding(
//                                                   padding:
//                                                       const EdgeInsets.only(
//                                                           left: 10.0),
//                                                   child: Text('Not Available',
//                                                       style: TextStyle(
//                                                         color: Colors.red,
//                                                         fontSize: 16.0,
//                                                       )),
//                                                 ),
//                                               ],
//                                             ),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                     Container(
//                                       width: MediaQuery.of(context).size.width *
//                                           0.85,
//                                       child: Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: <Widget>[
//                                           Container(
//                                             child: Row(
//                                               children: <Widget>[
//                                                 Icon(
//                                                   Icons.place,
//                                                   color: Theme.of(context)
//                                                       .accentColor,
//                                                 ),
//                                                 Padding(
//                                                   padding:
//                                                       const EdgeInsets.only(
//                                                           left: 10.0),
//                                                   child: Text('Match Location',
//                                                       style: Theme.of(context)
//                                                           .textTheme
//                                                           .body1),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                           Row(children: <Widget>[
//                                             Padding(
//                                               padding: const EdgeInsets.only(
//                                                   left: 0.0),
//                                               child: Container(
//                                                 child: Row(
//                                                   children: <Widget>[
//                                                     Icon(
//                                                       Icons.people,
//                                                       color: Theme.of(context)
//                                                           .accentColor,
//                                                     ),
//                                                     Padding(
//                                                       padding:
//                                                           const EdgeInsets.only(
//                                                               left: 10.0),
//                                                       child: Text('Opponent',
//                                                           style:
//                                                               Theme.of(context)
//                                                                   .textTheme
//                                                                   .body1),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                             ),
//                                           ]),
//                                         ],
//                                       ),
//                                     ),
//                                   ]),
//                             )
//                           ]),
//                     ),
//                   ),
//                 ),
//               ),
//             ]),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:coach_better/services/matches_service.dart';
import 'package:coach_better/services/training_service.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class EventsViewMember extends StatefulWidget {
  @override
  State createState() {
    return EventsViewMemberState();
  }
}

class EventsViewMemberState extends State<EventsViewMember> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: <Widget>[
            Icon(
              Icons.people,
              color: Colors.white,
              size: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text('Event View Member ',
                  style: Theme.of(context).textTheme.headline6),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ExpandableTheme(
          data: const ExpandableThemeData(
            iconColor: Colors.blue,
            useInkWell: true,
          ),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: <Widget>[TrainingDay(), MatchDay()],
          ),
        ),
      ),
    );
  }
}

class TrainingDay extends StatefulWidget {
  @override
  _TrainingDayState createState() => _TrainingDayState();
}

class _TrainingDayState extends State<TrainingDay> {
  TrainingService _trainingService = TrainingService();
  final training = [
    {
      "date": "2020-08-08",
      "meet_time": "06:00 PM",
      "start_time": "6:30 PM",
      "available": 10,
      "not_available": 4,
      "location": "Hauptplatz",
      "opponent": "FIFA FC"
    },
    {
      "date": "2020-08-12",
      "meet_time": "06:00 PM",
      "start_time": "6:30 PM",
      "available": 9,
      "not_available": 6,
      "location": "Herrliberg",
      "opponent": "FC Herrliberg 2"
    },
    {
      "date": "2020-08-16",
      "meet_time": "06:00 PM",
      "start_time": "6:30 PM",
      "available": 12,
      "not_available": 3,
      "location": "Herrliberg",
      "opponent": "FC Herrliberg 1"
    },
    {
      "date": "2020-08-28",
      "meet_time": "06:00 PM",
      "start_time": "6:30 PM",
      "available": 13,
      "not_available": 3,
      "location": "Mellingen",
      "opponent": "FC Mellingen"
    }
  ];
  @override
  Widget build(BuildContext context) {
    buildList() {
      return Container(child: FutureBuilder(
          //  future: _trainingService.fetchtrainings(),
          //  future: _trainingService.fetchalltrainings(),
          builder: (BuildContext context, snapshot) {
        // if (snapshot.data == null) {
        //   return Center(child: CircularProgressIndicator());
        // } else {
        // return snapshot.data.isEmpty
        //     ? Center(
        //         child: Padding(
        //         padding: const EdgeInsets.all(10.0),
        //         child: Text('No Trainings'),
        //       ))
        // :
        return ListView.builder(
            // itemCount: snapshot.data.length,
            itemCount: training.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
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
                                  left: 3.0, top: 10.0, bottom: 10.0),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      // width:
                                      //     MediaQuery.of(context)
                                      //             .size
                                      //             .width *
                                      //         0.80,
                                      child: Row(
                                        // mainAxisAlignment:
                                        //     MainAxisAlignment
                                        //         .spaceBetween,
                                        children: <Widget>[
                                          Row(children: <Widget>[
                                            // SizedBox(
                                            //   width: 5.0,
                                            // ),
                                            Text('Training Day - ',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16.0,
                                                )),
                                            SizedBox(width: 2.0),
                                            Text(
                                              // snapshot.data[index]
                                              //         .date ??
                                              training[index]['date'] ?? '',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1,
                                            ),
                                          ]),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: <Widget>[
                                              Icon(
                                                Icons.edit,
                                                size: 20.0,
                                                color: Theme.of(context)
                                                    .accentColor,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5.0),
                                                child: Text(
                                                  'Edit',
                                                  style: TextStyle(
                                                      fontSize: 16.0,
                                                      color: Colors.grey),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // width:
                                      //     MediaQuery.of(context)
                                      //             .size
                                      //             .width *
                                      //         0.85,
                                      child: Row(
                                        // mainAxisAlignment:
                                        //     MainAxisAlignment
                                        //         .spaceBetween,
                                        children: <Widget>[
                                          Row(children: <Widget>[
                                            Text(
                                              'Meet Time - ',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              // snapshot.data[index]
                                              //     .meet_time,
                                              training[index]['meet_time'],
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1,
                                            ),
                                          ]),
                                          SizedBox(width: 2.0),
                                          Row(children: <Widget>[
                                            Text('Start Time - ',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16.0,
                                                )),
                                            Text(
                                              // snapshot.data[index]
                                              //     .start_time,
                                              training[index]['start_time'],
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1,
                                            ),
                                          ]),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // width:
                                      //     MediaQuery.of(context)
                                      //             .size
                                      //             .width *
                                      //         0.85,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Row(children: <Widget>[
                                            Container(
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.people,
                                                    color: Theme.of(context)
                                                        .accentColor,
                                                  ),
                                                  SizedBox(width: 10.0),
                                                  Text(
                                                      // snapshot
                                                      //   .data[index]
                                                      //   .available
                                                      training[index]
                                                              ['available']
                                                          .toString()),
                                                  SizedBox(width: 10.0),
                                                  Text('Available',
                                                      style: TextStyle(
                                                        color: Theme.of(context)
                                                            .accentColor,
                                                        fontSize: 16.0,
                                                      )),
                                                ],
                                              ),
                                            ),
                                          ]),
                                          SizedBox(width: 10.0),
                                          Container(
                                            child: Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.people,
                                                  color: Theme.of(context)
                                                      .accentColor,
                                                ),
                                                SizedBox(width: 10.0),
                                                Text(
                                                    // snapshot
                                                    //   .data[index]
                                                    //   .not_available
                                                    training[index]
                                                            ['not_available']
                                                        .toString()),
                                                SizedBox(width: 10.0),
                                                Text('Not Available',
                                                    style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 16.0,
                                                    )),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Icon(Icons.place,
                                              color: Theme.of(context)
                                                  .accentColor),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0),
                                            child: Text(
                                                // snapshot
                                                //         .data[
                                                //             index]
                                                //         .location ??
                                                //     'No location',
                                                training[index]['location'],
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1),
                                          )
                                        ],
                                      ),
                                    ),
                                  ]),
                            )
                          ]),
                    ),
                  ),
                ),
              );
              // return Column(
              //     children: <Widget>[ Text(data[index]['name']),Text(data[index]['age'])]);
            });
        //  }
      }));
    }

    return ExpandableNotifier(
        child: Padding(
      padding:
          const EdgeInsets.only(left: 5.0, right: 5.0, top: 10.0, bottom: 10.0),
      child: ScrollOnExpand(
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: <Widget>[
              ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToExpand: true,
                  tapBodyToCollapse: true,
                  hasIcon: false,
                ),
                header: Container(
                  color: Theme.of(context).primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        ExpandableIcon(
                          theme: const ExpandableThemeData(
                            expandIcon: Icons.arrow_right,
                            collapseIcon: Icons.arrow_drop_down,
                            iconColor: Colors.white,
                            iconSize: 28.0,
                            iconRotationAngle: math.pi / 2,
                            iconPadding: EdgeInsets.only(right: 5),
                            //   hasIcon: false,
                          ),
                        ),
                        Expanded(
                          child: Text("Training Days",
                              style: Theme.of(context).textTheme.headline6
                              // .copyWith(color: Colors.white),
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
                expanded: buildList(),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class MatchDay extends StatefulWidget {
  @override
  _MatchDayState createState() => _MatchDayState();
}

class _MatchDayState extends State<MatchDay> {
  MatchService _matchService = MatchService();
  final training = [
    {
      "date": "2020-08-08",
      "meet_time": "06:00 PM",
      "start_time": "6:30 PM",
      "available": 10,
      "not_available": 4,
      "location": "Hauptplatz",
      "opponent": "FIFA FC"
    },
    {
      "date": "2020-08-12",
      "meet_time": "06:00 PM",
      "start_time": "6:30 PM",
      "available": 9,
      "not_available": 6,
      "location": "Herrliberg",
      "opponent": "FC Herrliberg 2"
    },
    {
      "date": "2020-08-16",
      "meet_time": "06:00 PM",
      "start_time": "6:30 PM",
      "available": 12,
      "not_available": 3,
      "location": "Herrliberg",
      "opponent": "FC Herrliberg 1"
    },
    {
      "date": "2020-08-28",
      "meet_time": "06:00 PM",
      "start_time": "6:30 PM",
      "available": 13,
      "not_available": 3,
      "location": "Mellingen",
      "opponent": "FC Mellingen"
    }
  ];
  @override
  Widget build(BuildContext context) {
    buildList() {
      return Container(child: FutureBuilder(
          //  future: _matchService.fetchallmatches(),
          builder: (BuildContext context, snapshot) {
        // if (snapshot.data == null) {
        //   return Center(child: CircularProgressIndicator());
        // } else {
        //   return snapshot.data.isEmpty
        //       ? Center(
        //           child: Padding(
        //           padding: const EdgeInsets.all(10.0),
        //           child: Text('No Match'),
        //         ))
        //       :
        return ListView.builder(
            //  itemCount: snapshot.data.length,
            itemCount: training.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                    left: 5.0, right: 5.0, top: 10.0, bottom: 10.0),
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
                                  left: 10.0, top: 10.0, bottom: 10.0),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      // width:
                                      //     MediaQuery.of(context)
                                      //             .size
                                      //             .width *
                                      //         0.85,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Row(children: <Widget>[
                                            Text('Match Day - ',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16.0,
                                                )),
                                            Text(
                                              // snapshot.data[index]
                                              //         .date ??
                                              //     '',
                                              training[index]['date'],
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1,
                                            ),
                                          ]),
                                          SizedBox(width: 5.0),
                                          Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.edit,
                                                size: 20.0,
                                                color: Theme.of(context)
                                                    .accentColor,
                                              ),
                                              SizedBox(width: 5.0),
                                              Text(
                                                'Edit',
                                                style: TextStyle(
                                                    fontSize: 16.0,
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // width:
                                      //     MediaQuery.of(context)
                                      //             .size
                                      //             .width *
                                      //         0.85,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Row(children: <Widget>[
                                            Text(
                                              'Meet Time - ',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              // '06:00 PM',
                                              training[index]['meet_time'],
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1,
                                            ),
                                          ]),
                                          Row(children: <Widget>[
                                            Text('Start Time - ',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16.0,
                                                )),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5.0),
                                              child: Text(
                                                // '06:30 PM',
                                                training[index]['start_time'],
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1,
                                              ),
                                            ),
                                          ]),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // width:
                                      //     MediaQuery.of(context)
                                      //             .size
                                      //             .width *
                                      //         0.85,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Row(children: <Widget>[
                                            Container(
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.people,
                                                    color: Theme.of(context)
                                                        .accentColor,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10.0),
                                                    child: Text(
                                                      // '16'
                                                      training[index]
                                                              ['available']
                                                          .toString(),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10.0),
                                                    child: Text('Available',
                                                        style: TextStyle(
                                                          color:
                                                              Theme.of(context)
                                                                  .accentColor,
                                                          fontSize: 16.0,
                                                        )),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ]),
                                          SizedBox(width: 5.0),
                                          Container(
                                            child: Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.people,
                                                  color: Theme.of(context)
                                                      .accentColor,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10.0),
                                                  child: Text(
                                                    // '2'
                                                    training[index]
                                                            ['not_available']
                                                        .toString(),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10.0),
                                                  child: Text('Not Available',
                                                      style: TextStyle(
                                                        color: Colors.red,
                                                        fontSize: 16.0,
                                                      )),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // width:
                                      //     MediaQuery.of(context)
                                      //             .size
                                      //             .width *
                                      //         0.85,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            child: Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.place,
                                                  color: Theme.of(context)
                                                      .accentColor,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10.0),
                                                  child: Text(
                                                      // snapshot
                                                      //         .data[
                                                      //             index]
                                                      //         .location ??
                                                      //     'No location',
                                                      training[index]
                                                          ['location'],
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText1),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 5.0),
                                          Row(children: <Widget>[
                                            Container(
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.people,
                                                    color: Theme.of(context)
                                                        .accentColor,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10.0),
                                                    child: Text(
                                                        // snapshot.data[index].opponent ??
                                                        //     'No Opponent',
                                                        training[index]
                                                            ['opponent'],
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyText1),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ]),
                                        ],
                                      ),
                                    ),
                                  ]),
                            )
                          ]),
                    ),
                  ),
                ),
              );
            });
        //  }
      }));
    }

    return ExpandableNotifier(
        child: Padding(
      padding:
          const EdgeInsets.only(left: 5.0, right: 5.0, top: 10.0, bottom: 10.0),
      child: ScrollOnExpand(
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: <Widget>[
              ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToExpand: true,
                  tapBodyToCollapse: true,
                  hasIcon: false,
                ),
                header: Container(
                  color: Theme.of(context).primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        ExpandableIcon(
                          theme: const ExpandableThemeData(
                            expandIcon: Icons.arrow_right,
                            collapseIcon: Icons.arrow_drop_down,
                            iconColor: Colors.white,
                            iconSize: 28.0,
                            iconRotationAngle: math.pi / 2,
                            iconPadding: EdgeInsets.only(right: 5),
                            hasIcon: false,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Match Days",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                expanded: buildList(),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

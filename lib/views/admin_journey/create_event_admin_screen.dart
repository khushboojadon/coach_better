import 'package:coach_better/Routes/routing_constants.dart';
import 'package:flutter/material.dart';

class CreateEventAdmin extends StatefulWidget {
  @override
  _CreateEventAdminState createState() => _CreateEventAdminState();
}

class _CreateEventAdminState extends State<CreateEventAdmin> {
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
              child: Text(
                'Create Event Admin ',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            SizedBox(height: 20),
            Column(
              children: <Widget>[
                Text(
                  'Create an event and let your',
                  style: Theme.of(context).textTheme.subtitle2,
                  softWrap: true,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    'team know',
                    style: Theme.of(context).textTheme.subtitle2,
                    softWrap: true,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.20,
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
                          SizedBox(height: 10),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 14.0, bottom: 10.0),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 5),
                                  Text(
                                    'Training Day',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                  Row(children: <Widget>[
                                    Icon(Icons.place,
                                        color: Theme.of(context).accentColor),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        'Previous Training Place',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      ),
                                    ),
                                  ]),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.85,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Row(children: <Widget>[
                                          Icon(Icons.event,
                                              color: Theme.of(context)
                                                  .accentColor),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0),
                                            child: Text(
                                              '10',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0),
                                            child: Text(
                                              'Days',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1,
                                            ),
                                          ),
                                        ]),
                                        RaisedButton(
                                          shape: new RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      4.0),
                                              side: BorderSide(
                                                  color: Colors.white60)),
                                          onPressed: () {
                                            Navigator.pushNamed(context,
                                                TrainingDayAdminViewRoute);
                                          },
                                          color: Color(0xFF3ba374),
                                          child: Text(
                                            'ADD TRAINING DAY',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6,
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
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.20,
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
                          SizedBox(height: 10),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 14.0, bottom: 10.0),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 5),
                                  Text(
                                    'Game Day',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                  Row(children: <Widget>[
                                    Icon(Icons.place,
                                        color: Theme.of(context).accentColor),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        'Previous Game Location',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      ),
                                    ),
                                  ]),
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
                                              'Previous Opponent',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1,
                                            ),
                                          ),
                                        ]),
                                        RaisedButton(
                                          shape: new RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      4.0),
                                              side: BorderSide(
                                                  color: Colors.white60)),
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, GameDayAdminViewRoute);
                                          },
                                          color: Color(0xFF3ba374),
                                          child: Text(
                                            'ADD GAME DAY',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6,
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
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.20,
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
                          SizedBox(height: 10),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 15.0, bottom: 10.0),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 5),
                                  Text(
                                    'Team Event',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                  Row(children: <Widget>[
                                    Icon(Icons.place,
                                        color: Theme.of(context).accentColor),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        'Previous Event Name',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      ),
                                    ),
                                  ]),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.85,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Row(children: <Widget>[
                                          Icon(Icons.place,
                                              color: Theme.of(context)
                                                  .accentColor),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0),
                                            child: Text(
                                              'Previous Location',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1,
                                            ),
                                          ),
                                        ]),
                                        RaisedButton(
                                          shape: new RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      4.0),
                                              side: BorderSide(
                                                  color: Colors.white60)),
                                          onPressed: () {
                                            Navigator.pushNamed(context,
                                                NewEventAdminViewRoute);
                                          },
                                          color: Theme.of(context).accentColor,
                                          child: Text(
                                            'ADD EVENT',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6,
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
          ]),
        ),
      ),
    );
  }
}

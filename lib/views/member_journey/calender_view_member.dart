import 'package:flutter/material.dart';

class CalenderViewMember extends StatefulWidget {
  @override
  _CalenderViewMemberState createState() => _CalenderViewMemberState();
}

class _CalenderViewMemberState extends State<CalenderViewMember> {
  bool isChecked = false;
  bool checked = true;
  final List<Map<dynamic, dynamic>> events = [
    {
      "date": "17 April - Tomorrow",
      "events": "Training Day",
      "Meet Time": "Meet Time : 6:00 pm",
      "Start Time": "Start Time : 6:30 pm",
      "Available": "Avaialble 14",
      "Not Available": "Not Available 6"
    },
    {"date": "18 April - Saturday", "events": "No events"},
    {"date": "19 April - Tomorrow", "events": "No events"},
    {"date": "20 April - Tomorrow", "events": "No events"},
    {"date": "21 April - Tomorrow", "events": "No events"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'CalenderViewMember',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      // drawer: MemberDrawerScreen(),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'January 2020',
                    style: Theme.of(context).textTheme.headline5,
                    softWrap: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Icon(
                      Icons.people,
                      size: 30.0,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 25.0, top: 10.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Checkbox(
                          value: checked,
                          onChanged: (bool value) {
                            setState(() {
                              checked = value;
                            });
                          },
                        ),
                        Text(
                          'Calender View Month',
                          style: Theme.of(context).textTheme.subtitle1,
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Checkbox(
                          value: isChecked,
                          onChanged: (bool value) {
                            setState(() {
                              isChecked = value;
                            });
                          },
                        ),
                        Text(
                          'List View',
                          style: Theme.of(context).textTheme.subtitle1,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                  child: Card(
                    elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "17 April - Tomorrow",
                                  // style: Theme.of(context).textTheme.body1,
                                ),
                                Icon(
                                  Icons.add,
                                  color: Theme.of(context).accentColor,
                                )
                              ],
                            ),
                            subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Divider(
                                    thickness: 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text('Training Day'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text('Meet Time - 6:00 pm'),
                                        Text('Start Time - 6:00 pm')
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text('Available - 16'),
                                        Text('Not Available - 4')
                                      ],
                                    ),
                                  ),
                                  // Divider(
                                  //   thickness: 1,
                                  // ),
                                ]),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                  child: Card(
                    elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "18 April - Saturday",
                                  // style: Theme.of(context).textTheme.body1,
                                ),
                                Icon(
                                  Icons.add,
                                  color: Theme.of(context).accentColor,
                                )
                              ],
                            ),
                            subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Divider(
                                    thickness: 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text('No Event'),
                                  ),
                                  // Divider(
                                  //     thickness: 1,
                                  //   ),
                                ]),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                  child: Card(
                    elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "19 April - Sunday",
                                ),
                                Icon(
                                  Icons.add,
                                  color: Theme.of(context).accentColor,
                                )
                              ],
                            ),
                            subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Divider(
                                    thickness: 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text('No Event'),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                  child: Card(
                    elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "20 April - Monday",
                                ),
                                Icon(
                                  Icons.add,
                                  color: Theme.of(context).accentColor,
                                )
                              ],
                            ),
                            subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Divider(
                                    thickness: 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text('Match Day'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text('Meet Time - 6:00 pm'),
                                        Text('Start Time - 6:00 pm')
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text('Available - 14'),
                                        Text('Not Available - 6')
                                      ],
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                  child: Card(
                    elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "21 April - Tuesday",
                                ),
                                Icon(
                                  Icons.add,
                                  color: Theme.of(context).accentColor,
                                )
                              ],
                            ),
                            subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Divider(
                                    thickness: 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text('No Event'),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

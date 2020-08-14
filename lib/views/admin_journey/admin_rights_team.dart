import 'package:coach_better/services/staff_service.dart';
import 'package:coach_better/widget/drawer.dart';
import 'package:flutter/material.dart';

class AdminRightTeams extends StatefulWidget {
  @override
  _AdminRightTeamsState createState() => _AdminRightTeamsState();
}

class _AdminRightTeamsState extends State<AdminRightTeams> {
  final List<Map<dynamic, dynamic>> people = [
    {
      "name": "Advika",
      "Status": "Registered",
      "img":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
      "staff": true,
      "player": false
    },
    {
      "name": "Aarnav",
      "Status": "Registered",
      "staff": false,
      "player": true,
      "img":
          "https://images.unsplash.com/photo-1541647376583-8934aaf3448a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80"
    },
    {
      "name": "Anirudh",
      "Status": "Registered",
      "staff": true,
      "player": false,
      "img":
          "https://images.unsplash.com/photo-1549068106-b024baf5062d?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"
    },
    {
      "name": "Ayaan",
      "Status": "Not Registered",
      "staff": true,
      "player": true,
      "img":
          "https://images.unsplash.com/photo-1547624643-3bf761b09502?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80"
    },
    {
      "name": "Daksh",
      "Status": "Not Registered",
      "staff": false,
      "player": true,
      "img":
          "https://images.unsplash.com/photo-1500048993953-d23a436266cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1649&q=80"
    }
  ];

  StaffService _staffService = StaffService();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //   _staffService.fetchallstaff();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //   backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Admin Rights Team',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        drawer: DrawerScreen(),
        body: SafeArea(
                  child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 10.0, top: 30.0),
                  child: Card(
                    elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Icon(
                              Icons.person,
                              color: Theme.of(context).accentColor,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                'Players Name',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40.0),
                              child: Text(
                                'Staff',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ),
                            Text(
                              'Player',
                              style: Theme.of(context).textTheme.bodyText2,
                            )
                          ]),
                    ),
                  ),
                ),
                listView(context),
              ],
            ),
          ),
        ));
  }

  Widget listView(BuildContext context) {
    return FutureBuilder(
      future: _staffService.fetchallstaff(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else {
          return snapshot.data.data.isEmpty
              ? Center(
                  child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('No players & Staff'),
                ))
              : ListView.builder(
                  shrinkWrap: true,
                  itemCount: snapshot.data.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      margin:
                          EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 10.0),
                                child: Image.asset(
                                  'images/shirt.png',
                                  width: 30,
                                  height: 30,
                                )),
                          ),
                          SizedBox(width: 10.0),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 10.0, bottom: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    snapshot.data.data[index].firstName ??
                                        '' +
                                            snapshot
                                                .data.data[index].lastName ??
                                        '',
                                  ),
                                  Text(snapshot.data.data[index].position ?? '')
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Checkbox(
                                value: true,
                                onChanged: (val) {
                                  setState(() {
                                    // if (people[index]['staff'] == true) {
                                    //   people[index]['staff'] = false;
                                    // } else {
                                    //   people[index]['staff'] = true;
                                    // }
                                  });
                                }),
                          ),
                          Expanded(
                            flex: 1,
                            child: Checkbox(
                                value: false,
                                onChanged: (val) {
                                  setState(() {
                                    // if (people[index]['staff'] == true) {
                                    //   people[index]['staff'] = false;
                                    // } else {
                                    //   people[index]['staff'] = true;
                                    // }
                                  });
                                }),
                          ),
                        ],
                      ),
                    );
                  },
                );
        }
      },
    );
    // return Expanded(
    // child: ListView.builder(
    //     itemCount: this.people.length,
    //     itemBuilder: (BuildContext context, index) {
    //       return Padding(
    //         padding:
    //             const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
    //         child: Card(
    //           elevation: 5.0,
    //           child: Padding(
    //             padding: const EdgeInsets.all(10.0),
    //             child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: <Widget>[
    //                   CircleAvatar(
    //                       radius: 30.0,
    //                       backgroundImage:
    //                           NetworkImage(people[index]['img'])),
    //                   Column(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: <Widget>[
    //                         Container(
    //                           width: 120,
    //                           child: Text(
    //                             people[index]['name'],
    //                              style: Theme.of(context).textTheme.bodyText1,
    //                           ),
    //                         ),
    //                         Container(
    //                           width: 120,
    //                           child: Padding(
    //                             padding: const EdgeInsets.only(top: 5.0),
    //                             child: Text(people[index]['Status'], style: Theme.of(context).textTheme.bodyText1),
    //                           ),
    //                         )
    //                       ]),
    //                   Checkbox(
    //                       value: people[index]['staff'],
    //                       onChanged: (val) {
    //                         setState(() {
    //                           if (people[index]['staff'] == true) {
    //                             people[index]['staff'] = false;
    //                           } else {
    //                             people[index]['staff'] = true;
    //                           }
    //                         });
    //                       }),
    //                   Checkbox(
    //                       value: people[index]['player'],
    //                       onChanged: (value) {
    //                         setState(() {
    //                           if (people[index]['player'] == true) {
    //                             people[index]['player'] = false;
    //                           } else {
    //                             people[index]['player'] = true;
    //                           }
    //                         });
    //                       })
    //                 ]),
    //           ),
    //         ),
    //       );
    //     }),
    //  );
  }
}
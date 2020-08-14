import 'package:flutter/material.dart';

class YourTeamMemberView extends StatefulWidget {
  @override
  _YourTeamMemberViewState createState() => _YourTeamMemberViewState();
}

class _YourTeamMemberViewState extends State<YourTeamMemberView> {
  final List<Map<dynamic, dynamic>> people = [
    {
      "name": "Advika",
      "Status": "Registered",
      "img":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    },
    {
      "name": "Aarnav",
      "Status": "Registered",
      "img":
          "https://images.unsplash.com/photo-1541647376583-8934aaf3448a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80"
    },
    {
      "name": "Anirudh",
      "Status": "Registered",
      "img":
          "https://images.unsplash.com/photo-1549068106-b024baf5062d?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"
    },
    {
      "name": "Ayaan",
      "Status": "Not Registered",
      "img":
          "https://images.unsplash.com/photo-1547624643-3bf761b09502?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80"
    },
    {
      "name": "Daksh",
      "Status": "Not Registered",
      "img":
          "https://images.unsplash.com/photo-1500048993953-d23a436266cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1649&q=80"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Team Member"),
      ),
      body: SafeArea(
              child: Column(children: <Widget>[
          SizedBox(
            height: 50.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.people,
                size: 30.0,
                color: Theme.of(context).accentColor,
              ),
              SizedBox(width: 30),
              Text(
                "Team List",
                style: Theme.of(context).textTheme.subtitle2,
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
                    child: Card(
                      elevation: 5.0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SizedBox(width:10.0),
                            CircleAvatar(
                                radius: 30.0,
                                backgroundImage:
                                    NetworkImage(people[index]['img'])),
                                    SizedBox(width:40.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(people[index]['name'], style: Theme.of(context).textTheme.bodyText1,),
                                Text(people[index]['Status'], style: Theme.of(context).textTheme.bodyText1,),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          )
        ]),
      ),
    );
  }
}

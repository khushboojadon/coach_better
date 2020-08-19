import 'package:coach_better/views/member_journey/create_member_profile.dart';
import 'package:flutter/material.dart';

class InviteMember extends StatefulWidget {
  @override
  State<InviteMember> createState() {
    return new AppState();
  }
}

class AppState extends State<InviteMember> {
  List<String> Names = [
    'Abhishek',
    'John',
    'Robert',
    'Shyam',
    'Sita',
    'Gita',
    'Nitish'
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Find your name"),
      ),
      body: new Container(
        child: new ListView.builder(
          reverse: false,
          itemBuilder: (_, int index) => EachList(this.Names[index]),
          itemCount: this.Names.length,
        ),
      ),
    );
  }
}

class EachList extends StatelessWidget {
  final String name;
  EachList(this.name);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CreateProfile()));
      },
      child: new Card(
        child: new Container(
          padding: EdgeInsets.all(8.0),
          child: new Row(
            children: <Widget>[
              new CircleAvatar(
                child: new Text(name[0]),
              ),
              new Padding(padding: EdgeInsets.only(right: 10.0)),
              new Text(
                name,
                style: TextStyle(fontSize: 20.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}

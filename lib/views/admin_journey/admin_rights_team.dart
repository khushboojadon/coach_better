import 'package:coach_better/ViewModels/admin_rights_view_model.dart';
import 'package:coach_better/models/staff_model.dart';
import 'package:coach_better/views/base_view.dart';
import 'package:coach_better/widget/drawer.dart';
import 'package:flutter/material.dart';

class AdminRightTeams extends StatefulWidget {
  @override
  _AdminRightTeamsState createState() => _AdminRightTeamsState();
}

class _AdminRightTeamsState extends State<AdminRightTeams> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Admin Rights Team',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        drawer: DrawerScreen(),
        body: BaseView<AdminRightsViewModel>(
          onModelReady: (model) => model.getStaffs(),
          builder: (context, model, child) => SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 30.0),
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
                  model.staff == null
                      ? CircularProgressIndicator()
                      : model.staff.data.isEmpty
                          ? Center(child: Text('No Staff'))
                          : listView(model.staff),
                ],
              ),
            ),
          ),
        ));
  }

  Widget listView(Staff staff) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: staff.data.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
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
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        staff.data[index].firstName ??
                            '' + staff.data[index].lastName ??
                            '',
                      ),
                      Text(staff.data[index].position ?? '')
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
}

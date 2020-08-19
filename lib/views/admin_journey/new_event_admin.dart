import 'package:coach_better/Routes/routing_constants.dart';
import 'package:coach_better/widget/button.dart';
import 'package:flutter/material.dart';

class NewEventAdmin extends StatefulWidget {
  NewEventAdminState createState() => NewEventAdminState();
}

class NewEventAdminState extends State<NewEventAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor:Colors.grey,
        appBar: AppBar(
          title: Column(
            children: <Widget>[
              Icon(Icons.event, size: 30.0, color: Colors.white),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text('New Event Admin',
                    style: Theme.of(context).textTheme.headline6),
              ),
            ],
          ),
        ),
        // navigation drawer
        //   drawer: DrawerScreen(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
                  child: Container(
                    child: TextFormField(
                      style: Theme.of(context).textTheme.bodyText1,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        labelText: "Event Name",

                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 5.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 2.0),
                        ),
                        //  hintText: 'Event Name',
                        hintStyle: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                  child: Row(children: <Widget>[
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: TextFormField(
                          style: Theme.of(context).textTheme.bodyText1,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            labelText: "Start Date",

                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                  width: 5.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                  width: 2.0),
                            ),
                            //  hintText: 'Start Date',
                            hintStyle: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: TextFormField(
                          style: Theme.of(context).textTheme.bodyText1,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            labelText: "End Date",

                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                  width: 5.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                  width: 2.0),
                            ),
                            //   hintText: 'End Date',
                            hintStyle: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                  child: Row(children: <Widget>[
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: TextFormField(
                          style: Theme.of(context).textTheme.bodyText1,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            labelText: "Start Time",

                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                  width: 5.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                  width: 2.0),
                            ),
                            //  hintText: 'Start Time',
                            hintStyle: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: TextFormField(
                          style: Theme.of(context).textTheme.bodyText1,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            labelText: "End Time",

                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                  width: 5.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                  width: 2.0),
                            ),
                            // hintText: 'End Time',
                            hintStyle: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                  child: Container(
                    child: TextFormField(
                      style: Theme.of(context).textTheme.bodyText1,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Location",

                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 5.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 2.0),
                        ),
                        //  hintText: 'Location',
                        hintStyle: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                  child: Container(
                    child: TextFormField(
                      style: Theme.of(context).textTheme.bodyText1,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Description",

                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 5.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 2.0),
                        ),
                        //  hintText: 'Description',
                        hintStyle: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 15.0),
                      child: Icon(
                        Icons.people,
                        size: 30.0,
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 20.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.75,
                        height: 55.0,
                        child: FlatButton.icon(
                          icon: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20.0,
                          ),
                          label: Text(
                            'Create Event',
                            style: Theme.of(context).textTheme.button,
                          ),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(4.0),
                              side: BorderSide(color: Colors.white60)),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text(
                                      'Successfully added the event',
                                      style: TextStyle(
                                          fontSize: 16.0, color: Colors.black),
                                    ),
                                    content: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          // RaisedButton(
                                          //   onPressed: () {
                                          //     Navigator.pop(context);
                                          //   },
                                          //   child: Text('OK'),
                                          // )
                                          Button(
                                            'Ok',
                                            onPressed: () {
                                              Navigator.pushNamedAndRemoveUntil(
                                                  context,
                                                  CreateEventAdminViewRoute,
                                                  (route) => false);
                                            },
                                          )
                                        ]),
                                  );
                                });
                          },
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ));
  }
}

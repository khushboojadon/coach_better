import 'package:coach_better/Routes/routing_constants.dart';
import 'package:coach_better/ViewModels/base_model.dart';
import 'package:coach_better/ViewModels/players_view_model.dart';
import 'package:coach_better/models/players_model.dart';
import 'package:coach_better/views/base_view.dart';
import 'package:flutter/material.dart';

class AddTeamMember extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Add Team Member',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 20.0, bottom: 20.0),
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
                        Container(
                          margin: EdgeInsets.only(
                              left: 14.0, top: 10.0, bottom: 10.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Text(
                                    'TEAM',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                ),
                                Text(
                                  'Type in the name of the team member',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                Text(
                                  'you want to add to your team',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                Container(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        RaisedButton(
                                          shape: new RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      4.0),
                                              side: BorderSide(
                                                  color: Colors.white)),
                                          onPressed: () {},
                                          color: Theme.of(context).accentColor,
                                          child: Text(
                                            'SEND INVITATION',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6,
                                          ),
                                        ),
                                        RaisedButton(
                                          shape: new RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      4.0),
                                              side: BorderSide(
                                                  color: Colors.white)),
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, AddPlayerViewRoute);
                                          },
                                          color: Theme.of(context).accentColor,
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
                        ),
                      ]),
                ),
              ),
            ),
            BaseView<PlayersViewModel>(
                onModelReady: (model) => model.getPlayers(),
                builder: (context, model, child) =>
                    model.state == ViewState.Busy
                        ? Center(child: CircularProgressIndicator())
                        : model.player?.data == null
                            ? Center(child: CircularProgressIndicator())
                            : playersCard(model.player))
          ],
        ),
      ),
    );
  }

  Widget playersCard(Players players) {
    return Expanded(
      child: ListView.builder(
          itemCount: players.data.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Card(
                  elevation: 5.0,
                  child: new Container(
                    padding: EdgeInsets.all(8.0),
                    child: new Row(
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
                              players.data[index].id.toString(),
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
                                  players.data[index].firstName ??
                                      "" + " " + players.data[index].lastName,
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, top: 5, bottom: 10.0),
                                child: Text(
                                  players.data[index].position,
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                            ],
                          ),
                        ]),
                      ],
                    ),
                  ),
                ));
          }),
    );
  }
}

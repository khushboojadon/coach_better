import 'package:coach_better/Routes/routing_constants.dart';
import 'package:coach_better/widget/button.dart';
import 'package:flutter/material.dart';

class TrainingDayAdmin extends StatefulWidget {
  TrainingDayAdminState createState() => TrainingDayAdminState();
}

class TrainingDayAdminState extends State<TrainingDayAdmin> {
  List<MultiSelectDialogItem<int>> multiItem = List();
  final valuestopopulate = {
    1: "EveryDay",
    2: "Monday",
    3: "Tuesday",
    4: "Wednesday",
    5: "Thrusday",
    6: "Friday",
    7: "Saturday",
    8: "Sunday"
  };
  void populateMultiselect() {
    for (int v in valuestopopulate.keys) {
      multiItem.add(MultiSelectDialogItem(v, valuestopopulate[v]));
    }
  }

  void _showMultiSelect(BuildContext context) async {
    multiItem = [];
    populateMultiselect();
    final items = multiItem;
    final selectedValues = await showDialog<Set<int>>(
      context: context,
      builder: (BuildContext context) {
        return MultiSelectDialog(
          items: items,
          initialSelectedValues: [2, 4].toSet(),
        );
      },
    );
    print(selectedValues);
    getvaluefromkey(selectedValues);
  }
// DateTime selectedDate = DateTime.now();
//   Future<Null> _selectDate(BuildContext context) async {
//     final DateTime picked = await showDatePicker(
//         context: context,
//         initialDate: selectedDate,
//         firstDate: DateTime(2015, 8),
//         lastDate: DateTime(2101));
//     if (picked != null && picked != selectedDate)
//       setState(() {
//         selectedDate = picked;
//         String formattedDate = DateFormat('yyyy-MM-dd').format(selectedDate);
//         print(formattedDate);
//       });
//   }

  TimeOfDay time;
  _pickTime() async {
    time = TimeOfDay.now();
    TimeOfDay t = await showTimePicker(context: context, initialTime: time);
    if (t != null)
      setState(() {
        time = t;

        print(time);
      });
  }

  void getvaluefromkey(Set selection) {
    if (selection != null) {
      for (int x in selection.toList()) {
        print(valuestopopulate[x]);
      }
    }
  }

  TextEditingController _firstTraining = TextEditingController();
  TextEditingController _lastTraining = TextEditingController();
  TextEditingController _meetTime = TextEditingController();
  TextEditingController _startTime = TextEditingController();
  TextEditingController _endTime = TextEditingController();
  TextEditingController _place = TextEditingController();
  TextEditingController _type = TextEditingController();
  final _trainingformKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Column(
            children: <Widget>[
              Icon(Icons.event, size: 30.0, color: Colors.white),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text('Training Day Admin',
                    style: Theme.of(context).textTheme.headline6),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Form(
                key: _trainingformKey,
                child: Column(children: <Widget>[
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Row(children: <Widget>[
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: TextFormField(
                            controller: _firstTraining,
                            validator: (_firstTraining) {
                              if (_firstTraining.isEmpty)
                                return "Please enter FirstTraining";
                              else
                                return "null";
                            },
                            style: Theme.of(context).textTheme.bodyText1,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: 'First Training Date',
                              labelStyle: Theme.of(context).textTheme.bodyText1,
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
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: TextFormField(
                            controller: _lastTraining,
                            validator: (_lastTraining) {
                              if (_lastTraining.isEmpty)
                                return "Please enter LastTraining";
                              else
                                return "null";
                            },
                            style: Theme.of(context).textTheme.bodyText1,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: "Last Training Date",
                              labelStyle: Theme.of(context).textTheme.bodyText1,
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
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 55.0,
                      child: FlatButton(
                        onPressed: () {
                          _showMultiSelect(context);
                          //_pickTime();
                        },
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          side: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 2.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Select Training Days',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding:
                  //       const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                  //   child: Container(
                  //     width: MediaQuery.of(context).size.width,
                  //     height: 55.0,
                  //     child: FlatButton(
                  //       onPressed: () {
                  //         _selectDate(context);
                  //       },
                  //       color: Colors.white,
                  //       shape: new RoundedRectangleBorder(
                  //         borderRadius: new BorderRadius.circular(5.0),
                  //         side: BorderSide(
                  //             color: Theme.of(context).primaryColor, width: 2.0),
                  //       ),
                  //       child: Padding(
                  //         padding: const EdgeInsets.only(top: 16.0),
                  //         child: Align(
                  //           alignment: Alignment.topLeft,
                  //           child: Text(
                  //             'Select Date',
                  //             style: Theme.of(context).textTheme.bodyText1,
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Container(
                      //    height: 55.0,
                      child: TextFormField(
                        controller: _meetTime,
                        style: Theme.of(context).textTheme.bodyText1,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: 'Meeting Time',
                          labelStyle: Theme.of(context).textTheme.bodyText1,
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
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Row(children: <Widget>[
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: TextFormField(
                            controller: _startTime,
                            style: Theme.of(context).textTheme.bodyText1,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: 'Start Time',
                              labelStyle: Theme.of(context).textTheme.bodyText1,
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
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: TextFormField(
                            controller: _endTime,
                            style: Theme.of(context).textTheme.bodyText1,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: 'End Time',
                              labelStyle: Theme.of(context).textTheme.bodyText1,
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
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: TextFormField(
                                style: Theme.of(context).textTheme.bodyText1,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  labelText: 'Place',
                                  labelStyle:
                                      Theme.of(context).textTheme.bodyText1,
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
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: TextFormField(
                                controller: _place,
                                style: Theme.of(context).textTheme.bodyText1,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  labelText: 'Home/Away',
                                  labelStyle:
                                      Theme.of(context).textTheme.bodyText1,
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
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Container(
                      child: TextFormField(
                        controller: _type,
                        validator: (_type) {
                          if (_type.isEmpty)
                            return "Please enter Type";
                          else
                            return "null";
                        },
                        style: Theme.of(context).textTheme.bodyText1,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          labelText: 'Training Type',
                          labelStyle: Theme.of(context).textTheme.bodyText1,
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
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Icon(
                              Icons.people,
                              size: 30.0,
                              color: Theme.of(context).accentColor,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 5,
                              top: 20.0,
                            ),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.80,
                              height: 55.0,
                              child: FlatButton.icon(
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 25.0,
                                ),
                                label: Text(
                                  'Create Event',
                                  style: Theme.of(context).textTheme.button,
                                ),
                                shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(4.0),
                                    side: BorderSide(color: Colors.white60)),
                                onPressed: () {
                                  if (_trainingformKey.currentState
                                      .validate()) {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: Text(
                                              'Successfully added the training',
                                              style: TextStyle(
                                                  fontSize: 16.0,
                                                  color: Colors.black),
                                            ),
                                            content: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Button(
                                                    'Ok',
                                                    onPressed: () {
                                                      Navigator
                                                          .pushNamedAndRemoveUntil(
                                                              context,
                                                              CreateEventAdminViewRoute,
                                                              (route) => false);
                                                    },
                                                  )
                                                ]),
                                          );
                                        });
                                  }
                                  ;
                                },
                                color: Theme.of(context).accentColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ));
  }
}

class MultiSelectDialogItem<V> {
  const MultiSelectDialogItem(this.value, this.label);
  final V value;
  final String label;
}

class MultiSelectDialog<V> extends StatefulWidget {
  MultiSelectDialog({Key key, this.items, this.initialSelectedValues})
      : super(key: key);
  final List<MultiSelectDialogItem<V>> items;
  final Set<V> initialSelectedValues;
  @override
  State<StatefulWidget> createState() => _MultiSelectDialogState<V>();
}

class _MultiSelectDialogState<V> extends State<MultiSelectDialog<V>> {
  final _selectedValues = Set<V>();
  void initState() {
    super.initState();
    if (widget.initialSelectedValues != null) {
      _selectedValues.addAll(widget.initialSelectedValues);
    }
  }

  void _onItemCheckedChange(V itemValue, bool checked) {
    setState(() {
      if (checked) {
        _selectedValues.add(itemValue);
      } else {
        _selectedValues.remove(itemValue);
      }
    });
  }

  void _onCancelTap() {
    Navigator.pop(context);
  }

  void _onSubmitTap() {
    Navigator.pop(context, _selectedValues);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.only(top: 20.0),
      content: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.7,
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            Text(
              'Select Training Days',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            SizedBox(height: 10),
            ListTileTheme(
              contentPadding: EdgeInsets.fromLTRB(14.0, 0.0, 24.0, 0.0),
              child: ListBody(
                children: widget.items.map(_buildItem).toList(),
              ),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        FlatButton(
          child: Text(
            'CANCEL',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          onPressed: _onCancelTap,
        ),
        FlatButton(
          child: Text(
            'CONFIRM',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          onPressed: _onSubmitTap,
        )
      ],
    );
  }

  Widget _buildItem(MultiSelectDialogItem<V> item) {
    final checked = _selectedValues.contains(item.value);
    return CheckboxListTile(
      value: checked,
      title: Text(
        item.label,
        style: Theme.of(context).textTheme.bodyText1,
      ),
      controlAffinity: ListTileControlAffinity.leading,
      onChanged: (checked) => _onItemCheckedChange(item.value, checked),
    );
  }
}

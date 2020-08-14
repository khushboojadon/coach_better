import 'package:coach_better/Routes/routing_constants.dart';

import 'package:coach_better/services/playersService.dart';
import 'package:coach_better/widget/button.dart';
import 'package:coach_better/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddPlayer extends StatefulWidget {
  TrainingDayAdminState createState() => TrainingDayAdminState();
}

class TrainingDayAdminState extends State<AddPlayer> {
  PlayerService _playerService = new PlayerService();
  TextEditingController _firstname = new TextEditingController();
  TextEditingController _lastname = new TextEditingController();
  TextEditingController _phone = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _number = new TextEditingController();

  List<String> _tags = [
    'available',
    'not_available',
    'no_response',
    'injured',
    'yellow_red_card',
    'red_card'
  ];
  List<String> _gender = [
    'male',
    'female',
  ];
  List<String> _foot = ['left', 'right'];
  List<String> _position = ['goalkeeper', 'defender', 'midfield', 'striker'];
  List<String> _subposition = [
    'Goalkeeper - GK',
    'Defender - LB',
    'Midfielder - RW',
    'LW',
    'DM',
    'CM',
    'AM',
    'Stricker - ST'
  ]; // Option 2
  String _selectedTag,
      _selectedgender,
      _selectedposition,
      _selectedsubposition,
      _selectedfoot;
  var img;
  _opencamera(BuildContext context) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    Navigator.of(context).pop();
    this.setState(() {
      img = picture;
    });
  }

  _opengallery(BuildContext context) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    Navigator.of(context).pop();
    this.setState(() {
      img = picture;
    });
  }

  Widget _image() {
    if (img == null) {
      return Container(
        decoration: BoxDecoration(
            border:
                Border.all(color: Theme.of(context).primaryColor, width: 2)),
        width: 150,
        height: 150,
        child: Center(
            child: Text(
          'Upload Profile',
          style: Theme.of(context).textTheme.bodyText1,
        )),
      );
    } else {
      return Container(
        decoration: BoxDecoration(
            border:
                Border.all(color: Theme.of(context).primaryColor, width: 2)),
        child: Image.file(
          img,
          width: 150,
          height: 150,
          fit: BoxFit.cover,
        ),
      );
    }
  }

  Future<void> _showdialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Text(
                'Make a choice!',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          _opengallery(context);
                        },
                        child: Text(
                          'Gallery',
                          style: Theme.of(context).textTheme.bodyText2,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: GestureDetector(
                          onTap: () {
                            _opencamera(context);
                          },
                          child: Text('camera',
                              style: Theme.of(context).textTheme.bodyText2)),
                    )
                  ],
                ),
              ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // AppBar
        appBar: AppBar(
          centerTitle: true,
          title: Column(
            children: <Widget>[
              Icon(Icons.event, size: 30.0, color: Colors.white),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text('Add Player',
                    style: Theme.of(context).textTheme.headline6),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(children: <Widget>[
                SizedBox(height: 40),
                Stack(
                  children: <Widget>[
                    Container(
                      width: 0,
                      height: 0,
                    ),
                    _image(),
                    Positioned(
                      top: 100,
                      left: 100,
                      child: IconButton(
                          onPressed: () {
                            _showdialog(context);
                          },
                          icon: Icon(
                            Icons.add_a_photo,
                          )),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Row(children: <Widget>[
                    // firstname textfield
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        // child: TextFormField(
                        //   controller: _firstname,
                        //   style: Theme.of(context).textTheme.bodyText1,
                        //   decoration: InputDecoration(
                        //     fillColor: Colors.white,
                        //     filled: true,
                        //     labelText: "First Name",
                        //     labelStyle: TextStyle(color: Colors.grey),
                        //     border: OutlineInputBorder(
                        //       borderSide: BorderSide(
                        //           color: Theme.of(context).primaryColor,
                        //           width: 5.0),
                        //     ),
                        //     enabledBorder: OutlineInputBorder(
                        //       borderSide: BorderSide(
                        //           color: Theme.of(context).primaryColor,
                        //           width: 2.0),
                        //     ),
                        //     hintStyle: Theme.of(context).textTheme.bodyText1,
                        //   ),
                        // ),
                        child: UserTextField(
                            textController: _firstname, hintText: 'First Name'),
                      ),
                    ),
                    // lastname textfield
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        // child: TextFormField(
                        //   controller: _lastname,
                        //   style: Theme.of(context).textTheme.bodyText1,
                        //   decoration: InputDecoration(
                        //     fillColor: Colors.white,
                        //     filled: true,
                        //     labelText: "Last Name",
                        //     labelStyle: TextStyle(color: Colors.grey),
                        //     border: OutlineInputBorder(
                        //       borderSide: BorderSide(
                        //           color: Theme.of(context).primaryColor,
                        //           width: 5.0),
                        //     ),
                        //     enabledBorder: OutlineInputBorder(
                        //       borderSide: BorderSide(
                        //           color: Theme.of(context).primaryColor,
                        //           width: 2.0),
                        //     ),
                        //     hintStyle: Theme.of(context).textTheme.bodyText1,
                        //   ),
                        // ),
                        child: UserTextField(
                            textController: _lastname, hintText: 'Last Name'),
                      ),
                    ),
                  ]),
                ),
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Row(children: <Widget>[
                    // firstname textfield
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        // child: TextFormField(
                        //   controller: _number,
                        //   style: Theme.of(context).textTheme.bodyText1,
                        //   decoration: InputDecoration(
                        //     fillColor: Colors.white,
                        //     filled: true,
                        //     labelText: "Shirt Number",
                        //     labelStyle: TextStyle(color: Colors.grey),
                        //     border: OutlineInputBorder(
                        //       borderSide: BorderSide(
                        //           color: Theme.of(context).primaryColor,
                        //           width: 5.0),
                        //     ),
                        //     enabledBorder: OutlineInputBorder(
                        //       borderSide: BorderSide(
                        //           color: Theme.of(context).primaryColor,
                        //           width: 2.0),
                        //     ),
                        //     hintStyle: Theme.of(context).textTheme.bodyText1,
                        //   ),
                        // ),
                        child: UserTextField(
                            textController: _number, hintText: 'Shirt Number'),
                      ),
                    ),
                    // lastname textfield
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        // child: TextFormField(
                        //   controller: _phone,
                        //   style: Theme.of(context).textTheme.bodyText1,
                        //   decoration: InputDecoration(
                        //     fillColor: Colors.white,
                        //     filled: true,
                        //     labelText: "Phone no.",
                        //     labelStyle: TextStyle(color: Colors.grey),
                        //     border: OutlineInputBorder(
                        //       borderSide: BorderSide(
                        //           color: Theme.of(context).primaryColor,
                        //           width: 5.0),
                        //     ),
                        //     enabledBorder: OutlineInputBorder(
                        //       borderSide: BorderSide(
                        //           color: Theme.of(context).primaryColor,
                        //           width: 2.0),
                        //     ),
                        //     hintStyle: Theme.of(context).textTheme.bodyText1,
                        //   ),
                        // ),
                        child: UserTextField(
                            textController: _phone, hintText: 'Phone no.'),
                      ),
                    ),
                  ]),
                ),
                SizedBox(height: 20),
                // number textfield
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  // child: TextFormField(
                  //   controller: _email,
                  //   style: Theme.of(context).textTheme.bodyText1,
                  //   decoration: InputDecoration(
                  //     fillColor: Colors.white,
                  //     filled: true,
                  //     labelText: "Email",
                  //     labelStyle: TextStyle(color: Colors.grey),
                  //     border: OutlineInputBorder(
                  //       borderSide: BorderSide(
                  //           color: Theme.of(context).primaryColor, width: 5.0),
                  //     ),
                  //     enabledBorder: OutlineInputBorder(
                  //       borderSide: BorderSide(
                  //           color: Theme.of(context).primaryColor, width: 2.0),
                  //     ),
                  //     hintStyle: Theme.of(context).textTheme.bodyText1,
                  //   ),
                  // ),
                  child:
                      UserTextField(textController: _email, hintText: 'Email'),
                ),
                SizedBox(height: 20),
                // dropdown list of tag
                Container(
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(4.0),
                      border: Border.all(
                        width: 2,
                        color: Theme.of(context)
                            .primaryColor, //                   <--- border width here
                      ),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButton(
                          hint: Container(
                            child: Text('Tag',
                                style: Theme.of(context).textTheme.bodyText1),
                          ), // Not necessary for Option 1
                          value: _selectedTag,
                          onChanged: (newValue) {
                            setState(() {
                              _selectedTag = newValue;
                              print(_selectedTag);
                            });
                          },
                          items: _tags.map((tag) {
                            return DropdownMenuItem(
                              child: new Text(
                                tag,
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              value: tag,
                            );
                          }).toList(),
                        ),
                      ),
                    )),
                SizedBox(height: 20),
                // dropdown list of gender
                Container(
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(4.0),
                      border: Border.all(
                        width: 2,
                        color: Theme.of(context)
                            .primaryColor, //                   <--- border width here
                      ),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButton(
                          hint: Container(
                            child: Text('Gender',
                                style: Theme.of(context).textTheme.bodyText1),
                          ), // Not necessary for Option 1
                          value: _selectedgender,
                          onChanged: (newValue) {
                            setState(() {
                              _selectedgender = newValue;
                            });
                          },
                          items: _gender.map((gender) {
                            return DropdownMenuItem(
                              child: new Text(
                                gender,
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              value: gender,
                            );
                          }).toList(),
                        ),
                      ),
                    )),
                SizedBox(height: 20),
                // dropdown list of foot
                Container(
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(4.0),
                      border: Border.all(
                        width: 2,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButton(
                          hint: Container(
                            child: Text('Preferred Foot',
                                style: Theme.of(context).textTheme.bodyText1),
                          ),
                          value: _selectedfoot,
                          onChanged: (newValue) {
                            setState(() {
                              _selectedfoot = newValue;
                            });
                          },
                          items: _foot.map((foot) {
                            return DropdownMenuItem(
                              child: new Text(
                                foot,
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              value: foot,
                            );
                          }).toList(),
                        ),
                      ),
                    )),
                SizedBox(height: 20),
                // dropdown list of position
                Container(
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(4.0),
                      border: Border.all(
                        width: 2,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButton(
                          hint: Container(
                            child: Text('Postion',
                                style: Theme.of(context).textTheme.bodyText1),
                          ),
                          value: _selectedposition,
                          onChanged: (newValue) {
                            setState(() {
                              _selectedposition = newValue;
                            });
                          },
                          items: _position.map((position) {
                            return DropdownMenuItem(
                              child: new Text(
                                position,
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              value: position,
                            );
                          }).toList(),
                        ),
                      ),
                    )),
                SizedBox(height: 20),
                // dropdown list of subposition
                Container(
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(4.0),
                      border: Border.all(
                        width: 2,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButton(
                          isExpanded: true,
                          hint: Text('Sub-Position',
                              style: Theme.of(context).textTheme.bodyText1),
                          value: _selectedsubposition,
                          onChanged: (newValue) {
                            setState(() {
                              _selectedsubposition = newValue;
                            });
                          },
                          items: _subposition.map((subposition) {
                            return DropdownMenuItem(
                                child: new Text(
                                  subposition,
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                value: subposition);
                          }).toList(),
                        ),
                      ),
                    )),
                SizedBox(height: 20),
                // save button
                Container(
                  margin:
                      EdgeInsets.only(left: 20.0, right: 20.0, bottom: 40.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 55.0,
                    child: Button(
                      'Save',
                      onPressed: () {
                        _playerService.addplayer(
                            //  widget.teamId,
                          
                            _selectedposition,
                            _selectedsubposition,
                            _firstname.text,
                            _lastname.text,
                            _selectedfoot == "left" ? "l" : "r",
                            int.parse(_number.text),
                            _selectedgender == "male" ? "m" : "f",
                            _selectedTag);
                        Navigator.pushNamed(context, AddTeamMemberViewRoute);
                        // Navigator.push(
                        //     context,
                        //     new MaterialPageRoute(
                        //         builder: (context) => new AddTeamMember(
                        //             // teamId: widget.teamId,
                        //             )));
                      },
                    ),
                    // child: RaisedButton(
                    //   child: Text(
                    //     'Save',
                    //     style: Theme.of(context).textTheme.button,
                    //   ),
                    //   shape: new RoundedRectangleBorder(
                    //       borderRadius: new BorderRadius.circular(4.0),
                    //       side: BorderSide(color: Colors.white60)),
                    //   onPressed: () {
                    //     _playerService.addplayer(
                    //         //  widget.teamId,
                    //         img,
                    //         _selectedposition,
                    //         _selectedsubposition,
                    //         _firstname.text,
                    //         _lastname.text,
                    //         _selectedfoot == "left" ? "l" : "r",
                    //         int.parse(_number.text),
                    //         _selectedgender == "male" ? "m" : "f",
                    //         _selectedTag);
                    //     Navigator.push(
                    //         context,
                    //         new MaterialPageRoute(
                    //             builder: (context) => new AddTeamMember(
                    //                 // teamId: widget.teamId,
                    //                 )));
                    //   },
                    //   color: Theme.of(context).accentColor,
                    // ),
                  ),
                ),
              ]),
            ),
          ),
        ));
  }
}

import 'package:coach_better/Routes/routing_constants.dart';
import 'package:coach_better/ViewModels/base_model.dart';
import 'package:coach_better/ViewModels/players_view_model.dart';
import 'package:coach_better/views/base_view.dart';
import 'package:coach_better/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddPlayer extends StatefulWidget {
  @override
  _AddPlayerState createState() => _AddPlayerState();
}

class _AddPlayerState extends State<AddPlayer> {
  final TextEditingController _firstname = TextEditingController(text: 'abc');

  final TextEditingController _lastname = TextEditingController(text: 'jadon');

  final TextEditingController _phone = TextEditingController(text: '879867586');

  final TextEditingController _email =
      TextEditingController(text: 'khush@gmail.com');

  final TextEditingController _number = TextEditingController(text: '03');
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
        body: BaseView<PlayersViewModel>(
          builder: (context, model, child) => SafeArea(
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
                        // child: Padding(
                        //   padding: const EdgeInsets.only(right: 10.0),
                        //   child: UserTextField(
                        //       textController: _firstname,
                        //       hintText: 'First Name'),
                        // ),
                          child: Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: TextFormField(
                            controller: _firstname,
                            validator: (_firstname) {
                              if (_firstname.isEmpty)
                                return "Please enter FirstName";
                              else
                                return "null";
                            },
                            style: Theme.of(context).textTheme.bodyText1,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: 'First Name',
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
                      // lastname textfield
                      Flexible(
                         child: Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: TextFormField(
                            controller: _lastname,
                            validator: (_lastname) {
                              if (_lastname.isEmpty)
                                return "Please enter LastName";
                              else
                                return "null";
                            },
                            style: Theme.of(context).textTheme.bodyText1,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: 'Last Name',
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
                  Container(
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Row(children: <Widget>[
                      // firstname textfield
                      Flexible(
                           child: Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: TextFormField(
                            controller: _number,
                            validator: (_number) {
                              if (_number.isEmpty)
                                return "Please enter Number";
                              else
                                return "null";
                            },
                            style: Theme.of(context).textTheme.bodyText1,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: 'Shirt Number',
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
                      // lastname textfield
                      Flexible(
                            child: Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: TextFormField(
                            controller: _phone,
                            validator: (_phone) {
                              if (_phone.isEmpty)
                                return "Please enter Phone";
                              else
                                return "null";
                            },
                            style: Theme.of(context).textTheme.bodyText1,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: 'Phone',
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
                  // number textfield
                  Container(
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                       child: Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: TextFormField(
                            controller: _email,
                            validator: (_email) {
                              if (_email.isEmpty)
                                return "Please enter Email";
                              else
                                return "null";
                            },
                            style: Theme.of(context).textTheme.bodyText1,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: 'Email',
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
                            child: DropdownButton<String>(
                              hint: const Text("Tag"),
                              value: model.selectedTag,
                              onChanged: (final String newValue) {
                                model.selected = newValue;
                              },
                              items: model.tags.map<DropdownMenuItem<String>>(
                                (final String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                  );
                                },
                              ).toList(),
                            )),
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
                            child: DropdownButton<String>(
                              hint: const Text("Gender"),
                              value: model.selectedgender,
                              onChanged: (final String newValue) {
                                model.selectedgender = newValue;
                              },
                              items: model.gender.map<DropdownMenuItem<String>>(
                                (final String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                  );
                                },
                              ).toList(),
                            )),
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
                            child: DropdownButton<String>(
                              hint: const Text("Foot"),
                              value: model.selectedfoot,
                              onChanged: (final String newValue) {
                                model.selectedfoot = newValue;
                              },
                              items: model.foot.map<DropdownMenuItem<String>>(
                                (final String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                  );
                                },
                              ).toList(),
                            )),
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
                            child: DropdownButton<String>(
                              hint: const Text("Position"),
                              value: model.selectedposition,
                              onChanged: (final String newValue) {
                                model.selectedposition = newValue;
                              },
                              items:
                                  model.position.map<DropdownMenuItem<String>>(
                                (final String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                  );
                                },
                              ).toList(),
                            )),
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
                            child: DropdownButton<String>(
                              hint: const Text("Sub-Position"),
                              value: model.selectedSubPosition,
                              onChanged: (final String newValue) {
                                model.selectedSubPosition = newValue;
                              },
                              items: model.subposition
                                  .map<DropdownMenuItem<String>>(
                                (final String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                  );
                                },
                              ).toList(),
                            )),
                      )),
                  SizedBox(height: 20),
                  // save button

                  model.state == ViewState.Busy
                      ? CircularProgressIndicator()
                      : Container(
                          margin: EdgeInsets.only(
                              left: 20.0, right: 20.0, bottom: 40.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: 55.0,
                            child: Button(
                              'Save',
                              onPressed: () async {
                                var success = await model.addPlayer(
                                  
                                    model.selectedposition.toString(),
                                    model.selectedSubPosition.toString(),
                                    _firstname.text,
                                    _lastname.text,
                                    model.selectedfoot.toString() == "left"
                                        ? "l"
                                        : "r",
                                    int.parse(_number.text),
                                    model.selectedgender.toString() == "male"
                                        ? "m"
                                        : "f",
                                    model.selectedTag.toString());
                                if (success) {
                                  Navigator.pushNamedAndRemoveUntil(context,
                                      YourTeamAdminViewRoute, (route) => false);
                                }
                              },
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
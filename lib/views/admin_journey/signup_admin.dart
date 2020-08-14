import 'package:coach_better/widget/button.dart';
import 'package:flutter/material.dart';

class SignupAdminScreen extends StatefulWidget {
  HomePage createState() => HomePage();
}

class Item {
  const Item(this.name, this.icon);
  final String name;
  final Icon icon;
}

class HomePage extends State<SignupAdminScreen> {
  bool isChecked = false;
  var _age = ['U6-U10', 'U11-U16', 'U17-Adults'];
  var _gender = ['Male', 'Female'];
  var _currentItemSelected = 'U11-U16';
  var _currItemSelected = 'Gender';

  Item selectedUser;
  List<Item> users = <Item>[
    const Item(
        'U6-U10',
        Icon(
          Icons.android,
          color: const Color(0xFF167F67),
        )),
    const Item(
        'U11-U16',
        Icon(
          Icons.flag,
          color: const Color(0xFF167F67),
        )),
    const Item(
        'U17-ADULTS',
        Icon(
          Icons.format_indent_decrease,
          color: const Color(0xFF167F67),
        )),
//const Item('iOS',Icon(Icons.mobile_screen_share,color: const Color(0xFF167F67),)),
  ];

  Item selectedUser1;
  List<Item> users1 = <Item>[
    const Item(
        'MALE',
        Icon(
          Icons.android,
          color: const Color(0xFF167F67),
        )),
    const Item(
        'FEMALE',
        Icon(
          Icons.flag,
          color: const Color(0xFF167F67),
        )),
// const Item('U17-ADULTS',Icon(Icons.format_indent_decrease,color: const Color(0xFF167F67),)),
//const Item('iOS',Icon(Icons.mobile_screen_share,color: const Color(0xFF167F67),)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SignUp Admin',
                    style: Theme.of(context).textTheme.body2),
              
          
        ),
      backgroundColor: Theme.of(context).primaryColor,
        body: SafeArea(
                  child: Container(
      color: Color(0xFF186064),
      child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Padding(
              //   padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 50),
              //   child: Image.asset('images/logo-2x.png'),
              // ),
              // Padding(
              //   padding:
              //       const EdgeInsets.only(left: 16.0, right: 16.0, top: 20.0),
              //   child: Align(
              //     child: Center(
              //       child: Text(
              //         'All your team events in',
              //         style: TextStyle(
              //             fontSize: 25,
              //             color: Colors.white,
              //             fontFamily: 'Roboto',
              //             fontWeight: FontWeight.w600),
              //         softWrap: true,
              //       ),
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 2.0),
              //   child: Align(
              //     child: Center(
              //       child: Text(
              //         'one place',
              //         style: TextStyle(
              //             fontSize: 25,
              //             color: Colors.white,
              //             fontFamily: 'Roboto',
              //             fontWeight: FontWeight.w600),
              //         softWrap: true,
              //       ),
              //     ),
              //   ),
              // ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 55.0, right: 55.0, top: 40.0),
                child: Container(
                  height: 55.0,
                  child: TextFormField(
//controller: emailController,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 5.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                      ),
                      hintText: 'Team Name',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some email';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 55.0, right: 55.0, top: 20.0),
                child: Container(
                  height: 55.0,
                  child: TextFormField(
// style: TextStyle(backgroundColor: Colors.white),
//controller: emailController,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 5.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                      ),
                      hintText: 'League',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some email';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 55.0, right: 55.0, top: 20.0),
                child: Container(
                  height: 55.0,
                  padding: EdgeInsets.symmetric(horizontal: 0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    border: Border.all(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 2.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(),
// child: Container(
// color: Colors.white,
// child: DropdownButton<String>(
// isExpanded: true,
// items: _age.map((String dropDownStringItem) {
// return DropdownMenuItem<String>(
// //hint: Text("Select item"),
// value: dropDownStringItem,
// child: Padding(
// padding: const EdgeInsets.only(left: 10.0),
// child: Text(
// dropDownStringItem,
// style: TextStyle(
// fontSize: 16.0,
// color: Colors.grey,
// ),
// ),
// ),
// );
// }).toList(),
// onChanged: (String newValueSelected) {
// setState(() {
// this._currentItemSelected = newValueSelected;
// });
// },
// value: _currentItemSelected,
// ),
// ),
                    child: Container(
                      color: Colors.white,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<Item>(
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text("Age Class",
                                style: TextStyle(fontSize: 16.0)),
                          ),
                          isExpanded: true,
                          value: selectedUser,
                          onChanged: (Item Value) {
                            setState(() {
                              selectedUser = Value;
                            });
                          },
                          items: users.map((Item user) {
                            return DropdownMenuItem<Item>(
                              value: user,
                              child: Row(
                                children: <Widget>[
// user.icon,
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    user.name,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 55.0, right: 55.0, top: 20.0),
                child: Container(
                  height: 55.0,
                  child: TextFormField(
// style: TextStyle(backgroundColor: Colors.white),
//controller: emailController,
                    style: TextStyle(fontSize: 16.0),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 5.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                      ),
                      hintText: 'Country',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some email';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 55.0, right: 55.0, top: 20.0),
                child: Container(
// color: Colors.white,
                  height: 55.0,
                  padding: EdgeInsets.symmetric(horizontal: 0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    border: Border.all(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 2.0),
                  ),

// child: Container(
// color: Colors.white,
// child: DropdownButton<String>(
// hint: Text("Select item"),
// isExpanded: true,
// items: _gender.map((String dropDownStringItem) {
// return DropdownMenuItem<String>(
// value: dropDownStringItem,
// child: Padding(
// padding: const EdgeInsets.only(left: 10.0),
// child: Text(
// dropDownStringItem,
// style: TextStyle(
// fontSize: 16.0,
// color: Colors.grey,
// ),
// ),
// ),
// );
// }).toList(),
// onChanged: (String newValueSelected) {
// setState(() {
// this._currItemSelected = newValueSelected;
// });
// },
// //value: _currItemSelected,
// ),
// ),
                  child: Container(
                    color: Colors.white,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<Item>(
                        hint: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Gender",
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        isExpanded: true,
                        value: selectedUser1,
                        onChanged: (Item Value) {
                          setState(() {
                            selectedUser1 = Value;
                          });
                        },
                        items: users1.map((Item user) {
                          return DropdownMenuItem<Item>(
                            value: user,
                            child: Row(
                              children: <Widget>[
// user.icon,
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  user.name,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 55, right: 55, top: 30),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 55.0,
                  child: Button('Create Team',onPressed: (){},),
                  // child: RaisedButton(
                  //   shape: new RoundedRectangleBorder(
                  //       borderRadius: new BorderRadius.circular(4.0),
                  //       side: BorderSide(color: Colors.white)),
                  //   onPressed: () {},
                  //   color: Color(0xFF3ba374),
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(15.0),
                  //     child: Text(
                  //       'Create Team',
                  //       style: TextStyle(
                  //           fontSize: 16,
                  //           color: Colors.white,
                  //           fontFamily: 'Roboto',
                  //           fontWeight: FontWeight.w600),
                  //     ),
                  //   ),
                  // ),
                ),
              ),
            ]),
    ),
        ));
  }
}

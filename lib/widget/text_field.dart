import 'package:flutter/material.dart';

class UserTextField extends StatelessWidget {
  final textController, hintText, validator;
  UserTextField(
      {@required this.textController,
      @required this.hintText,
      @required this.validator});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      validator: validator,
      style: Theme.of(context).textTheme.bodyText1,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        labelText: hintText,
        labelStyle: Theme.of(context).textTheme.bodyText1,
        border: OutlineInputBorder(
          borderSide:
              BorderSide(color: Theme.of(context).primaryColor, width: 5.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Theme.of(context).primaryColor, width: 2.0),
        ),
      ),
    );
  }
}

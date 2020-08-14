import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final text;
  final onPressed;
  Button(this.text, {@required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(4.0),
          side: BorderSide(color: Colors.white)),
      onPressed: onPressed,
      color: Theme.of(context).accentColor,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          '$text',
          style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }
}

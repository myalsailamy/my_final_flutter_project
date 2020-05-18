import 'package:flutter/material.dart';

Widget getTwoFloatingActionButton() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15.0,
          ),
        ),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: () => {print('remove')},
        ),
        Expanded(
          child: Text(""),
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => {print('add')},
        ),
      ],
    ),
  );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

getMainTheme() {
  return ThemeData(
      primarySwatch: Colors.purple,
      accentColor: Colors.amber,
      fontFamily: 'Quicksand',
      textTheme: ThemeData.light().textTheme.copyWith(
            title: TextStyle(
              fontFamily: 'JFFlat',
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
      appBarTheme: AppBarTheme(
        textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                fontFamily: 'JFFlat',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
      ));
}

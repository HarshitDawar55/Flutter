import 'package:flutter/material.dart';

myHome() {
  var HomeDesign = Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.greenAccent,
      title: Text(
        "Mr. Harshit Dawar's business Card",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          backgroundColor: Colors.pinkAccent,
        ),
      ),
    ),
  );

  return MaterialApp(
    home: HomeDesign,
  );
}

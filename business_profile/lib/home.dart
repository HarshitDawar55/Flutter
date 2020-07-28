import 'package:flutter/material.dart';

myHome() {
  // ignore: non_constant_identifier_names
  var HomeDesign = Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.greenAccent,
      title: Text(
        "Mr. Harshit Dawar's business Card!",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: Colors.red,
        ),
      ),
    ),
  );

  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeDesign,
  );
}

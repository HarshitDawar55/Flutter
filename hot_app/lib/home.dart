import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
MyApp() {
  var MyBody = Container(
    width: 500,
    height: 500,
    // color: Colors.orange,
    child: Text("Welcome to Harshit Dawar's App!"),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.greenAccent,
      borderRadius: BorderRadius.circular(15),
      border: Border.all(
        width: 10,
        color: Colors.orange,
      ),
    ),
  );

  // ignore: non_constant_identifier_names
  var MyHome = Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.brown,
      title: Text("Harshit Dawar's Hot App!!!!!"),
    ),
    body: MyBody,
  );

  return MaterialApp(
    home: MyHome,
  );
}

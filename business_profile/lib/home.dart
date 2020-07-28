import 'package:business_profile/body.dart';
import 'package:flutter/material.dart';

myHome() {
  var myBody = Container(
    width: double.infinity,
    height: double.infinity,
    color: Colors.amberAccent[100],
    margin: EdgeInsets.all(15),
    child: Column(
      children: <Widget>[],
    ),
  );

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
    body: myBody,
  );

  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeDesign,
  );
}

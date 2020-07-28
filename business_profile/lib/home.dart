import 'package:flutter/material.dart';

myHome() {
  var myBody = Container(
    width: double.infinity,
    height: double.infinity,
    color: Colors.amberAccent[100],
    margin: EdgeInsets.all(15),
    alignment: Alignment.center,
    child: Stack(
      // This will allign the child container as the Top Center.
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          // alignment: Alignment.bottomRight,
          width: 300,
          height: 250,
          color: Colors.pinkAccent[100],
        ),
        Container(
          width: 150,
          height: 150,
          color: Colors.brown,
          // margin: EdgeInsets.all(20),
          alignment: Alignment.center,
        )
      ],
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

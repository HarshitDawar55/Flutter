import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
MyProfile() {
  var MyBody = Container(
    width: 500,
    height: 500,
    // color: Colors.orange,
    child: Column(
      children: <Widget>[
        Text(
          "Column Widgets Test",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Image.network(
          "https://github.com/HarshitDawar55/Flutter/raw/master/Images/medium.jpg",
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
        ),
        Text(
          "Column Widget Test2",
          style: TextStyle(
            fontSize: 33,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    ),
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
    body: Center(
      child: MyBody,
    ),
  );

  return MyHome;
}

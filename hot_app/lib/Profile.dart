import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
var MyBody = Container(
  width: 500,
  height: 500,
  // color: Colors.orange,
  child: Text(
    "Welcome to Harshit Dawar's App!",
    style: TextStyle(
      color: Colors.greenAccent,
      fontWeight: FontWeight.bold,
      fontSize: 23,
    ),
  ),
  alignment: Alignment.center,
  decoration: BoxDecoration(
    image: DecorationImage(
      fit: BoxFit.cover,
      image: NetworkImage(
          "https://github.com/HarshitDawar55/Flutter/raw/master/Images/medium.jpg"),
    ),
    color: Colors.greenAccent,
    borderRadius: BorderRadius.circular(15),
    border: Border.all(
      width: 10,
      color: Colors.orange,
    ),
  ),
);

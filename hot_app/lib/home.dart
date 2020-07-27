import 'package:flutter/material.dart';

import 'Profile.dart';

// ignore: non_constant_identifier_names
MyApp() {
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

  return MaterialApp(
    home: MyHome,
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'Profile.dart';

// ignore: non_constant_identifier_names
MyApp() {
  FlutterStatusbarcolor.setStatusBarColor(Colors.pinkAccent);
  return MaterialApp(
    home: MyProfile(),
  );
}

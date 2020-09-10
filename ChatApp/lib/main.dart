import 'package:ChatApp/chat.dart';
import 'package:ChatApp/home.dart';
import 'package:ChatApp/login.dart';
import 'package:ChatApp/register.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => MyHome(),
        "/register": (context) => MyReg(),
        "/login": (context) => MyLogin(),
        "/chat": (context) => MyChat(),
      },
  ));
}


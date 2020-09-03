import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  // Initializing Plugins
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
} 


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var Firestore_Connect = FirebaseFirestore.instance;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Firebase App",
          ),
        ),  
      ),
    );
  }
}
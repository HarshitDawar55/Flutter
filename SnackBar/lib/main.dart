import 'package:SnackBar/body.dart';
import 'package:flutter/material.dart';

void main() => runApp(SnackBar_APP());

// ignore: camel_case_types
// Parent layer of the Program
class SnackBar_APP extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.fallback(),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "SnackBar App",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 23,
            ),
          ),
          actions: [Icon(Icons.accessibility_new)],
        ),
        body: MyBody(),
      ),
    );
  }
}


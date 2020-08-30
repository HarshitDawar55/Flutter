import 'package:flutter/material.dart';

void main() => runApp(SnackBar_APP());

// ignore: camel_case_types
class SnackBar_APP extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "SnackBar App",
          ),
        ),
      ),
    );
  }
}


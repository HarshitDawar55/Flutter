import 'package:AnimationApp/Animation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Animation App",
          ),
        ),
        body: MyAnimation(),
      ),
    ),
  );
}

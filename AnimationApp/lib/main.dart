import 'package:AnimationApp/Animation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Animation App by Mr. Harshit Dawar!",
          ),
        ),
        body: MyAnimation(),
      ),
    ),
  );
}

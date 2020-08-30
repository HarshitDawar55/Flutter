import 'package:flutter/material.dart';

// child layer of the Program
class MyBody extends StatefulWidget{
  @override
  MyBodyState createState() => MyBodyState();
}

class MyBodyState extends State<MyBody>{
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: RaisedButton(
        color: Colors.greenAccent,
        child: Text("Harshit Dawar"),
        onPressed: () => print("HD"),
        ),
    );
  }
}
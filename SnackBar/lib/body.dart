import 'package:flutter/material.dart';

// Child layer of the Program
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
        child: Text(
          "Harshit Dawar",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        onPressed: () {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text(
                "You Pressed a Button!",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  ),
                ),
              backgroundColor: Colors.pink,
              )
          );
        }
      ),
    );
  }
}
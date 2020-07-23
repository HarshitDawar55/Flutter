import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Creating the Main function which the runAPP will run!
firstApp() {
  // ignore: non_constant_identifier_names
  var FA = Text(
    "Mr. Harshit Dawar!",
    textDirection: TextDirection.ltr,
    textAlign: TextAlign.center,
  );

  var emailIcon = Icon(Icons.email);

  var myAppBar = AppBar(
    title: FA,
    backgroundColor: Colors.amber,
    leading: Text("Technology World!"),
    actions: <Widget>[emailIcon],
  );

  var homeScreen = Scaffold(
    appBar: myAppBar,
    body: Text(
      "My Home Screen!",
      textAlign: TextAlign.center,
    ),
  );

  var design = MaterialApp(
    home: homeScreen,
  );

  return design;
}

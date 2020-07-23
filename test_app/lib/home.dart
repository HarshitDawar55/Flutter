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
  var myCalIcon = Icon(Icons.access_alarm);

  pressEvent() {
    print("Something is Pressed!");
  }

  pressEvent2() {
    print("Something is Pressed for Alarm!");
  }

  var emailIconButton = IconButton(
    icon: emailIcon,
    onPressed: pressEvent,
  );

  var callIconButton = IconButton(
    icon: myCalIcon,
    onPressed: pressEvent2,
  );

  var myAppBar = AppBar(
    title: FA,
    backgroundColor: Colors.amber,
    leading: Text("TW!"),
    actions: <Widget>[emailIconButton, callIconButton],
  );

  var url =
      "https://raw.githubusercontent.com/HarshitDawar55/Flutter/master/Images/Latest_Image.jpg";

  var myImage = Image.network(url);

  var homeScreen = Scaffold(
    appBar: myAppBar,
    body: myImage,
  );

  var design = MaterialApp(
    home: homeScreen,
  );

  return design;
}

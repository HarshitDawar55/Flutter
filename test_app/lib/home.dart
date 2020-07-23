import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Creating the Main function which the runAPP will run!
firstApp() {
  // ignore: non_constant_identifier_names
  var FA = Text(
    "Mr. Harshit Dawar",
    textDirection: TextDirection.ltr,
    textAlign: TextAlign.center,
  );

  var design = MaterialApp(
    home: FA,
  );

  return design;
}

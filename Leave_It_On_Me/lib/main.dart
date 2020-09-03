import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}
var firestoresconnect = FirebaseFirestore.instance;

// Function to retreive the output of the Linux Commands from the Firebase!
getData() async{
    var data = await firestoresconnect.collection("Docker-Commands").get();

    for (var i in data.docs){
      print(i.data());
    }
  }

  String command;
  var output;

// Funciton to get the output of the Linux Command running!
getLinuxOutput(cmd) async{
  var url = "http://192.168.1.9/cgi-bin/flutter-docker.py?y=${cmd}";
  var output = await http.get(url);
  print(output.body);
  await firestoresconnect.collection("Docker-Commands").add({
                  command : "${output.body}"
                });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Firebase.initializeApp();
    return MaterialApp(
      //theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("FireBase App"),    
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.greenAccent,
              margin: EdgeInsets.all(20),
              child: TextField(
                onChanged: (value){
                  command = value;
                },
                autocorrect: false,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter the Linux Command",
                  prefixIcon: Icon(Icons.code),
                  fillColor: Colors.greenAccent,
                  focusColor: Colors.red,
                ),
              ),
            ),
            RaisedButton(
              color: Colors.amberAccent[100],
              child: Text(
                  "Submit Linux Command",
                  style: TextStyle(
                    color: Colors.redAccent[200],
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              onPressed: () {
                getLinuxOutput(command);
                print("Output Sent");
              }
              ),
              RaisedButton(
                color: Colors.amberAccent[100],
              child: Text(
                  "Get Linux Commands Output from Firebase!",
                  style: TextStyle(
                    color: Colors.redAccent[200],
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontFamily: "SF Pro",
                    fontSize: 18,
                  ),
                ),
              onPressed: () {
                getData();
                print("Output Received!");
              }
              )
          ],
        ),
      ),
      
      ),
    );
  }
}
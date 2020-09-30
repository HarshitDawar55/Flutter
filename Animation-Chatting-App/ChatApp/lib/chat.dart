import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyChat extends StatefulWidget {
  @override
  _MyChatState createState() => _MyChatState();
}

class _MyChatState extends State<MyChat> {
  var authenticate = FirebaseAuth.instance;
  var fireStoreInstance = FirebaseFirestore.instance;
  String msg;

  getLiveMessages() async {
    await for (var snapShots
        in fireStoreInstance.collection("chatMessages").snapshots()) {
      for (var liveMessages in snapShots.docs) {
        print(liveMessages.data());
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("Landed to chat Page!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Chat Page",
            style: TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.backspace,
              ),
              onPressed: () async {
                await authenticate.signOut();
                Navigator.pushNamed(context, "/login");
              },
            )
          ],
        ),
        body: Center(
            child: Column(
          children: [
            TextField(
              onChanged: (value) {
                msg = value;
              },
              decoration: InputDecoration(
                  hintText: "Enter the Message",
                  prefixIcon: Icon(
                    Icons.grade,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
            FlatButton(
              onPressed: () async {
                //print(msg);
                var msgdoc =
                    await fireStoreInstance.collection("chatMessages").get();
                for (var i in msgdoc.docs) {
                  print(i.data());
                }
              },
              child: Text(
                "Get All Messages!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 25,
                ),
              ),
            ),
            FlatButton(
              onPressed: () async {
                //print(msg);
                await fireStoreInstance.collection("chatMessages").add({
                  "Message": msg,
                  "Sender": authenticate.currentUser.email,
                });
              },
              child: Text(
                "Send Message!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 25,
                ),
              ),
            ),
            FlatButton(
              onPressed: () => getLiveMessages(),
              child: Text(
                "Get Live Messages!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 25,
                ),
              ),
            ),
            Material(
              color: Colors.amber,
              child: MaterialButton(
                minWidth: 250,
                child: Text(
                  "Know Your Identity",
                ),
                onPressed: () {
                  try {
                    var user = authenticate.currentUser;
                    print(user.email);
                  } catch (e) {
                    print(e);
                  }
                },
              ),
            )
          ],
        )),
      ),
    );
  }
}

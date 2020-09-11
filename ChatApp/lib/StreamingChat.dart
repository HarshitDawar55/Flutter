import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class StreamingChat extends StatefulWidget {
  @override
  _StreamingChatState createState() => _StreamingChatState();
}

class _StreamingChatState extends State<StreamingChat> {
  String message;

  var fs = FirebaseFirestore.instance;
  var authenticate = FirebaseAuth.instance;
  var messageTextContoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var mobileWidth = MediaQuery.of(context).size.width;
    var user = authenticate.currentUser.email;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Streaming Chat Page",
          style: TextStyle(
            fontSize: 25,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        // For Container Alignment
        alignment: Alignment.center,
        child: Column(
          // Fot Column Widgets Alignment
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            StreamBuilder<QuerySnapshot>(
              builder: (context, snapshot) {
                var m = snapshot.data.docs;
                List<Widget> z = [];

                for (var doc in m) {
                  z.add(
                    Text(
                      "${doc.data()['Sender']} : ${doc.data()['Message']}",
                    ),
                  );
                }
                // Using LitsView to show the messages Properly!
                return ListView.builder(
                    itemCount: z.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: z[index],
                      );
                    });
              },
              stream: fs.collection("chatMessages").snapshots(),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: mobileWidth * 0.95,
              child: TextField(
                onChanged: (value) {
                  message = value;
                },
                controller: messageTextContoller,
                decoration: InputDecoration(
                    hintText: "Enter the Message Here",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    )),
              ),
            ),
            RaisedButton(
              color: Colors.lightGreenAccent,
              child: Text(
                "Send Message",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.red,
                ),
              ),
              onPressed: () async {
                messageTextContoller.clear();
                await fs.collection("chatMessages").add({
                  "Message": message,
                  "Sender": user,
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

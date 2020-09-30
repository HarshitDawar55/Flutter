import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyReg extends StatefulWidget {
  @override
  _MyRegState createState() => _MyRegState();
}

class _MyRegState extends State<MyReg> {
  var authenticate = FirebaseAuth.instance;

  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Registration Page",
              style: TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: Center(
            child: Container(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                      //color: Colors.pinkAccent[100],
                      //borderRadius: BorderRadius.circular(20),
                      //elevation: 15,
                      child: TextField(
                    // Assigning the Email Address Keyboard Type
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: "Enter Email ID",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    onChanged: (value) {
                      email = value;
                    },
                  )),
                  SizedBox(
                    height: 25,
                  ),
                  Material(
                      //color: Colors.pinkAccent[100],
                      //borderRadius: BorderRadius.circular(20),
                      //elevation: 15,
                      child: TextField(
                    // Assigning the Email Address Keyboard Type
                    keyboardType: TextInputType.multiline,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    onChanged: (value) {
                      password = value;
                    },
                  )),
                  SizedBox(
                    height: 25,
                  ),
                  Material(
                    color: Colors.lightGreenAccent,
                    borderRadius: BorderRadius.circular(20),
                    elevation: 15,
                    child: MaterialButton(
                      minWidth: 250,
                      child: Text(
                        "Submit",
                        style: TextStyle(
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange,
                        ),
                      ),
                      onPressed: () async {
                        try {
                          // Remember to add .trim() function in EMail Address to get rid of the error of "Email Address Badly Formatted"!
                          var user =
                              await authenticate.createUserWithEmailAndPassword(
                            email: email.trim(),
                            password: password,
                          );

                          print(email);
                          print(password);
                          //print(user);

                          if (user.additionalUserInfo.isNewUser == true) {
                            Navigator.pushNamed(context, "/chat");
                          }
                        } catch (e) {
                          print(e);
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class MyLogin extends StatefulWidget {
  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  var authentication = FirebaseAuth.instance;

  String email, password;
  bool showProgressSpinner = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Login Page",
            style: TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ModalProgressHUD(
          inAsyncCall: showProgressSpinner,
          child: Center(
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
                        "Login",
                        style: TextStyle(
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange,
                        ),
                      ),
                      onPressed: () async {
                        try {
                          setState(() {
                            showProgressSpinner = true;
                          });
                          // Remember to add .trim() function in EMail Address to get rid of the error of "Email Address Badly Formatted"!
                          var user =
                              await authentication.signInWithEmailAndPassword(
                            email: email.trim(),
                            password: password,
                          );

                          print(email);
                          print(password);
                          //print(user);

                          if (user != null) {
                            Navigator.pushNamed(context, "/chat");
                            setState(() {
                              showProgressSpinner = false;
                            });
                          } else {
                            setState(() {
                              showProgressSpinner = false;
                            });
                          }
                        } catch (e) {
                          print(e);
                        }
                      },
                    ),
                  ),
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
                        "Create an Account?",
                        style: TextStyle(
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange,
                        ),
                      ),
                      onPressed: () => Navigator.pushNamed(context, "/"),
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

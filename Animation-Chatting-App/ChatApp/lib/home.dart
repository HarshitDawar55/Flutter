import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Chat App",
              style: TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Material(
                  color: Colors.lightGreenAccent,
                  borderRadius: BorderRadius.circular(20),
                  elevation: 15,
                  child: MaterialButton(
                      minWidth: 250,
                      child: Text(
                        "Register",
                        style: TextStyle(
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, "/register");
                      }),
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
                        "Login",
                        style: TextStyle(
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, "/login");
                      }),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

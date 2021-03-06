import 'package:flutter/material.dart';

Email() {
  print("Email Sent");
}

tap() {
  print("Image Tapped Single Time!");
}

doubleTap() {
  print("Image Tapped Double Time!");
}

myHome() {
  var myBody = Container(
    width: double.infinity,
    height: double.infinity,
    color: Colors.amberAccent[100],
    margin: EdgeInsets.all(15),
    alignment: Alignment.center,
    child: Stack(
      // This will allign the child container as the Top Center.
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          // alignment: Alignment.bottomRight,
          width: 350,
          height: 250,
          // color: Colors.pinkAccent[100],
          margin: EdgeInsets.all(50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.pinkAccent[100],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Harshit Dawar",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.email), onPressed: Email),
                  Text(
                    "CEO & CTO @TW",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),

        // Image Container
        InkWell(
          onTap: tap,
          onDoubleTap: doubleTap,
          child: Container(
            width: 110,
            height: 110,
            // color: Colors.brown,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.pinkAccent[100],
              ),
              image: DecorationImage(
                image: NetworkImage(
                    "https://github.com/HarshitDawar55/Flutter/raw/master/Images/Latest_Image.jpg"),
                fit: BoxFit.cover,
              ),
              // color: Colors.pinkAccent[100],
            ),
          ),
        )
      ],
    ),
  );

  // ignore: non_constant_identifier_names
  var HomeDesign = Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.greenAccent,
      title: Text(
        "Mr. Harshit Dawar's business Card!",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: Colors.red,
        ),
      ),
    ),
    body: myBody,
  );

  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeDesign,
  );
}

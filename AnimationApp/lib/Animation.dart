import 'package:flutter/material.dart';

class MyAnimation extends StatefulWidget {
  @override
  _MyAnimationState createState() => _MyAnimationState();
}

class _MyAnimationState extends State<MyAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  var animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    animation = CurvedAnimation(parent: _controller, curve: Curves.bounceOut)
      ..addListener(() {
        setState(() {
          print(animation.value);
        });
      });
    print(animation);
    _controller.forward();
    print(animation);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        _controller.forward(from: 0.0);
      },
      child: Center(
        child: Container(
          alignment: Alignment.center,
          width: 350 * animation.value,
          // padding: EdgeInsets.all(animation.value * 5),
          height: 350 * animation.value,
          color: Colors.lightGreenAccent,
          child: Text(
            "Hello Harshit Dawar!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35 * animation.value,
            ),
          ),
        ),
      ),
    );
  }
}

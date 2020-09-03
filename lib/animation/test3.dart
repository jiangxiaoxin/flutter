import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimationTest3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AnimationTest3State();
  }
}

class _AnimationTest3State extends State<AnimationTest3>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();

    controller =
        new AnimationController(vsync: this, duration: Duration(seconds: 10));
    animation =
        new Tween<double>(begin: 0, end: math.pi * 1.5).animate(controller);
    animation.addListener(() {
      print(animation.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("animation test"),
        ),
        body: Transform.rotate(
          angle: animation.value,
          child: GestureDetector(
            child: Center(
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 10)),
              ),
            ),
            onTap: () {
              controller.forward();
            },
          ),
        ));
  }
}

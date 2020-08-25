import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("stack test"),
      ),
      body: Stack(
        children: [
          Positioned(
            left: 10,
            top: 10,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Center(
                child: Text("box2"),
              ),
            ),
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
            child: Center(
              child: Text("box1"),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: Container(
              width: 50,
              height: 50,
              color: Colors.yellow,
              child: Center(
                child: Text("box3"),
              ),
            ),
          ),
          ClipOval(
            child: Container(
              width: 300,
              height: 300,
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}

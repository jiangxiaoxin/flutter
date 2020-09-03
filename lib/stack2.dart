import 'package:flutter/material.dart';

class StackPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text("stack2"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        fit: StackFit.passthrough,
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.red,
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Color.fromRGBO(0, 255, 0, 0.1),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("layout test"),
      ),
      body: Container(
        color: Colors.green,
        child: Container(
          width: 200,
          height: 200,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(50),
          decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(color: Colors.blue, width: 20)),
          child: Center(
            child: Text(
              "aaa",
              style: TextStyle(backgroundColor: Colors.yellow),
            ),
          ),
        ),
      ),
    );
  }
}

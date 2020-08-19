import 'package:flutter/material.dart';

class TextPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _TextPageState();
  }
}

class _TextPageState extends State<TextPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "text测试"
        ),
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.cyanAccent,
          border: Border.all(color: Colors.red, width: 1.0, style: BorderStyle.solid)
        ),
        child: Text(
          "hello world",
          textAlign: TextAlign.center,

          style: TextStyle(
            color: Colors.blue,
            backgroundColor: Colors.deepOrange
          ),
        ),
      ),
    );
  }
}
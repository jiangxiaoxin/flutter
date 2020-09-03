import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("layout test"),
        ),
        body:
//        Text("xyz" * 37)
            Container(
          width: double.infinity,
          height: 400,
          color: Colors.green,
          child: Align(
            alignment: Alignment.center,
            child: Wrap(
              spacing: 10,
              runSpacing: 20,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ));
  }
}

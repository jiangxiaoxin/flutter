import 'package:flutter/material.dart';

class FlexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            color: Colors.green,
            child: Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

//          mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 100,
                  height: 40,
                  color: Colors.red,
                ),
                Text("text"),
                Container(
                  width: 40,
                  height: 100,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          Row(
            children: [
              Text(
                "left",
                style: TextStyle(backgroundColor: Colors.blue),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Container(
                  color: Colors.green,
                  child: Text(
                    "container",
                    style: TextStyle(backgroundColor: Colors.black),
                  ),
                ),
              ),
              Text(
                "right",
                style: TextStyle(backgroundColor: Colors.red),
              )
            ],
          ),
          Row(
            children: [
              Text(
                "left",
                style: TextStyle(backgroundColor: Colors.blue),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  child: Text(
                    "container",
                    style: TextStyle(backgroundColor: Colors.black),
                  ),
                ),
              ),
              Text(
                "right",
                style: TextStyle(backgroundColor: Colors.red),
              )
            ],
          )
        ],
      ),
    );
  }
}

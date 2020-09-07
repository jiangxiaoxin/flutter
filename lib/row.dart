import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  final colors = [Colors.red, Colors.blue, Colors.green];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            color: Colors.amber,
            child: Row(
              children: [
                for (var i = 0; i < 3; i++)
                  Container(
                    width: 50,
                    height: 50,
                    color: colors[i],
                    child: Text("box $i"),
                  )
              ],
            ),
          ),
          Container(
            color: Colors.amber,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (var i = 0; i < 3; i++)
                  Container(
                    width: 50,
                    height: 50,
                    color: colors[i],
                    child: Text("box $i"),
                  )
              ],
            ),
          ),
          Container(
            color: Colors.amber,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (var i = 0; i < 3; i++)
                  Container(
                    width: 50,
                    height: 50,
                    color: colors[i],
                    child: Text("box $i"),
                  )
              ],
            ),
          ),
          Container(
            color: Colors.amber,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (var i = 0; i < 3; i++)
                  Container(
                    width: 50,
                    height: 50,
                    color: colors[i],
                    child: Text("box $i"),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}

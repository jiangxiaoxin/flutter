import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: List.generate(
            10,
            (index) => Container(
                  color: Colors.red,
                  width: MediaQuery.of(context).size.width / 2 - 5,
                  height: 50,
                  child: Center(
                    child: Text("中文$index"),
                  ),
                )),
      ),
    );
  }
}

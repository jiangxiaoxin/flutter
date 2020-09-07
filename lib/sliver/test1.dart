import 'package:flutter/material.dart';

class SliverPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          SliverPrototypeExtentList(
            prototypeItem: Text("11"),
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.cyan[100 * (index % 9)],
                child: new Text('item $index' * 100),
              );
            }, childCount: 50),
          )
        ],
      ),
    );
  }
}

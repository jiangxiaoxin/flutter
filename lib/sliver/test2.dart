import 'package:flutter/material.dart';

class SliverAppBarTestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
//      appBar:
//          AppBar(title: Text("appbar"), backgroundColor: Colors.transparent),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            expandedHeight: 200,
//            title: Text("sliver app bar"),
            leading: IconButton(
              icon: Icon(Icons.list),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.share),
              ),
              IconButton(
                icon: Icon(Icons.add),
              )
            ],
            flexibleSpace: FlexibleSpaceBar(
              title: Text("flexible space bar"),
              background: Image.network(
                "https://dss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3892521478,1695688217&fm=26&gp=0.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          for (var index = 0; index < 30; index++)
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 50,
                color: Colors.red,
                child: Center(
                  child: Text("container $index"),
                ),
              ),
            )
        ],
      ),
    );
  }
}

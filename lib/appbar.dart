import 'package:flutter/material.dart';

class AppBarPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppBarPageState();
  }
}

class _AppBarPageState extends State<AppBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//        backgroundColor: Colors.transparent,
//        extendBodyBehindAppBar: true,
        appBar: AppBar(
//          backgroundColor: Colors.transparent,
//          elevation: 0,
          title: Text(
            "appbar",
            style: TextStyle(color: Colors.red),
          ),
        ),
        body: Builder(builder: (context) {
          return Column(
            children: [
              Container(
                color: Colors.red,
                alignment: Alignment.centerLeft,
                child: IconButton(
                  color: Colors.blue,
                  icon: Icon(Icons.airplanemode_active),
                  onPressed: () {
                    print("-----icon button pressed");
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text("123"),
                    ));
                  },
                ),
              )
            ],
          );
        }));
  }
}

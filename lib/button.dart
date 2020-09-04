import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("button"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: RaisedButton(
              child: Text("RaisedButton"),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: FlatButton(
              child: Text("FlatButton"),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: OutlineButton(
              child: Text("OutlineButton"),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: RawMaterialButton(
              child: Text("RawMaterialButton"),
              onPressed: () {},
            ),
          ),
          Image(
            image: NetworkImage(
                "https://t8.baidu.com/it/u=3571592872,3353494284&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1598332109&t=f1f8bd127667c5f47ce3728702ebbe87"),
            width: 100,
            height: 100,
            fit: BoxFit.cover,
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent loadingProgress) {
              if (loadingProgress == null) {
                print("加载完了");
                return child;
              }
              var percent = loadingProgress.cumulativeBytesLoaded /
                  loadingProgress.expectedTotalBytes;
              return Text(percent.toStringAsFixed(2));
            },
          ),
          Container(
            height: 200,
            color: Colors.red,
            child: Align(
              widthFactor: 2,
              heightFactor: 1,
              child: Container(
                color: Colors.blue,
                width: 50,
                height: 50,
              ),
            ),
          ),
          Divider(
            height: 10,
            thickness: 10,
            color: Colors.white,
          ),
          Container(
            height: 200,
            color: Colors.red,
            child: Align(
              child: Container(
                color: Colors.blue,
                width: 50,
                height: 50,
              ),
            ),
          )
        ],
      ),
    );
  }
}

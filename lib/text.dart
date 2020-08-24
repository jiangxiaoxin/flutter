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
          title: Text("text测试"),
        ),
//        body: Container(
////          margin: EdgeInsets.only(top: 10, bottom: 10),
////          constraints: BoxConstraints.expand(height: 155),
////          child: ClipRRect(
////            borderRadius: BorderRadius.only(
////                topLeft: Radius.circular(8), topRight: Radius.circular(8)),
////            child: Image.network(
////              "https://t7.baidu.com/it/u=3616242789,1098670747&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1598332109&t=8e1956e5dd844930f5db86504e301861",
////              fit: BoxFit.cover,
////              height: 155,
////              isAntiAlias: true,
////            ),
////          ),
////        ));

        body: DecoratedBox(
            decoration: BoxDecoration(color: Colors.red),
            child: Container(
                child: Center(
              child: Text("111"),
            ))));
  }
}

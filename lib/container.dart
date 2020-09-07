import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContainerPageState();
  }
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: ClipPath(
              clipper: _Clipper(),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                ),
                child: Text(
                    "近日，有网友爆料，世硕电子（昆山）公司一男子发员工证件时随手扔在地下，员工需弯腰拾起。该视频引发了网友们的愤怒。事发后，该公司先矢口否认，随后又公开承认，表示主管将率团队向员工致歉。"),
              ),
            ),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.red, offset: Offset(5, 5), blurRadius: 10.0)
            ]),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.red, offset: Offset(5, 5), blurRadius: 10.0)
              ]),
              child: Text(
                  "近日，有网友爆料，世硕电子（昆山）公司一男子发员工证件时随手扔在地下，员工需弯腰拾起。该视频引发了网友们的愤怒。事发后，该公司先矢口否认，随后又公开承认，表示主管将率团队向员工致歉。"),
            ),
          )
        ],
      ),
    );
  }
}

class _Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.moveTo(5, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(5, size.height);
    path.lineTo(5, 20);
    path.lineTo(0, 15);
    path.lineTo(5, 10);
    path.lineTo(5, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

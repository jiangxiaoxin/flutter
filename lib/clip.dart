import 'package:flutter/material.dart';

class ClipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("clip test"),
      ),
      body: Stack(
        children: [
          Container(
            height: 200,
            color: Colors.green,
            child: ClipPath(
                clipper: MyCurveClipper(),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.redAccent,
                )),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Text("left bottom"),
          )
        ],
      ),
    );
  }
}

class MyCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    print("curve size: width:${size.width}  height:${size.height}");
    var path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 60);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    if (this.hashCode != oldClipper.hashCode) {
      print("this:${this.hashCode}  old:${oldClipper.hashCode}");
      return true;
    }
    return false;
  }
}

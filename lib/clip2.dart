import 'package:flutter/material.dart';

class ClipPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("11"),
      ),
      body: Column(
        children: [
          Container(
            width: 40,
            height: 40,
            color: Colors.red,
            child: ClipRect(
              child: Image.network(
                "https://t7.baidu.com/it/u=3616242789,1098670747&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1598332109&t=8e1956e5dd844930f5db86504e301861",
                fit: BoxFit.cover,
//              height: 100,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 400,
            child: ClipPath(
              clipper: _MyClipper(MediaQuery.of(context).size.width, 400),
              clipBehavior: Clip.antiAlias,
              child: Container(
                child: Image.network(
                  "https://images.unsplash.com/photo-1599071644552-8b49f4853e62?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _MyClipper extends CustomClipper<Path> {
  double width;
  double height;
  _MyClipper(@required this.width, @required this.height);

  @override
  Path getClip(Size size) {
    var path = new Path();
    path.moveTo(0, size.height / 3 * 1);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height / 3 * 2);
    path.lineTo(size.width, 0);
//    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    if (oldClipper.hashCode != this.hashCode) {
      return true;
    }
    return false;
  }
}

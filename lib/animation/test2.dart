import 'package:flutter/material.dart';

class AnimationTest2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AnimationTest2State();
  }
}

class _AnimationTest2State extends State<AnimationTest2>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  Tween tween;
  double opacity = 1.0;

  @override
  void initState() {
    super.initState();

    controller = new AnimationController(
        duration: Duration(milliseconds: 300), vsync: this);
    animation = new Tween<double>(begin: 1.0, end: 0.0).animate(controller);
    animation.addListener(() {
      setState(() {
        opacity = animation.value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("动画测试2"),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.brown,
          ),
//          Positioned(
//            top: top,
//            left: 0,
//            child: SizedBox(
//              width: 100,
//              height: 100,
//              child: Container(
//                color: Colors.red,
//              ),
//            ),
//          ),
          Positioned(
            bottom: 0,
            child: Column(
              children: [
                OutlineButton(
                  child: Text("forward"),
                  onPressed: () {
                    controller.forward();
                  },
                ),
                OutlineButton(
                  child: Text("reverse"),
                  onPressed: () {
                    controller.reverse();
                  },
                )
              ],
            ),
          ),
          Opacity(
            opacity: opacity,
            child: Container(
              width: double.infinity,
              height: 200,
              child: Image.network(
                "https://t8.baidu.com/it/u=1484500186,1503043093&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1599550770&t=52238e267c0503e0931c60cacef8614f",
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Opacity(
            opacity: 1 - opacity,
            child: Container(
              width: double.infinity,
              height: 200,
              child: Image.network(
                "https://t9.baidu.com/it/u=1307125826,3433407105&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1599550770&t=04a329cff9e797dc44717baf6c7c09cf",
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}

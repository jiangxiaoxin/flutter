import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class TextPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextPageState();
  }
}

class _TextPageState extends State<TextPage>
    with SingleTickerProviderStateMixin {
  Timer _timer;
  double _offset = 0;
  ScrollController _scrollController = new ScrollController();

  AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(duration: Duration(seconds: 1), vsync: this)
          ..addStatusListener((AnimationStatus status) {
            if (status == AnimationStatus.completed) {
              _animationController.reverse();
            } else if (status == AnimationStatus.dismissed) {
              _animationController.forward();
            }
          });
    _animationController.forward();

    _timer = Timer.periodic(Duration(milliseconds: 50), (timer) {
//      SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
//
//      });
      double nextOffset = _scrollController.offset + 20;
      double maxOffset = _scrollController.position.maxScrollExtent;
//      print("nextOffset:$nextOffset  maxOffset:$maxOffset");
      if (nextOffset >= maxOffset) {
        nextOffset = 0;
        print("scroll jump");
        _scrollController.jumpTo(nextOffset);
      }
      _scrollController.animateTo(nextOffset,
          duration: Duration(milliseconds: 200), curve: Curves.linear);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
    _scrollController?.dispose();
    _animationController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
          title: Text("text测试"),
        ),
        body: ListView(
          children: [
            ImageIcon(
                NetworkImage(
                    "https://t8.baidu.com/it/u=3571592872,3353494284&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1598428828&t=e25ab3b3d3e00d8edbd9aabfa9818481"),
                size: 50),
            GestureDetector(
              onTap: () {
                print("icon tap");
              },
              child: Icon(Icons.print),
            ),
            SizedBox(
              width: 100,
              height: 50,
              child: Text(
                  "sizedboxsizedboxsizedboxsizedboxsizedboxsizedboxsizedboxsizedboxsizedboxsizedboxsizedboxsizedboxsizedboxsizedboxsizedboxsizedbox"),
            ),
            Material(
              color: Colors.red,
              child: Center(
                child: Ink(
                  decoration: const ShapeDecoration(
                    color: Colors.lightGreen,
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.android),
                    color: Colors.black,
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.android),
              color: Colors.black,
              onPressed: () {},
            ),
            Row(
              children: [
                Text(
                  "我是一行中文",
                  style: TextStyle(
                      fontSize: 30,
                      textBaseline: TextBaseline.ideographic,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Colors.black),
                ),
                Expanded(
                  child: Text(
                    "我也是一行中文",
//                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      fontSize: 30,
                      textBaseline: TextBaseline.alphabetic,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Colors.black,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
//                  padding: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(color: Colors.red),
                  child: Text(
                    "中文中文中文中文中文",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        backgroundColor: Colors.blue,
                        decoration: TextDecoration.lineThrough),
                  ),
                ),
                Container(
//                  padding: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(color: Colors.red),
                  child: Text(
                    "english",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        backgroundColor: Colors.blue,
                        decoration: TextDecoration.lineThrough),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
//                  padding: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(color: Colors.red),
                  child: Text(
                    "中文中文中文中文中文",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        backgroundColor: Colors.blue,
                        decoration: TextDecoration.underline),
                  ),
                ),
                Container(
//                  padding: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(color: Colors.red),
                  child: Text(
                    "english",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        backgroundColor: Colors.blue,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
//                  padding: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(color: Colors.red),
                  child: Text(
                    "中文中文中文中文中文",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        backgroundColor: Colors.blue,
                        decoration: TextDecoration.overline),
                  ),
                ),
                Container(
//                  padding: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(color: Colors.red),
                  child: Text(
                    "english",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        backgroundColor: Colors.blue,
                        decoration: TextDecoration.overline),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  height: 100,
                  color: Colors.cyanAccent,
                ),
                Positioned(
                  left: 10,
                  top: 0,
                  child: Container(
//                  padding: EdgeInsets.only(right: 10),
                    height: 100,
                    decoration: BoxDecoration(color: Colors.red),
                    child: Center(
                      child: Text(
                        "中文中文中文中文中文",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            backgroundColor: Colors.blue,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 0,
                  child: Container(
//                  padding: EdgeInsets.only(right: 10),
                    height: 100,
                    decoration: BoxDecoration(color: Colors.red),
                    child: Center(
                      child: Text(
                        "english",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            backgroundColor: Colors.green,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 100,
                  top: 0,
                  child: Container(
//                  padding: EdgeInsets.only(right: 10),
                    height: 100,
                    decoration: BoxDecoration(color: Colors.red),
                    child: Center(
                      child: Text(
                        "english",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            backgroundColor: Colors.deepOrange,
                            decoration: TextDecoration.overline),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 150,
                  top: 0,
                  child: Container(
//                  padding: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(color: Colors.red),
                    child: Text(
                      "english",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          backgroundColor: Colors.brown,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                )
              ],
            ),
//            AnimatedSwitcher(),
            Container(
              height: 100,
              width: 100,
              alignment: Alignment.center,
              child: AnimatedIcon(
                icon: AnimatedIcons.play_pause,
                progress: _animationController,
              ),
            ),
            Text(
              "TextAlign.leftTextAlign.leftTextAlign.leftTextAlign.left",
              textAlign: TextAlign.left,
              style: TextStyle(backgroundColor: Colors.blue),
            ),
            Text(
              "TextAlign.centerTextAlign.centerTextAlign.centerTextAlign.centerTextAlign.centerTextAlign.center",
              textAlign: TextAlign.center,
              style: TextStyle(backgroundColor: Colors.blue),
            ),
            Text(
              "TextAlign.right",
              textAlign: TextAlign.right,
              style: TextStyle(backgroundColor: Colors.blue),
            ),
            InputChip(
              label: Text("老司机发的垃圾案例三等奖阿老师发的"),
              showCheckmark: true,
              onPressed: () {},
            ),
            SingleChildScrollView(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Text(
                    "阿拉斯加到付款啦饭到啦减肥的垃圾发电量近阿拉时代峰峻阿拉水电费就23123123123123拉萨的楼房建安路附近的",
                    style: TextStyle(
                        color: Colors.white, backgroundColor: Colors.black),
                    softWrap: false,
                  ),
                  Container(
                    width: 100,
                    color: Colors.white,
                  ),
                  Text(
                    "阿拉斯加到付款啦饭到啦减肥的垃圾发电量近阿拉时代峰峻阿拉水电费就23123123123123拉萨的楼房建安路附近的",
                    style: TextStyle(
                        color: Colors.white, backgroundColor: Colors.black),
                    softWrap: false,
                  )
                ],
              ),
            ),
            Align(
              child: Text("align"),
            )
          ],
        ));
  }
}

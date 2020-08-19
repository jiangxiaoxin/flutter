

import 'package:flutter/material.dart';
import 'dart:math' as Math;

class NewsListPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new _NewsListPageState();
  }
}

class _NewsListPageState extends State<NewsListPage> {

  static List<String> imgs = [
    "https://t7.baidu.com/it/u=3616242789,1098670747&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1598332109&t=8e1956e5dd844930f5db86504e301861",
    "https://t8.baidu.com/it/u=3571592872,3353494284&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1598332109&t=f1f8bd127667c5f47ce3728702ebbe87",
    "https://t9.baidu.com/it/u=3363001160,1163944807&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1598332109&t=912b311ff47332cbf0ad9c6eb6cfa9f8",
    "https://t9.baidu.com/it/u=583874135,70653437&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1598332109&t=96bf2ee4b832077d79e9accf87418528",
    "https://t8.baidu.com/it/u=581096476,2560083681&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1598332109&t=2bf52eb0053c13e9aeb96e0a0207d805"
  ];

  static List<String> titles = [
    "卡奥斯COSMOPlat助力青岛市北打造千亩高端新材料产业",
    "耕云种数，产业转型跑出“中国速度”",
    "爱上对方可垃圾大老地方啦饭到啦地方了达力芬阿里大方的阿拉水电费阿里大量发了大量撒旦法发送到发电房阿拉水电费ad放",
    "ListView是最常用的滑动组件。它在滚动方向上一个接一个地显示它的孩子"
  ];

//  static String timeStr = "2020-09-20 12:12:23";

  String getRandomImg() {
    final _random = Math.Random();
    final index = _random.nextInt(imgs.length);
    return imgs[index];
  }

  String getRandomTitle() {
    final _random = Math.Random();
    final index = _random.nextInt(titles.length);
    return titles[index];
  }

  String getTimeStr() {
    return "2020-09-20 12:12:23";
  }
  
  int getRandomItemCount() {
    final _random = Math.Random();
    final index = _random.nextInt(20);
    return Math.max(index, 10);
  }

  @override
  Widget build(BuildContext context) {
    var _itemCount = getRandomItemCount();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "新闻资讯"
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
        itemCount: _itemCount,
        itemBuilder: (BuildContext context, int index){
          EdgeInsets margin;
          if (index == 0) {
            margin = EdgeInsets.only(bottom: 7.5);
          } else if (index == _itemCount-1) {
            margin = EdgeInsets.only(top: 7.5);
          } else {
            margin = EdgeInsets.symmetric(vertical: 7.5);
          }
          return Container(
            margin: margin,
            child: Row(
              children: [
                /// item左侧图片
                Container(
                  width: 121,
                  height: 78,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: NetworkImage(
                        getRandomImg()
                      ),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                /// item右侧文本
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 13),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 14),
                          child: Text(
                            getRandomTitle(),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              getTimeStr(),
                              style: TextStyle(
                                color: Color.fromRGBO(154, 154, 154, 1),
                                fontSize: 13,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      )
    );
  }
}
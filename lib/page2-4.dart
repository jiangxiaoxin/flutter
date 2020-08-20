
import 'package:flutter/material.dart';
import 'dart:math' as Math;

class RegionListPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _RegionListState();
  }
}

class _RegionListState extends State<RegionListPage> {

  final headerText = "卡奥斯力求打造各行各业，服务传统行业转型提供技术与支持，打造全方位的只能服务技术，打造工业互联网平台。";
  var itemCount = 8;

  static List<String> imgs = [
    "https://t7.baidu.com/it/u=3616242789,1098670747&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1598332109&t=8e1956e5dd844930f5db86504e301861",
    "https://t8.baidu.com/it/u=3571592872,3353494284&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1598332109&t=f1f8bd127667c5f47ce3728702ebbe87",
    "https://t9.baidu.com/it/u=3363001160,1163944807&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1598332109&t=912b311ff47332cbf0ad9c6eb6cfa9f8",
    "https://t9.baidu.com/it/u=583874135,70653437&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1598332109&t=96bf2ee4b832077d79e9accf87418528",
    "https://t8.baidu.com/it/u=581096476,2560083681&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1598332109&t=2bf52eb0053c13e9aeb96e0a0207d805"
  ];

  static List<String> desc = [
    "一款在线教育培训服务软件，覆盖智能制造、物联网、人工智能、大数据、工业互联网等专业课程阿里基多拉沙发上发来的发电房暗室逢灯家乐福加大对非",
    "农业新生态，健康新生活！精选地标食材原产地的建立属于自己的智慧农业基地！",
    "农业新生态，健康新生活！精选地标食材原产地，为建立属于农业基地。"
  ];

  static List<String> titles = [
    "教育-行文智教",
    "农业-海优禾",
    "行业-海达源"
  ];

  String getRandomItem(List<String> itemList) {
    final _random = Math.Random();
    final index = _random.nextInt(itemList.length);
    return itemList[index];
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "区域"
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15),
        decoration: BoxDecoration(
            color: Color.fromRGBO(245,245,245,1)
//        color: Colors.red
        ),
        child: ListView.builder(
          padding: EdgeInsets.only(bottom: 25, top: 17),
          itemCount: itemCount,
          itemBuilder: (BuildContext context, int index) {
            if(index == 0) {
              return Container(
//                padding: EdgeInsets.only(top: 17),
//                decoration: BoxDecoration(
//                  color: Colors.red
//                ),
                child: Text(
                  headerText,
                  style: TextStyle(
                      color: Color.fromRGBO(102, 102, 102, 1),
                      fontSize: 15
                  ),
                ),
              );
            } else {
//              double bottom = 0;
//              if (index == itemCount - 1) {
//                bottom = 25;
//              }
              return Container(
                margin: EdgeInsets.only(top: 17),
//                decoration: BoxDecoration(
//                  borderRadius: BorderRadius.all(Radius.circular(8.0))
//                ),
                child: Column(
                  children: [
                    Container(
                      height: 155,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                          image: DecorationImage(
                              image: NetworkImage(
                                  getRandomItem(imgs)
                              ),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 11),
                                  child: Text(
                                    getRandomItem(titles),
                                    style: TextStyle(
                                        color: Color.fromRGBO(52, 52, 52, 1),
                                        fontSize: 16
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  getRandomItem(desc),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Color.fromRGBO(102,102,102, 1),
                                      fontSize: 14
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
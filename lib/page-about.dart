import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AboutPageState();
  }
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("关于卡奥斯"),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          // 顶部图片
          Container(
            child: Image.network(
              "https://img.pic88.com/preview/2020/08/05/15966367521434779.jpg!s640w",
              width: double.infinity,
              height: 138,
              fit: BoxFit.cover,
            ),
          ),
//          公司介绍
          Container(
            width: double.infinity,
            color: Color(0xffedf5ff),
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Text(
              "公司介绍",
              style: TextStyle(color: Color(0xff343434), fontSize: 17),
              textAlign: TextAlign.center,
            ),
          ),
//          又是一张图片
          Container(
            child: Image.network(
              "https://img.pic88.com/preview/2020/08/05/15966367521434779.jpg!s640w",
              width: double.infinity,
              height: 124,
              fit: BoxFit.cover,
            ),
          ),
//          一堆文字
          Container(
            color: Color(0xffedf5ff),
            padding: EdgeInsets.fromLTRB(20, 18, 20, 23),
            child: Text(
              "     海尔卡奥斯物联生态科技有限公司成立于2017 年 4 月，主要运营和推广工业互联网平台，其业务涵盖工业互联网平台建设和运营、工业智能技术研究和应用、智能工厂建设及软硬件集成服务（精密模具、智能装备和智能控制）、能源管理等业务板块，助力中国企业实现大规模制造向大规模定制升级快速转型，始终秉承国家级工业互联网平台的使命，为用户、企业和资源创造和分享价值，创引领全球的工业互联网生态品牌。",
              style: TextStyle(color: Color(0xff666666), fontSize: 14),
            ),
          ),
//          愿景使命
          Container(
            width: double.infinity,
            height: 172,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: new NetworkImage(
                      "https://img.pic88.com/preview/2020/08/05/15966367521434779.jpg!s640w",
                    ),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 14),
                    child: Text("愿景使命",
                        style:
                            TextStyle(color: Color(0xffffffff), fontSize: 17)),
                  ),
                  Text(
                    "       推动新一代信息技术与制造业的深度融合，致力于成为世界领先的智能制造和大规模定制解决方案综合服务商，助力中国企业快速升级，为中国“智造”贡献一个世界级的工业互联网平台。",
                    style: TextStyle(color: Color(0xffffffff), fontSize: 14),
                  )
                ],
              ),
            ),
          ),
//          平台定位及介绍
          Container(
            width: double.infinity,
            height: 154,
            color: Color(0xffedf5ff),
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 14),
                    child: Text("平台定位及介绍",
                        style:
                            TextStyle(color: Color(0xff343434), fontSize: 17)),
                  ),
                  Text(
                    "     卡奥斯是在海尔“人单合一”模式指引下产生的不断孕育新物种的生态品牌平台，旨在为混沌中寻求新生的企业提供转型升级解决方案，联合各方资源缔造共创共享、面向未来的物联网新生态。",
                    style: TextStyle(color: Color(0xff666666), fontSize: 14),
                  )
                ],
              ),
            ),
          ),
//          卡奥斯由来
          Container(
            width: double.infinity,
            height: 217,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: new NetworkImage(
                      "https://img.pic88.com/preview/2020/08/05/15966367521434779.jpg!s640w",
                    ),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 14),
                    child: Text("卡奥斯由来",
                        style:
                            TextStyle(color: Color(0xffffffff), fontSize: 17)),
                  ),
                  Text(
                    "     卡奥斯意为“混沌”，即世界一切的起源。卡奥斯的意思是从无中生有，从没有的东西中产生新的物种。物联网时代，事物发展有三个特点：一是无界，二是无价，三是无序，无序即混沌。对当今企业来讲，用户需求瞬息万变，企业需在混沌中寻求新生。",
                    style: TextStyle(color: Color(0xffffffff), fontSize: 14),
                  )
                ],
              ),
            ),
          ),
//        业务介绍
          Column(
            children: [
//          标题
              Container(
                color: Color(0xff208cef),
                padding: EdgeInsets.only(top: 18),
                width: double.infinity,
                height: 90,
                child: Text(
                  "业务介绍",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                  textAlign: TextAlign.center,
                ),
              ),
              Stack(
                overflow: Overflow.visible,
                children: [
                  Container(
                    color: Color(0xffecf5ff),
                    width: double.infinity,
                    height: 335,
                  ),
//                  GridView.count(
//                    physics: NeverScrollableScrollPhysics(),
//                    shrinkWrap: true,
//                    crossAxisCount: 2,
//                    crossAxisSpacing: 10,
//                    mainAxisSpacing: 0,
//                    padding: EdgeInsets.only(left: 10, right: 10),
//                    childAspectRatio: 0.489,
////                    grid item
//                    children: [
//                      Container(
//                        decoration: BoxDecoration(
//                            color: Colors.white,
//                            borderRadius: BorderRadius.all(Radius.circular(8))),
//                        child: Column(
//                          children: [
//                            Center(
//                              child: Image.network(
//                                "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1598237275&di=80f99285efaeac64d3f7357af3cd22c2&src=http://a3.att.hudong.com/14/75/01300000164186121366756803686.jpg",
//                                width: 40,
//                                height: 40,
//                                fit: BoxFit.cover,
//                              ),
//                            ),
//                            Container(
//                              padding: EdgeInsets.only(left: 10, right: 10),
//                              child: Text(
//                                "卡奥斯是全球首个引入用户全流程参与体验的工业互联网平台，打造模块化、云化形成交互定制、开放创新、精准营销、模块采购、智能制造、智慧物流和智慧服务7大模块系列产品矩阵，实践大规模定制模式，并持续为企业赋能。",
//                                style: TextStyle(
//                                    color: Color(0xff666666), fontSize: 14),
//                              ),
//                            )
//                          ],
//                        ),
//                      ),
//                      Container(
//                        decoration: BoxDecoration(
//                            color: Colors.white,
//                            borderRadius: BorderRadius.all(Radius.circular(8))),
//                        child: Column(
//                          children: [
//                            Center(
//                              child: Image.network(
//                                "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1598237275&di=80f99285efaeac64d3f7357af3cd22c2&src=http://a3.att.hudong.com/14/75/01300000164186121366756803686.jpg",
//                                width: 40,
//                                height: 40,
//                                fit: BoxFit.cover,
//                              ),
//                            ),
//                            Container(
//                              padding: EdgeInsets.only(left: 10, right: 10),
//                              child: Text(
//                                "卡奥斯是全球首个引入用户全流程参与体验的工业互联网平台，打造模块化、云化形成交互定制、开放创新、精准营销、模块采购、智能制造、智慧物流和智慧服务7大模块系列产品矩阵，实践大规模定制模式，并持续为企业赋能。",
//                                style: TextStyle(
//                                    color: Color(0xff666666), fontSize: 14),
//                              ),
//                            )
//                          ],
//                        ),
//                      )
//                    ],
//                  ),
                  Positioned(
                    top: 20,
                    child: GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 0,
                      padding: EdgeInsets.only(left: 10, right: 10),
                      childAspectRatio: 0.489,
//                    grid item
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: Column(
                            children: [
                              Center(
                                child: Image.network(
                                  "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1598237275&di=80f99285efaeac64d3f7357af3cd22c2&src=http://a3.att.hudong.com/14/75/01300000164186121366756803686.jpg",
                                  width: 40,
                                  height: 40,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Text(
                                  "卡奥斯是全球首个引入用户全流程参与体验的工业互联网平台，打造模块化、云化形成交互定制、开放创新、精准营销、模块采购、智能制造、智慧物流和智慧服务7大模块系列产品矩阵，实践大规模定制模式，并持续为企业赋能。",
                                  style: TextStyle(
                                      color: Color(0xff666666), fontSize: 14),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: Column(
                            children: [
                              Center(
                                child: Image.network(
                                  "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1598237275&di=80f99285efaeac64d3f7357af3cd22c2&src=http://a3.att.hudong.com/14/75/01300000164186121366756803686.jpg",
                                  width: 40,
                                  height: 40,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Text(
                                  "卡奥斯是全球首个引入用户全流程参与体验的工业互联网平台，打造模块化、云化形成交互定制、开放创新、精准营销、模块采购、智能制造、智慧物流和智慧服务7大模块系列产品矩阵，实践大规模定制模式，并持续为企业赋能。",
                                  style: TextStyle(
                                      color: Color(0xff666666), fontSize: 14),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),

//              下面的文字
              Container(
                color: Color(0xffecf5ff),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text(
                  "2019年，卡奥斯以357.17亿元的品牌价值，挺进中国品牌价值百强榜，成为唯一入榜的工业互联网平台。卡奥斯平台被国家工信部认定为跨行业、跨领域的工业互联网十大“双跨”平台之首，而且位居全球知名机构Forrester工业互联网领导者第一象限。",
                  style: TextStyle(color: Color(0xff666666), fontSize: 14),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

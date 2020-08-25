import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
              // 中间两个框
              Stack(
                overflow: Overflow.visible,
                children: [
                  Container(
                    color: Color(0xffecf5ff),
                    width: MediaQuery.of(context).size.width,
                    height: 335,
                  ),
                  Positioned(
                    top: -37,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: GridView.count(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 0,
                        padding: EdgeInsets.only(left: 10, right: 10),
                        childAspectRatio: 0.515,
//                    grid item
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
//                                border:
//                                    Border.all(color: Colors.red, width: 1.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
//                            child = image + text
                            child: Stack(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      padding:
                                          EdgeInsets.only(top: 15, bottom: 15),
                                      child: Center(
                                        child: Image.network(
                                          "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1598237275&di=80f99285efaeac64d3f7357af3cd22c2&src=http://a3.att.hudong.com/14/75/01300000164186121366756803686.jpg",
                                          width: 40,
                                          height: 40,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.only(left: 10, right: 10),
                                      child: Text(
                                        "卡奥斯是全球首个引入用户全流程参与体验的工业互联网平台，打造模块化、云化形成交互定制、开放创新、精准营销、模块采购、智能制造、智慧物流和智慧服务7大模块系列产品矩阵，实践大规模定制模式，并持续为企业赋能。",
                                        style: TextStyle(
                                            color: Color(0xff666666),
                                            fontSize: 14),
                                      ),
                                    )
                                  ],
                                ),
                                Positioned(
                                  left: 7,
                                  top: 7,
                                  child: ClipOval(
                                      child: Container(
                                    width: 7,
                                    height: 7,
                                    color: Colors.blue,
                                  )),
                                ),
                                Positioned(
                                  right: 7,
                                  top: 7,
                                  child: ClipOval(
                                      child: Container(
                                    width: 7,
                                    height: 7,
                                    color: Colors.blue,
                                  )),
                                )
                              ],
                            ),
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                              child: Stack(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(
                                            top: 15, bottom: 15),
                                        child: Center(
                                          child: Image.network(
                                            "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1598237275&di=80f99285efaeac64d3f7357af3cd22c2&src=http://a3.att.hudong.com/14/75/01300000164186121366756803686.jpg",
                                            width: 40,
                                            height: 40,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Text(
                                          "卡奥斯已经孕育出职业教育、房车、农业、模具、教育、服装等15个行业生态，在全国建立了7大中心，包括山东半岛经济带中心、长三角一体化中心、京津冀中心、粤港澳大湾区中心、长江中游经济带中心、川渝经济带中心、关中平原经济带中心，覆盖全国12大区域，并在20个国家复制推广。",
                                          style: TextStyle(
                                              color: Color(0xff666666),
                                              fontSize: 14),
                                        ),
                                      )
                                    ],
                                  ),
                                  Positioned(
                                    left: 7,
                                    top: 7,
                                    child: ClipOval(
                                        child: Container(
                                      width: 7,
                                      height: 7,
                                      color: Colors.blue,
                                    )),
                                  ),
                                  Positioned(
                                    right: 7,
                                    top: 7,
                                    child: ClipOval(
                                        child: Container(
                                      width: 7,
                                      height: 7,
                                      color: Colors.blue,
                                    )),
                                  )
                                ],
                              ))
                        ],
                      ),
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
              ),
//              下面带一行icon的字
              Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            left: 20, top: 20, right: 20, bottom: 25),
                        child: Text(
                          "卡奥斯先后主导和参与了31项国家标准、6项国际标准的制定，是唯一被IEEE、ISO、IEC三大国际组织批准牵头制定大规模定制模式标准的单位，成为全球公认的大规模定制领域标准的制定者和主导者。卡奥斯成为唯一在全球同一国家拥有2家灯塔工厂的企业，并牵头世界5家灯塔工厂发布了《灯塔工厂汉诺威倡议》，为全球企业转型升级提供方法论。",
                          style:
                              TextStyle(color: Color(0xff666666), fontSize: 14),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.network(
                              "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1597649417&di=57084f26a40f3ec7208d043a90217931&src=http://a3.att.hudong.com/14/75/01300000164186121366756803686.jpg",
                              width: 78,
                              height: 90,
                              fit: BoxFit.cover,
                            ),
                            Image.network(
                              "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1597649417&di=57084f26a40f3ec7208d043a90217931&src=http://a3.att.hudong.com/14/75/01300000164186121366756803686.jpg",
                              width: 78,
                              height: 90,
                              fit: BoxFit.cover,
                            ),
                            Image.network(
                              "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1597649417&di=57084f26a40f3ec7208d043a90217931&src=http://a3.att.hudong.com/14/75/01300000164186121366756803686.jpg",
                              width: 78,
                              height: 90,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            ],
          ),
//          发展历程的标题
          Container(
            width: double.infinity,
            height: 58,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      "https://t7.baidu.com/it/u=3616242789,1098670747&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1598332109&t=8e1956e5dd844930f5db86504e301861",
                    ),
                    fit: BoxFit.cover)),
            child: Center(
              child: Text("发展历程",
                  style: TextStyle(color: Colors.white, fontSize: 17)),
            ),
          ),
//          这下面就是发展历程时间线了
          Container(
            color: Color(0xffecf5ff),
//            一个item就是一年的所有
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Column(
                  children: [
//                    年份:"2020年"
                    Container(
//                      color: Colors.red,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(left: 15, top: 21, bottom: 9),
                      child: Text(
                        "2020年",
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(color: Color(0xff0084FF), fontSize: 18),
                      ),
                    ),
//                  每个月份的
                    Container(
                        margin: EdgeInsets.only(left: 22),
                        padding: EdgeInsets.only(bottom: 14),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border(
                                left: BorderSide(
                                    width: 1, color: Color(0xff0084ff)))),
                        child: Stack(
                          overflow: Overflow.visible,
                          children: [
                            Row(
                              children: [
//                            “12月”
                                Container(
//                                  color: Colors.yellow,
                                  decoration: BoxDecoration(
                                    color: Colors.yellow,
//                                      border: Border(
//                                          left: BorderSide(
//                                              color: Color(0xffecf5ff),
//                                              width: 1))
                                  ),
                                  padding: EdgeInsets.only(
                                      left: 12, right: 16, top: 5),
                                  child: Text(
                                    "12月",
                                    style: TextStyle(
                                        color: Color(0xff0084ff), fontSize: 15),
                                  ),
                                ),
//                            12月的大事件描述文字
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 19),
                                    padding: EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                        top: 13,
                                        bottom: 19),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Text(
                                      "2020年6月27日，央视《新闻联播》头条报道海尔卡奥斯稳定提升产业链的样板案例。2020年6月29日，工信部《通信产业报》公布《2020工业互联网新基建先锋榜TOP30》海尔卡奥斯排名第一。",
                                      style: TextStyle(
                                          color: Color(0xff666666),
                                          fontSize: 14),
                                    ),
                                  ),
                                )
                              ],
                              crossAxisAlignment: CrossAxisAlignment.start,
                            ),
                            Positioned(
                              top: 10,
                              left: -7,
                              child: ClipOval(
                                child: Container(
                                  width: 14,
                                  height: 14,
                                  color: Color(0xff9cd0ff),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 13,
                              left: -4,
                              child: ClipOval(
                                child: Container(
                                  width: 8,
                                  height: 8,
                                  color: Color(0xff0084ff),
                                ),
                              ),
                            ),
                          ],
                        )),
                    Container(
                        margin: EdgeInsets.only(left: 22),
                        padding: EdgeInsets.only(bottom: 14),
                        decoration: BoxDecoration(
                            border: Border(
                                left: BorderSide(
                                    width: 1, color: Color(0xff0084ff)))),
                        child: Stack(
                          overflow: Overflow.visible,
                          children: [
                            Row(
                              children: [
//                            “12月”
                                Container(
//                                  color: Colors.yellow,
                                  padding: EdgeInsets.only(
                                      left: 12, right: 16, top: 5),
                                  child: Text(
                                    "9月",
                                    style: TextStyle(
                                        color: Color(0xff0084ff), fontSize: 15),
                                  ),
                                ),
//                            12月的大事件描述文字
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 19),
                                    padding: EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                        top: 13,
                                        bottom: 19),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Text(
                                      "2020年6月27日，央视《新闻联播》头条报道海尔卡奥斯稳定提升产业链的样板案例。2020年6月29日，工信部《通信产业报》公布《2020工业互联网新基建先锋榜TOP30》海尔卡奥斯排名第一。",
                                      style: TextStyle(
                                          color: Color(0xff666666),
                                          fontSize: 14),
                                    ),
                                  ),
                                )
                              ],
                              crossAxisAlignment: CrossAxisAlignment.start,
                            ),
                            Positioned(
                              top: 10,
                              left: -7,
                              child: ClipOval(
                                child: Container(
                                  width: 14,
                                  height: 14,
                                  color: Color(0xff9cd0ff),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 13,
                              left: -4,
                              child: ClipOval(
                                child: Container(
                                  width: 8,
                                  height: 8,
                                  color: Color(0xff0084ff),
                                ),
                              ),
                            ),
                          ],
                        )),
                    Container(
                        margin: EdgeInsets.only(left: 22),
                        padding: EdgeInsets.only(bottom: 14),
                        decoration: BoxDecoration(
//                          左侧的蓝色边框
//                            color: Colors.red,
                            border: Border(
                                left: BorderSide(
                                    width: 1, color: Color(0xff0084ff)))),
                        child: Stack(
                          overflow: Overflow.visible,
                          children: [
                            Row(
                              children: [
//                            “12月”
                                Container(
//                                  color: Colors.yellow,
                                  padding: EdgeInsets.only(
                                      left: 12, right: 16, top: 5),
                                  child: Text(
                                    "8月",
                                    style: TextStyle(
                                        color: Color(0xff0084ff), fontSize: 15),
                                  ),
                                ),
//                            12月的大事件描述文字
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 19),
                                    padding: EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                        top: 13,
                                        bottom: 19),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Text(
                                      '2020年5月8日，海尔卡奥斯"疫情物资和复工复产大数据平台解决方案"入选工信部《支撑疫情防控和复工复产复课大数据产品和解决方案名单》。2020年5月28日，海尔卡奥斯工业互联网平台入选中国科学院《互联网周刊》2020值得关注的工业互联网平台，位居榜首，也是连续三年入选并位列榜首。',
                                      style: TextStyle(
                                          color: Color(0xff666666),
                                          fontSize: 14),
                                    ),
                                  ),
                                )
                              ],
                              crossAxisAlignment: CrossAxisAlignment.start,
                            ),
                            Positioned(
                              top: 10,
                              left: -7,
                              child: ClipOval(
                                child: Container(
                                  width: 14,
                                  height: 14,
                                  color: Color(0xff9cd0ff),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 13,
                              left: -4,
                              child: ClipOval(
                                child: Container(
                                  width: 8,
                                  height: 8,
                                  color: Color(0xff0084ff),
                                ),
                              ),
                            ),
                          ],
                        )),
                    Container(
                        margin: EdgeInsets.only(
                            left: 22,
                            bottom:
                                14), //TODO:这里要对年度的月份数做判断，第一个和最后一个item要特殊处理margin和padding，其余中间的是一样的
//                        padding: EdgeInsets.only(bottom: 14),
                        decoration: BoxDecoration(
                            border: Border(
                                left: BorderSide(
                                    width: 1, color: Color(0xff0084ff)))),
                        child: Stack(
                          overflow: Overflow.visible,
                          children: [
                            Row(
                              children: [
//                            “12月”
                                Container(
//                                  color: Colors.yellow,
                                  padding: EdgeInsets.only(
                                      left: 12, right: 16, top: 5),
                                  child: Text(
                                    "1月",
                                    style: TextStyle(
                                        color: Color(0xff0084ff), fontSize: 15),
                                  ),
                                ),
//                            12月的大事件描述文字
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 19),
                                    padding: EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                        top: 13,
                                        bottom: 19),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Text(
                                      "2020年4月7日，海尔卡奥斯入选中国科学院《互联网周刊》《2020新基建分类排行榜》，位列《2020工业互联网平台企业排行》榜首。",
                                      style: TextStyle(
                                          color: Color(0xff666666),
                                          fontSize: 14),
                                    ),
                                  ),
                                )
                              ],
                              crossAxisAlignment: CrossAxisAlignment.start,
                            ),
                            Positioned(
                              top: 10,
                              left: -7,
                              child: ClipOval(
                                child: Container(
                                  width: 14,
                                  height: 14,
                                  color: Color(0xff9cd0ff),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 13,
                              left: -4,
                              child: ClipOval(
                                child: Container(
                                  width: 8,
                                  height: 8,
                                  color: Color(0xff0084ff),
                                ),
                              ),
                            ),
                          ],
                        ))
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

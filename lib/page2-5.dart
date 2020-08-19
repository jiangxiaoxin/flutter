import 'package:flutter/material.dart';
import 'dart:math' as Math;

class SolutionListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SolutionListPageState();
  }
}

/**
 * 最外层一个container，可以设置整体的padding和背景色
 * 里面一个listview，因为不定数量，说以用builder
 * 每个listitem都是个container，里面一个column
 * column第一个是row-expanded，扩充
 * 然后是个gridview，用builder来做
 */

class _SolutionListPageState extends State<SolutionListPage> {
  var listItemCount = 4;
  var gridItemCount = 4;

  static List<String> sections = ["行业解决方案", "通用解决方案"];

  static List<String> titles = ["行业解决方案", "通用解决方案"];

  static List<String> desc = [
    "蜡防静电垃圾饭到啦解放东路案件理发店jaslfjdla地方了安吉拉对方按劳动法",
    "as辣椒粉倒垃圾啊浪费讲道理世纪东方啦地方了阿斯顿发了奥斯卡了发烧了大量放到",
    "aljsdflajfdlajfdl a安静地放垃圾饭到啦计算 地方了达力芬阿里发牢骚地方了阿斯蒂芬f",
    "aldujfqpoauejfajsdflajmsdlfjaodlfjal;fjdl;ajsdfl;ajsdf"
  ];

  static List<String> imgs = [
    "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3256100974,305075936&fm=26&gp=0.jpg",
    "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3603927680,1115263328&fm=26&gp=0.jpg",
    "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2076373339,2173673275&fm=26&gp=0.jpg",
    "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1387819602,1373790826&fm=26&gp=0.jpg",
    "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2601900707,917050054&fm=26&gp=0.jpg",
    "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1264363610,237150817&fm=26&gp=0.jpg"
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
          title: Text("产品解决方案"),
        ),
        body: Container(
            padding: EdgeInsets.only(top: 17, bottom: 17), // 整体的上下有个padding。整体的bottom有个17，每个gridview放在padding里，bottom有个19，这样整体上最下面空白36，gridview之间又正好离开19
            decoration: BoxDecoration(
//              color: Color.fromRGBO(245,245,245,1)
                ),
            child: ListView.builder(
              itemCount: listItemCount,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding:
                      EdgeInsets.only(left: 15, right: 15), //整体有个左右的padding
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 13),
                            child: Text(
                              "行业解决方案_$index",
                              style: TextStyle(
                                  color: Color.fromRGBO(52, 52, 52, 1),
                                  fontSize: 17),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 19),
                        child: GridView.builder(
                          shrinkWrap: true,
                          itemCount: gridItemCount,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 11,
                                  crossAxisSpacing: 11,
                                  childAspectRatio: 0.779 // 这个不设置就会有默认值1.0，width和height相等，而gridview设置好后会自动计算出width，再按照这个得出height，而不是按照子元素加起来有多高来算
                                ),
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                  // color: Colors.white,
                                  // color: Colors.green,
                                  // border: Border.all(color: Colors.red, width: 1.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.1),
                                      // color: Colors.red,
                                      offset: Offset(2, 2),
                                      blurRadius: 4.0,
                                      // spreadRadius: 4.0
                                    )
                                  ]
                                ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    // 放到一个Row里才能让后面让图片占满宽
                                    children: [
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(8),
                                              topRight: Radius.circular(8)),
                                          child: Image.network(
                                            getRandomItem(imgs),
                                            height: 140,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    // 下面的文字
                                    padding: EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        // color: Colors.pink,
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(8),
                                            bottomRight: Radius.circular(8)),
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //     color: Color.fromRGBO(0, 0, 0, 0.1),
                                        //     // color: Colors.red,
                                        //     offset: Offset(2, 2),
                                        //     blurRadius: 5.0,
                                        //     // spreadRadius: 4.0
                                        //   )
                                        // ]
                                      ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                                child: Container(
                                              padding: EdgeInsets.only(
                                                  bottom: 8), // 11
                                              child: Text(
                                                "模具行业解决方案",
                                                // textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        52, 52, 52, 1),
                                                    fontSize: 16),
                                              ),
                                            ))
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                "一款在线教育培训服务 软件，覆盖智能制造一款在线教育培训服务 软件，覆盖智能制造一款在线教育培训服务 软件，覆盖智能制造",
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      102, 102, 102, 1),
                                                  fontSize: 14,
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
                          },
                        ),
                      )
                    ],
                  ),
                );
              },
            )));
  }
}

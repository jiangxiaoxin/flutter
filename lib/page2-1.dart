import 'package:flutter/material.dart';

class KhaosPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _KhaosPageState();
  }
}

class _KhaosPageState extends State<KhaosPage> {
  @override
  Widget build(BuildContext context) {
    final imgUrl =
        "https://t8.baidu.com/it/u=3571592872,3353494284&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1598428828&t=e25ab3b3d3e00d8edbd9aabfa9818481";

    return Scaffold(
      appBar: AppBar(
        title: Text("了解卡奥斯"),
      ),
      body: ListView(
        children: [
          // 顶部图片
          SizedBox(
            width: double.infinity,
            height: 138,
            child: Image.network(
              imgUrl,
              fit: BoxFit.cover,
            ),
          ),
          // 一排四个icon
          Container(
            padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
            decoration: BoxDecoration(
              color: Color.fromRGBO(245, 245, 245, 1)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 9),
                      child: Image.network(
                        "https://t8.baidu.com/it/u=3571592872,3353494284&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1598428828&t=e25ab3b3d3e00d8edbd9aabfa9818481",
                        width: 36,
                        height: 36,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      "关于卡奥斯",
                      style: TextStyle(
                          color: Color.fromRGBO(51, 51, 51, 1),
                          fontSize: 13
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 9),
                      child: Image.network(
                        "https://t7.baidu.com/it/u=3616242789,1098670747&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1598435760&t=d55059e9d6f282c2684e18fae61dab93",
                        width: 36,
                        height: 36,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      "工业APP",
                      style: TextStyle(
                        color: Color.fromRGBO(51, 51, 51, 1),
                        fontSize: 13
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 9),
                      child: Image.network(
                        "https://t7.baidu.com/it/u=3204887199,3790688592&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1598435760&t=53108cdcb1f15d71230af9bce7376f97",
                        width: 36,
                        height: 36,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      "B2B商城",
                      style: TextStyle(
                          color: Color.fromRGBO(51, 51, 51, 1),
                          fontSize: 13
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 9),
                      child: Image.network(
                        "https://t9.baidu.com/it/u=583874135,70653437&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1598435760&t=88b03c8f2f32d07b0e6b050bb09fd392",
                        width: 36,
                        height: 36,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      "B2C商城",
                      style: TextStyle(
                          color: Color.fromRGBO(51, 51, 51, 1),
                          fontSize: 13
                      ),
                    )
                  ],
                ),

              ],
            ),
          ),
          // 喇叭
          Container(
//            margin: EdgeInsets.only(bottom: 12),
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            color: Color.fromRGBO(245, 245, 245, 1),
            child: Container(
              padding: EdgeInsets.only(left: 53, right: 53, top: 17, bottom: 17),
              decoration: BoxDecoration(
//                color: Colors.blue,
                borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1597841987461&di=a41a95f65df7f6c2ec478bec40ab3dbd&imgtype=0&src=http%3A%2F%2Fb.hiphotos.baidu.com%2Fzhidao%2Fpic%2Fitem%2F2cf5e0fe9925bc31c58bcbc05cdf8db1ca137090.jpg"
                      ),
                    fit: BoxFit.cover
                  ),
              ),
              child: Text(
                "卡奥斯COSMOPlat助力陕西泰德卡奥斯COSMOPlat助力陕西泰德卡奥斯COSMOPlat助力陕西泰德",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15
                ),
              ),
            )
          ),
          // 三个资讯

          // 热门方案，可以拆成row+row，可以用gridview
        ],
      ),
    );
  }
}

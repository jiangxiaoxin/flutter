

import 'package:flutter/material.dart';

class EvaluationPage extends StatefulWidget {
  EvaluationPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return new _EvaluationPageState();
  }

}


class _EvaluationPageState extends State<EvaluationPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("企业互联网成熟度测评画像"),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(22,30,78,1.0)
        ),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Center(
                child: Container(
                  padding: EdgeInsets.fromLTRB(70, 10, 70, 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color.fromRGBO(8,170,188,1.0), width: 1.0)
                  ),
                  child: Text(
                    "海尔集团",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(0,255,255,1.0)
                    ),
                  ),
                ),
            )
            ),
            SizedBox(
              height: 200,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.lightGreen
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Image.network(
                        "https://dss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1089874897,1268118658&fm=26&gp=0.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 10,
                      child: Container(
//                        padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 40.0),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(79,95,204,1.0),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.red, width: 1.0)
                        ),
                        child: Text(
                          "轻工业企业",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
//                            backgroundColor: Colors.cyanAccent,
                          ),
                        ),
                      )
                    ),
                    Positioned(
                      right: 10,
                      bottom: 10,
                      child: Text(
                        "hello",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_app/evaluation.dart';
import 'package:flutter_app/page2-2.dart';
import 'package:flutter_app/page2-3.dart';
import 'package:flutter_app/page2-4.dart';
import 'package:flutter_app/page2-5.dart';
import 'package:flutter_app/text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
//      home: MyHomePage(title: 'home page'),
//    home: EvaluationPage(),
//    home: NewsListPage(),
//    home: IndustryListPage(),
//    home: RegionListPage(),
    home: SolutionListPage(),
//    home: TextPage(),
    );

  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String dropValue = "1";

  List<DropdownMenuItem<String>> getDropdownItems() {
    return ['1', '2', '3', '4']
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Center(
          child: Text(
            value,
            textAlign: TextAlign.center,
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(22,30,78,1.0)
        ),
        child: ListView(
          children: [
            Image.network(
              "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1597649417&di=57084f26a40f3ec7208d043a90217931&src=http://a3.att.hudong.com/14/75/01300000164186121366756803686.jpg",
              height: 150,
              fit: BoxFit.cover,
            ),
            Container(
//              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
//              color: Color.fromRGBO(22,30,78,1.0),
//                  color: Colors.red,
                  border: Border.all(
                      color: Colors.lightBlue,
                      width: 1.0
                  )
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Text(
                            "拉萨可见度分厘卡是发达啦大幅拉升发达啦啊四点零分就爱上了发大水了的法拉盛的发射点发",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.lightBlue
                            ),
                          ),
                        )
                      ),
//                      Text(
//                        "hello",
//                        style: TextStyle(
//                          color: Colors.white
//                        ),
//                      )
                      SizedBox(
                          width: 100.0,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                isExpanded: true,
                                dropdownColor: Color.fromRGBO(22,30,78,1.0),
                                value: dropValue,
                                onChanged: (String newValue) {
                                  setState(() {
                                    this.dropValue = newValue;
                                  });
                                },
                                items: this.getDropdownItems(),
                                style: TextStyle( ///每一个item的样式，包括展示的
                                    color: Colors.white,
                                    backgroundColor: Color.fromRGBO(22,30,78,1.0),
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic
                                ),
                              ),
                            )
                          )
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  isExpanded: true,
                  dropdownColor: Color.fromRGBO(22,30,78,1.0),
                  value: dropValue,
                  onChanged: (String newValue) {
                    setState(() {
                      this.dropValue = newValue;
                    });
                  },
                  items: this.getDropdownItems(),
                  style: TextStyle( ///每一个item的样式，包括展示的
                    color: Colors.white,
                    backgroundColor: Color.fromRGBO(22,30,78,1.0),
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
//                    decoration: TextDecoration.lineThrough
                  ),
                ),
              )
            ),
            Container(
                decoration: BoxDecoration(
                    color: Colors.white
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    dropdownColor: Color.fromRGBO(22,30,78,1.0),
                    value: dropValue,
                    onChanged: (String newValue) {
                      setState(() {
                        this.dropValue = newValue;
                      });
                    },
                    items: [
                      DropdownMenuItem(
                        value: "1",
                        child: Text("1"),
                      ),
                      DropdownMenuItem(
                        value: "2",
                        child: Text("2"),
                      ),
                      DropdownMenuItem(
                        value: "3",
                        child: Text("3"),
                      ),
                      DropdownMenuItem(
                        value: "4",
                        child: Text("4"),
                      )
                    ],
                    selectedItemBuilder: (context) {
                      return [
                        Center(
                          child: Expanded(
                            child: Container(

                              padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent,

                          ),
                          child: Expanded(
                            child: Text(
                              "1",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.red,
//                                    backgroundColor: Colors.amber,
                                  backgroundColor: Colors.deepPurpleAccent

                              ),
                            ),
                          ),
                        ),
                          )
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Expanded(
                              child: Text(
                                "2",
                                style: TextStyle(
                                    color: Colors.red

                                ),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Expanded(
                              child: Text(
                                "3",
                                style: TextStyle(
                                    color: Colors.red
                                ),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Expanded(
                              child: Text(
                                "4",
                                style: TextStyle(
                                    color: Colors.red
                                ),
                              ),
                            ),
                          ),
                        ),
                      ];
                    },
                    style: TextStyle( ///每一个item的样式，包括展示的
                      color: Colors.white,
                      backgroundColor: Color.fromRGBO(22,30,78,1.0),
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
//                    decoration: TextDecoration.lineThrough
                    ),
                  ),
                )
            )
          ],
        ),
      )
    );
  }
}

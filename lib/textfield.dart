import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextFieldState();
  }
}

class _TextFieldState extends State<TextFieldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("textfield"),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(color: Colors.cyanAccent),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Container(
                    color: Colors.deepPurpleAccent,
                    child: Icon(Icons.person),
                  ),
                  labelText: "label",
                  labelStyle: TextStyle(color: Colors.red, fontSize: 20),
                  helperText: "请输入名字",
                  helperStyle: TextStyle(color: Colors.blue),
                  hintText: "haha",
                  hintStyle: TextStyle(color: Colors.green)),
              style: TextStyle(
                  color: Colors.brown,
                  fontSize: 14,
                  backgroundColor: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
              maxLength: 100,
//            obscureText: true, // 输入密码
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(color: Colors.cyanAccent),
            child: TextField(
              decoration: InputDecoration(
//                  prefixIcon: Container(
//                    color: Colors.deepPurpleAccent,
//                    child: Text("1"),
////                    alignment: Alignment.center,
//                  ),
//                  prefixText: "+86",

//                  prefix: Container(
//                    padding: EdgeInsets.only(right: 10),
//                    decoration: BoxDecoration(
//                      color: Colors.red,
//                    ),
//                    child: Text("+17"),
//                  ),
//                  prefixStyle: TextStyle(color: Colors.yellow, fontSize: 12),
//                  prefixText: "sdf",
                  suffixText: "天",
//                  labelText: "label",
//                  labelStyle: TextStyle(color: Colors.red, fontSize: 20),
//                  helperText: "请输入名字",
//                  helperStyle: TextStyle(color: Colors.blue),
                  hintText: "haha",
                  hintStyle: TextStyle(color: Colors.green)),
              style: TextStyle(
                  color: Colors.brown,
                  fontSize: 40,
                  backgroundColor: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
//              maxLength: 100,
//            obscureText: true, // 输入密码
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Normal Icon Constraints',
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
//                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: 'Smaller Icon Constraints',
                    hintStyle: TextStyle(fontSize: 30),
                    prefixIcon: Icon(Icons.search),
                    prefixIconConstraints: BoxConstraints(
                      minHeight: 20,
                      minWidth: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "label text"),
            ),
          )
        ],
      ),
    );
  }
}

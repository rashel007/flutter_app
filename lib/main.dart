import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'EA App',
    home: HomePage(),
  ));
}

//class HomePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(title: Text('Home')),
//        body: Padding(
//            padding: EdgeInsets.all(20.0),
//            child: Center(
//              child: Text(
//                "This is text This is text This is text This is text This is text",
//                textAlign: TextAlign.justify,
//                style: TextStyle(
//                    color: Colors.cyan,
//                    fontSize: 20,
//                    fontStyle: FontStyle.italic),
//              ),
//            )));
//  }
//}

//class HomePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(title: Text('Home')),
//        body: Container(
//          margin: EdgeInsets.only(left: 20, top: 20),
//          padding: EdgeInsets.all(10.0),
//          height: 100,
//          width: 200,
//          decoration: BoxDecoration(
//              color: Colors.amberAccent,
//              borderRadius: BorderRadius.circular(8.0)),
//          child: Text("Container Text",
//              style: TextStyle(color: Colors.white, fontSize: 20)),
//        ));
//  }
//}

//class HomePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(title: Text('Home')),
//        body: ListView(
//          children: <Widget>[
//            Column(
//              children: <Widget>[
//                Image.asset("assets/images/flutter.png"),
//                Container(
//                  margin: EdgeInsets.all(10),
//                  child: Text(
//                    "Flutter is an open-source UI software development kit created by Google. It is used to develop applications for Android, iOS, Windows, Mac, Linux, Google Fuchsia and the web. The first version of Flutter was known as codename \"Sky\" and ran on the Android operating system"
//                    , textAlign: TextAlign.justify,
//                  ),
//                ),
//                Row(
//                  children: <Widget>[
//                    Container(
//                      margin: EdgeInsets.only(left: 10, top: 10),
//                      padding: EdgeInsets.all(5.0),
//                      height: 50,
//                      width: 60,
//                      child: Icon(Icons.airline_seat_flat),
//                      decoration: BoxDecoration(
//                          color: Colors.amberAccent,
//                          borderRadius: BorderRadius.circular(8.0)),
//                    ),
//                    Container(
//                      margin: EdgeInsets.only(left: 10, top: 10),
//                      padding: EdgeInsets.all(5.0),
//                      height: 50,
//                      width: 60,
//                      child: Icon(Icons.accessibility),
//                      decoration: BoxDecoration(
//                          color: Colors.amberAccent,
//                          borderRadius: BorderRadius.circular(8.0)),
//                    )
//                  ],
//                )
//              ],
//            )
//          ],
//        )
//       );
//  }
//}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.asset("assets/images/flutter.png"),
              Center(
                child: Text(
                  "Hello Flutter",
                  style: TextStyle(color: Colors.amberAccent),
                ),
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text("Hello Flutter 2"),
          SizedBox(
            height: 40,
            width: 40,
            child: Container(
              decoration: BoxDecoration(color: Colors.cyan),
            ),
          ),
          Row(
            children: <Widget>[
              _rowCell(),
              SizedBox(width: 10),
              _rowCell(),
              SizedBox(width: 10),
              _rowCell()
            ],
          )
        ],
      ),
    );
  }
}

Widget _rowCell() {
  return Expanded(
    child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(color: Colors.greenAccent)),
  );
}

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

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home')),
        body: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              padding: EdgeInsets.all(10.0),
              height: 50,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(8.0)),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              padding: EdgeInsets.all(10.0),
              height: 50,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(8.0)),
            )
          ],
        ));
  }
}

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

//class HomePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Scaffold(
//      appBar: AppBar(title: Text("Home")),
//      body: Column(
//        children: <Widget>[
//          Stack(
//            children: <Widget>[
//              Image.asset("assets/images/flutter.png"),
//              Center(
//                child: Text(
//                  "Hello Flutter",
//                  style: TextStyle(color: Colors.amberAccent),
//                ),
//              )
//            ],
//          ),
//          SizedBox(
//            height: 40,
//          ),
//          Text("Hello Flutter 2"),
//          SizedBox(
//            height: 40,
//            width: 40,
//            child: Container(
//              decoration: BoxDecoration(color: Colors.cyan),
//            ),
//          ),
//          Row(
//            children: <Widget>[
//              _rowCell(),
//              SizedBox(width: 10),
//              _rowCell(),
//              SizedBox(width: 10),
//              _rowCell()
//            ],
//          )
//        ],
//      ),
//    );
//  }
//}

//class HomePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new Scaffold(
//      appBar: AppBar(title: Text("Home")),
//      body: Column(
//        children: <Widget>[
//          Image.asset("assets/images/flutter.png"),
//          Container(
//            height: 110,
//            padding: EdgeInsets.all(10),
//            child: ListView(
//              scrollDirection: Axis.horizontal,
//              children: <Widget>[
//               _cell(),
//                _cell(),
//                _cell(),
//                _cell(),
//                _cell(),
//                _cell(),
//                _cell(),
//                _cell(),
//                _cell(),
//              ],
//            ),
//          )
//        ],
//      ),
//    );
//  }
//}

// listview as adapter



class HomePage extends StatelessWidget {

  List bdTeam = [
    {"name": "Tamim Iqbal", "firstletter": "T", "type": "Batsman"},
    {"name": "Shoumyo Sharkar", "firstletter": "S", "type": "Batsman"},
    {"name": "Sakib Al Hasan", "firstletter": "S", "type": "All Rounder"},
    {"name": "Musfiqur Rahim", "firstletter": "M", "type": "Batsman"},
    {"name": "Mohammod Mithun", "firstletter": "M", "type": "Batsman"},
    {"name": "Mahmadullah", "firstletter": "M", "type": "All Rounder"},
    {"name": "Shabbir Rahman", "firstletter": "S", "type": "Batsman"},
    {"name": "Masrafi Murtaza", "firstletter": "M", "type": "Boller"},
    {"name": "Mehidi Hasan Miraz", "firstletter": "M", "type": "All Rounder"},
    {"name": "Mustafiz", "firstletter": "M", "type": "Boller"},
    {"name": "Taskin Ahmed", "firstletter": "T", "type": "Boller"},
  ];


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: ListView.builder(
          itemCount: bdTeam.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    child: Text(bdTeam[index]["firstletter"]),
                  ),
                  title: Text(bdTeam[index]["name"]),
                  subtitle: Text(bdTeam[index]["type"])
                ),
                Divider()
              ],
            );
          }),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset("assets/images/flutter.png"),
                Positioned(
                  bottom: 0,
                  right: 20,
                  child: Text("Developed By EA Rashel",
                    style: TextStyle(color: Colors.cyan, fontStyle: FontStyle.italic, fontSize: 12),),
                )
              ],
            ),
            SizedBox(height: 30,),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home", style: TextStyle(fontSize: 16),),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text("About Us", style: TextStyle(fontSize: 16),),
            )

          ],
        ),
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

Widget _cell() {
  return Row(
    children: <Widget>[
      Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(color: Colors.cyan),
        child: Icon(
          Icons.ac_unit,
          color: Colors.white,
        ),
      ),
      SizedBox(
        width: 10,
        height: 10,
      )
    ],
  );
}

Widget _text() {
  return Text(
      "Flutter is an open-source UI software development kit created by Google. It is used to develop applications for Android, iOS, Windows, Mac, Linux, Google Fuchsia and the web. The first version of Flutter was known as codename \"Sky\" and ran on the Android operating system");
}

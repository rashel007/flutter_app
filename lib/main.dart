import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'EA APP',
      home: Scaffold(
        appBar: AppBar(title: Text('Home')),
        body: Center(
          child: Text("This is center text"),
        )
      ),
    );
  }
}



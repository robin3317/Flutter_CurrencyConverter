import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //appbar
      appBar: new AppBar(
        title: new Text("Currency Converter",
          style: new TextStyle(fontSize: 25.0)
        ),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      backgroundColor: Colors.blueGrey,

      //body
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Padding(padding: EdgeInsets.only(top: 20.0)),
          //image
          new Center(
            child: new Image.asset("images/currency.png", width: 150.0, height: 100.0),
          ),
        ],

      ),
        //text field
        //radio button
        //convert button
        //show result
    );
  }
}
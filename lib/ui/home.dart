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
      body: new Container(
        child: new ListView(
          children: <Widget>[
            new Padding(padding: EdgeInsets.only(top: 20.0)),
            //image
            new Center(
              child: new Image.asset("images/currency.png", width: 150.0, height: 100.0),
            ),
            //text field
            new Container(
              margin: const EdgeInsets.only(right: 12.0, left: 12.0, top: 10.0),
              child: new TextField(
                controller: null,
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  labelText: "Enter number as dollar(\$)",
                  labelStyle: new TextStyle(color: Colors.white),
                  hintText: "Enter here",
                ),
                style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.lightGreen
                ),
              ),
            ),
            //radio button

          ],

        ),
      ),
        //TODO: convert button
        //TODO: show result
    );
  }
}
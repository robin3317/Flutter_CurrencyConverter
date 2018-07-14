import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {
  final TextEditingController _getValueAsDollar = new TextEditingController();
  int _groupValue = 0;
  double finalResult = 0.0;
  String convertTo = " TK";

  //logic goes here and print the result
  void showResult() {
    setState(() {
      switch(_groupValue) {
        case 0:
          finalResult = calculateMoney(_getValueAsDollar.text, 80.0);
          convertTo = " TK";
          break;
        case 1:
          finalResult = calculateMoney(_getValueAsDollar.text, 0.85);
          convertTo = " EURO";
          break;
      }
    });
  }

  //check the text field value and calculate
  double calculateMoney(String dollar, double multiplier) {
    double result;
    if(dollar.isNotEmpty) {
      result = double.parse(dollar) * multiplier;
    }else {
      result = 0.0;
    }
    return result;
  }

  //check for which one should be active
  void _handleGroupValue(int value) {
    setState(() {
      _groupValue = value;
    });
  }

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
                controller: _getValueAsDollar,
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
            new Row(
              children: <Widget>[
                new Padding(padding: new EdgeInsets.only(left: 40.0, top: 70.0)),
                new Radio<int>(
                    value: 0,
                    groupValue: _groupValue,
                    onChanged: _handleGroupValue,
                    activeColor: Colors.orangeAccent,
                ),
                new Text("TK", style: new TextStyle(fontSize: 20.0),),
                new Padding(padding: EdgeInsets.only(left: 70.0)),
                new Radio<int>(
                    value: 1,
                    groupValue: _groupValue,
                    onChanged: _handleGroupValue,
                    activeColor: Colors.lightGreenAccent,
                ),
                new Text("EURO", style: new TextStyle(fontSize: 20.0),)
              ],
            ),
            //convert button
            new Container(
              margin: EdgeInsets.only(top: 20.0, left: 70.0, right: 95.0),
              child: new RaisedButton(
                  onPressed: showResult,
                  child: new Text(
                    "Convert",
                    style: new TextStyle(
                      fontSize: 22.0, color: Colors.yellowAccent,
                    ),
                  ),
                  color: Colors.blue,
              ),
            ),
            //show result
            new Container(
              margin: EdgeInsets.only(left: 110.0, top: 60.0),
              child: new Text(
                "$finalResult $convertTo",
                style: new TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            )
          ],

        ),
      ),
    );
  }
}
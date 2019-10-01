import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget _button(index) {
    return Container(
      decoration: BoxDecoration(),
      child: FlatButton(
        child: Text("Gol ${index == 0 ? "A" : "B"}"),
        onPressed: () {
          setState(() {
            _placar[index] += 1;
          });
        },
      ),
    );
  }

  List _placar = [0, 0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Placar Pelada"),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                _placar = [0, 0];
              });
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 35, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              " A - ${_placar[0]} x ${_placar[1]} - B",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 60,
              ),
            ),
            Divider(
              height: 25,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _button(0),
                _button(1),
              ],
            )
          ],
        ),
      ),
    );
  }
}
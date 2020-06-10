import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[700],
        title: Text(
          "Nice backgrounds",
          style: TextStyle(fontFamily: "Lobster", fontSize: 28),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/img/road.jpg"),
                    fit: BoxFit.cover)),
          ),
          Center(
              child: Container(
            color: Colors.black.withOpacity(0.5),
            height: 100,
          )),
          Center(
            child: Text(
              "Práctica 1",
              style: TextStyle(
                  fontFamily: "Lobster", fontSize: 40, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:backgrounds/place_page.dart';

class LogingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: OrientationBuilder(
            builder: (context, orientation) =>
                orientation == Orientation.landscape
                    ? _buildBodyLandscape(Colors.orange, context)
                    : _buildBodyPortrait(Colors.purple, context)),
      ),
    );
  }
}

Widget _buildBodyPortrait(color, context) => ListView(
      children: <Widget>[
        _buildLogo(color),
        _buildTitle(color),
        _buildWelcomeText(color),
        Column(children: [
          _buildTextInputs(color, context),
          _buildButton(color, context)
        ])
      ],
    );

Widget _buildBodyLandscape(color, context) => ListView(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(children: [
              _buildLogo(color),
              _buildTitle(color),
            ]),
            Column(children: [
              _buildWelcomeText(color),
              _buildTextInputs(color, context),
            ])
          ],
        ),
        Center(child: _buildButton(color, context))
      ],
    );

Widget _buildLogo(color) => Padding(
      padding: EdgeInsets.only(top: 60),
      child: FlutterLogo(
        size: 100,
        colors: color,
      ),
    );

Widget _buildTitle(color) => Padding(
      padding: EdgeInsets.only(top: 30),
      child: Text(
        "Travel App",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.w700,
          fontFamily: "Lobster",
          fontSize: 48,
        ),
      ),
    );

Widget _buildWelcomeText(color) => Padding(
      padding: EdgeInsets.only(top: 30),
      child: Text(
        "Welcome!",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.w300,
          fontSize: 20,
        ),
      ),
    );

Widget _buildTextInputs(color, context) => Padding(
    padding: EdgeInsets.only(
      left: 8,
      top: 16,
    ),
    child: Form(
      child: Column(
        children: <Widget>[
          _buildField(color, "Usuario", Icons.account_circle),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: _buildField(color, "Contraseña", Icons.vpn_key),
          ),
        ],
      ),
    ));

Widget _buildButton(color, context) => Padding(
    padding: EdgeInsets.only(top: 20, left: 8, right: 8),
    child: Container(
      width: 300,
      height: 130,
      padding: EdgeInsets.all(40),
      child: RaisedButton(
          child: Text(
            "Entrar",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          color: color,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PlacePage()),
            );
          }),
    ));

Widget _buildField(color, textHint, icon) => Container(
      width: 300,
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: color,
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(12),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Container(
                width: 250,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: TextFormField(
                    obscureText: (textHint == "Contraseña" ? true : false),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: textHint,
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientAppBar extends StatelessWidget {
  final double barHeight = 66.0;

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return Container(
      height: barHeight + statusBarHeight,
      padding: EdgeInsets.only(top: statusBarHeight),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xff3366ff), Color(0xff00ccff)],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp)),
      child: Center(
          child: Text(
        "Planets",
        style: GoogleFonts.poppins(
            textStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 36)),
      )),
    );
  }
}

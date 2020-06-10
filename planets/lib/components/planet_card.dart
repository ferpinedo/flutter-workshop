import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planets/models/planet.dart';

class PlanetCard extends StatelessWidget {
  final Planet planet;
  const PlanetCard({@required this.planet});

  @override
  Widget build(BuildContext context) {
    // final planetCardContent =  Container(color: ,)
    final baseTextStyle = GoogleFonts.poppins();
    final headerTextStyle = baseTextStyle.copyWith(
        color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.w600);

    final regularTextStyle = baseTextStyle.copyWith(
        color: Color(0xffb6b2df), fontSize: 13.0, fontWeight: FontWeight.w400);

    final subHeaderTextStyle = regularTextStyle.copyWith(fontSize: 16.0);

    final planetCardContent = Container(
      margin: EdgeInsets.fromLTRB(76.0, 16.0, 16.0, 16.0),
      constraints: BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(height: 4.0),
          Text(
            planet.name,
            style: headerTextStyle,
          ),
          Container(height: 10.0),
          Text(planet.location, style: subHeaderTextStyle),
          Container(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              height: 2.0,
              width: 18.0,
              color: Color(0xff00c6ff)),
          Row(
            children: <Widget>[
              Image.asset("assets/images/ic_distance.png", height: 12.0),
              Container(width: 8.0),
              Text(
                planet.distance,
                style: regularTextStyle,
              ),
              Container(width: 24.0),
              Image.asset("assets/images/ic_gravity.png", height: 12.0),
              Container(width: 8.0),
              Text(
                planet.gravity,
                style: regularTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
    Widget planetImg = Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      child: Image(image: AssetImage(planet.image), height: 92, width: 92),
    );
    Widget card = Container(
      margin: EdgeInsets.only(left: 46),
      height: 147.0,
      decoration: BoxDecoration(
          color: Color(0xff434273),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0.0, 10.0),
            )
          ]),
      child: planetCardContent,
    );

    return Container(
      margin: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      child: Stack(children: [card, planetImg]),
    );
  }
}

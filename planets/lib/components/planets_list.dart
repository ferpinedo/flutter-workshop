import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:planets/components/planet_card.dart';
import 'package:planets/models/planet.dart';

class PlanetsList extends StatelessWidget {
  // final List<Planet> _planets = [
  //   const Planet(
  //     id: "1",
  //     name: "Mars",
  //     location: "Milkyway Galaxy",
  //     distance: "227.9m Km",
  //     gravity: "3.711 m/s ",
  //     description: "Lorem ipsum...",
  //     image: "assets/images/mars.png",
  //   ),
  //   const Planet(
  //     id: "2",
  //     name: "Neptune",
  //     location: "Milkyway Galaxy",
  //     distance: "54.6m Km",
  //     gravity: "11.15 m/s ",
  //     description: "Lorem ipsum...",
  //     image: "assets/images/neptune.png",
  //   ),
  //   const Planet(
  //     id: "3",
  //     name: "Moon",
  //     location: "Milkyway Galaxy",
  //     distance: "54.6m Km",
  //     gravity: "1.622 m/s ",
  //     description: "Lorem ipsum...",
  //     image: "assets/images/moon.png",
  //   ),
  //   const Planet(
  //     id: "4",
  //     name: "Earth",
  //     location: "Milkyway Galaxy",
  //     distance: "54.6m Km",
  //     gravity: "9.807 m/s ",
  //     description: "Lorem ipsum...",
  //     image: "assets/images/earth.png",
  //   ),
  //   const Planet(
  //     id: "5",
  //     name: "Mercury",
  //     location: "Milkyway Galaxy",
  //     distance: "54.6m Km",
  //     gravity: "3.7 m/s ",
  //     description: "Lorem ipsum...",
  //     image: "assets/images/mercury.png",
  //   ),
  // ];
  final _planets = Firestore.instance.collection('planets').snapshots();
  @override
  Widget build(BuildContext context) => Expanded(
        child: Container(
          color: Color(0xff333366),
          child: ListView.builder(
            // itemBuilder: (context, snapshot) => PlanetCard(planet: Planet.fromDB(snapshot),), 

            )
          // child: new CustomScrollView(
          //   scrollDirection: Axis.vertical,
          //   slivers: <Widget>[
          //     new SliverPadding(
          //       padding: const EdgeInsets.symmetric(vertical: 24.0),
          //       sliver: new SliverFixedExtentList(
          //         itemExtent: 152.0,
          //         delegate: new SliverChildBuilderDelegate(
          //           (context, index) => PlanetCard(planet: _planets[index]),
          //           childCount: _planets.length,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
        ),
      );
}

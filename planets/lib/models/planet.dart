import 'package:cloud_firestore/cloud_firestore.dart';

class Planet {
  String id;
  String name;
  String location;
  String distance;
  String gravity;
  String description;
  String image;

  // Planet(
  //     {this.id,
  //     this.name,
  //     this.location,
  //     this.distance,
  //     this.gravity,
  //     this.description,
  //     this.image});

  Planet.fromDB(DocumentSnapshot ds) {
    id = ds.documentID;
    name = ds.data["name"];
    location = ds.data["location"];
    distance = ds.data["distance"];
    gravity = ds.data["gravity"];
    description = ds.data["description"];
    image = ds.data["image"];
  }
}

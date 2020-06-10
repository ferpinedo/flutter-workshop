import 'package:flutter/material.dart';

import 'package:planets/components/gradient_app_bar.dart';
import 'package:planets/components/planets_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [GradientAppBar(), PlanetsList()]),
    );
  }
}

// screens/home/home.dart

import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'package:tourismando/screens/location_detail/text_section.dart';
import '../../models/location.dart';

class LocationDetail extends StatelessWidget {
  final int _locationID;

  LocationDetail(this._locationID);

  @override
  Widget build (BuildContext context) {
    final location = Location.fetchById(_locationID);

    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner(location.imagePath),
        ]..addAll(textSections(location))),
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
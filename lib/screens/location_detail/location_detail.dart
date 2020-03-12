// screens/home/home.dart

import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'package:tourismando/screens/location_detail/text_section.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner("assets/images/blarney-castle.jpg"),
          TextSection("Title1", "Text1"),
          TextSection("Title2", "Text2"),
          TextSection("Title3", "Text3"),
        ]
      )
    );
  }
}
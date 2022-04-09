import 'package:flutter/material.dart';

import 'Hikes.dart';

class DefaultHikeList {
  final List<Hikes> _hikes = [
    Hikes("Timpanogos", "Hard", 'Mountain/Rock', 'Utah County', 'assets/images/timpanogos.jpg', 4400.0, 13.0),
    Hikes("Bridal Veil Trail", 'Easy', 'Paved', 'Utah County', 'assets/images/bridal.jpg', 114.0, 1.4),
    Hikes("Rock Garden Trail", 'Intermediate', 'Gravel', 'Utah County', 'assets/images/rockgarden.jpg', 1555.0, 3.0),
    Hikes("Squaw Peak Trail", 'Hard', 'Mountain/Rock', 'Utah County', 'assets/images/squaw.jpg', 2831.0, 7.8),
    Hikes("Boulder Mail Trail", 'Hard', 'Rocky', 'Escalante National Monument', 'assets/images/boulder.jpg', 2582.0, 15.4),
    Hikes("Utah Lake Shoreline", 'Easy', 'Paved', 'Utah County', 'assets/images/shoreline.jpg', 26.0, 4.1),
    Hikes("Copper Pit Overlook", 'Intermediate', 'Gravel', 'Tooele County', 'assets/images/copper.jpg', 1243.0, 5.1),
  ];

  List<Hikes> getHikeList() {
    return _hikes;
  }
}
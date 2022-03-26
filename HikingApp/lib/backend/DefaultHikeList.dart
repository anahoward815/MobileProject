import 'package:flutter/material.dart';

import 'Hikes.dart';

class DefaultHikeList {
  List<Hikes> _hikes = [
    Hikes("Timpanogos", "Intermediate", 'Mountain/Rock', 'Utah County', 'assets/images/timpanogos.jpg', 4400.0, 13.0),
    Hikes("Bridal Veil Trail", 'Easy', 'Gravel', 'Utah County', 'assets/images/bridal.jpg', 114.0, 1.4),
  ];

  List<Hikes> getHikeList() {
    return _hikes;
  }
}
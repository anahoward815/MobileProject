import 'dart:ffi';
import 'package:flutter/material.dart';

class Hikes {
  late String hikeName;
  late String hikeDifficulty;
  late String hikeTerrain;
  late String hikeLocation;
  late double hikeElevation;
  late double hikeLength;

  Hikes(String name, String difficulty, String terrain, String location, double elevation, double length) {
    hikeName = name;
    hikeDifficulty = difficulty;
    hikeTerrain = terrain;
    hikeLocation = location;
    hikeElevation = elevation;
    hikeLength = length;
  }

  String getHikeName() {
    return hikeName;
  }

  String getHikeDifficulty() {
    return hikeDifficulty;
  }

  String getHikeTerrain() {
    return hikeTerrain;
  }

  String getHikeLocation() {
    return hikeLocation;
  }

  double getHikeElevation() {
    return hikeElevation;
  }

  double getHikeLength() {
    return hikeLength;
  }
}
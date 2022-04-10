import 'dart:ffi';
import 'package:flutter/material.dart';

class Hikes {
  late String hikeName;
  late String hikeDifficulty;
  late String hikeTerrain;
  late String hikeLocation;
  late String hikeImagePath;
  late String hikeMapPath;
  late double hikeElevation;
  late double hikeLength;
  late double lat;
  late double long;

  Hikes(String name, String difficulty, String terrain, String location, String imagePath, String mapPath, double elevation, double length, this.lat,this.long) {
    hikeName = name;
    hikeDifficulty = difficulty;
    hikeTerrain = terrain;
    hikeLocation = location;
    hikeImagePath = imagePath;
    hikeMapPath = mapPath;
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

  String getHikeImagePath() {
    return hikeImagePath;
  }

  String getHikeMapPath() {
    return hikeMapPath;
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
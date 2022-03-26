import 'package:flutter/material.dart';
import 'package:hiking_app/backend/Hikes.dart';

class SavedHikes {
  List<Hikes> savedHikesList = [];

  factory SavedHikes() {
    return savedHikes;
  }

  static final SavedHikes savedHikes = SavedHikes();

  void addHike(Hikes savedHike) {
    savedHikesList.add(savedHike);
  }

  List<Hikes> getList() {
    return savedHikesList;
  }
}
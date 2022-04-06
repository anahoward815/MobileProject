import 'package:hiking_app/backend/Hikes.dart';

class SavedHikes {
  SavedHikes._();
  static SavedHikes? _instance;
  static SavedHikes get inst => _instance ??= SavedHikes._();
  init () async {
    savedHikesList = [];
  }

  late List<Hikes> savedHikesList;

  List<Hikes> getList() {
    return savedHikesList;
  }

  void addHike(Hikes savedHike) {
    savedHikesList.add(savedHike);
  }
}
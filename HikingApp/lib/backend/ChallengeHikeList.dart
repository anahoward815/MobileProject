import 'Hikes.dart';

class ChallengeHikeList {
  static final List<Hikes> _hikes = [
    Hikes(
        "Timpanogos",
        "Hard",
        'Mountain/Rock',
        'Utah County',
        'assets/images/timpanogos.jpg',
        'assets/images/map_images/timp_trail.png',
        4400.0,
        15.0,
        40.40731,
        -111.65467),
    Hikes(
        "Squaw Peak Trail",
        'Hard',
        'Mountain/Rock',
        'Utah County',
        'assets/images/squaw.jpg',
        'assets/images/map_images/timp_trail.png',
        2831.0,
        7.8,
        40.33666532,
        -111.60083093),
    Hikes(
        "Boulder Mail Trail",
        'Hard',
        'Rocky',
        'Escalante National Monument',
        'assets/images/boulder.jpg',
        'assets/images/map_images/timp_trail.png',
        2582.0,
        15.4,
        40.33666532,
        -111.60083093),
  ];

  static List<Hikes> getHikeList() {
    return _hikes;
  }
}
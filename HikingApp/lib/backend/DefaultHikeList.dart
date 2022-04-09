import 'Hikes.dart';

class DefaultHikeList {
  final List<Hikes> _hikes = [
    Hikes("Timpanogos", "Hard", 'Mountain/Rock', 'Utah County', 'assets/images/timpanogos.jpg', 'assets/images/map_images/timp_trail.jpg', 4400.0, 13.0, 40.40731, -111.65467),
    Hikes("Bridal Veil Trail", 'Easy', 'Paved', 'Utah County', 'assets/images/bridal.jpg', 'assets/images/map_images/timp_trail.jpg', 114.0, 1.4, 40.33666532, -111.60083093),
    Hikes("Rock Garden Trail", 'Intermediate', 'Gravel', 'Utah County', 'assets/images/rockgarden.jpg', 'assets/images/map_images/timp_trail.jpg', 1555.0, 3.0, 40.33666532, -111.60083093),
    Hikes("Squaw Peak Trail", 'Hard', 'Mountain/Rock', 'Utah County', 'assets/images/squaw.jpg', 'assets/images/map_images/timp_trail.jpg', 2831.0, 7.8, 40.33666532, -111.60083093),
    Hikes("Boulder Mail Trail", 'Hard', 'Rocky', 'Escalante National Monument', 'assets/images/boulder.jpg', 'assets/images/map_images/timp_trail.jpg', 2582.0, 15.4, 40.33666532, -111.60083093),
    Hikes("Utah Lake Shoreline", 'Easy', 'Paved', 'Utah County', 'assets/images/shoreline.jpg', 'assets/images/map_images/timp_trail.jpg', 26.0, 4.1, 40.33666532, -111.60083093),
    Hikes("Copper Pit Overlook", 'Intermediate', 'Gravel', 'Tooele County', 'assets/images/copper.jpg', 'assets/images/map_images/timp_trail.jpg', 1243.0, 5.1, 40.33666532, -111.60083093),
  ];

  List<Hikes> getHikeList() {
    return _hikes;
  }
/*
'assets/images/map_images/timp_trail.jpg',
  Hikes("Rock Garden Trail", 'Intermediate', 'Gravel', 'Utah County', 'assets/images/rockgarden.jpg', 1555.0, 3.0),
  Hikes("Squaw Peak Trail", 'Hard', 'Mountain/Rock', 'Utah County', 'assets/images/squaw.jpg', 2831.0, 7.8),
  Hikes("Boulder Mail Trail", 'Hard', 'Rocky', 'Escalante National Monument', 'assets/images/boulder.jpg', 2582.0, 15.4),
  Hikes("Utah Lake Shoreline", 'Easy', 'Paved', 'Utah County', 'assets/images/shoreline.jpg', 26.0, 4.1),
  Hikes("Copper Pit Overlook", 'Intermediate', 'Gravel', 'Tooele County', 'assets/images/copper.jpg', 1243.0, 5.1),
 */
}
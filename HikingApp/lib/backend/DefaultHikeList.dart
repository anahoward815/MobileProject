import 'Hikes.dart';

class DefaultHikeList {
  final List<Hikes> _hikes = [
    Hikes("Timpanogos", "Hard", 'Mountain/Rock', 'Utah County', 'assets/images/timpanogos.jpg', 4400.0, 13.0, 40.40731, -111.65467),
    Hikes("Bridal Veil Trail", 'Easy', 'Paved', 'Utah County', 'assets/images/bridal.jpg', 114.0, 1.4, 40.33666532, -111.60083093),
  ];

  List<Hikes> getHikeList() {
    return _hikes;
  }
}
import 'package:flutter/material.dart';
import 'package:hiking_app/pages/equipment.dart';
import 'package:hiking_app/pages/hike_reccomendation_page.dart';
import 'package:hiking_app/pages/hiking_experience.dart';
import 'package:hiking_app/pages/test_start_page.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    // '/': (context) => const Start(),
    '/exp': (context) => RateYourExperience(),
    '/equipment': (context) => const Equipment(),
    // '/': (context) => Equipment(),
    // '/': (context) => Loading(),
    '/': (context) => RateYourExperience(),
    '/hikeRecommendation': (context) => HikeRecommendationPage(),
  }
));

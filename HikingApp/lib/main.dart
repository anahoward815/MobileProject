import 'package:flutter/material.dart';
import 'package:hiking_app/backend/DefaultHikeList.dart';
import 'package:hiking_app/pages/hike_reccomendation_page.dart';
import 'package:hiking_app/pages/hiking_experience.dart';
import 'package:hiking_app/pages/hiking_info_page.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    // '/': (context) => Loading(),
    '/': (context) => RateYourExperience(),
    '/hikeRecommendation': (context) => HikeRecommendationPage(),
    '/hikeInfo': (context) => HikingInfo.Info(DefaultHikeList().getHikeList()[0]),
  }
));

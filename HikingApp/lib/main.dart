import 'package:flutter/material.dart';
import 'package:hiking_app/backend/DefaultHikeList.dart';
import 'package:hiking_app/pages/account_menu.dart';
import 'package:hiking_app/pages/hike_reccomendation_page.dart';
import 'package:hiking_app/pages/hiking_experience.dart';
import 'package:hiking_app/pages/hiking_info_page.dart';
import 'package:hiking_app/pages/equipment.dart';
import 'package:hiking_app/pages/test_start_page.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/exp': (context) => RateYourExperience(),
    '/equipment': (context) => Equipment(),
    '/': (context) => RateYourExperience(),
    '/hikeRecommendation': (context) => HikeRecommendationPage(),
    '/hikeInfo': (context) => HikingInfo.Info(DefaultHikeList().getHikeList()[0]),
    '/accountMenu' : (context) => AccountMenu(),
  }
));

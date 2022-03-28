import 'package:flutter/material.dart';
import 'package:hiking_app/backend/DefaultHikeList.dart';
import 'package:hiking_app/pages/account_equipment.dart';
import 'package:hiking_app/pages/account_info.dart';
import 'package:hiking_app/pages/account_menu.dart';
import 'package:hiking_app/pages/account_recent_hikes.dart';
import 'package:hiking_app/pages/challenge.dart';
import 'package:hiking_app/pages/fitness_level.dart';
import 'package:hiking_app/pages/hike_reccomendation_page.dart';
import 'package:hiking_app/pages/hiking_experience.dart';
import 'package:hiking_app/pages/hiking_info_page.dart';
import 'package:hiking_app/pages/equipment.dart';
import 'package:hiking_app/pages/recent_hike_stats.dart';
import 'package:hiking_app/pages/saved_hikes.dart';
import 'package:hiking_app/pages/test_start_page.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/exp': (context) => RateYourExperience(),
    '/equipment': (context) => Equipment(),
    // '/': (context) => RateYourExperience(),
    '/' : (context) => Start(),
    '/hikeRecommendation': (context) => HikeRecommendationPage(),
    '/hikeInfo': (context) => HikingInfo.Info(DefaultHikeList().getHikeList()[0]),
    '/accountMenu' : (context) => AccountMenu(),
    '/fitness' : (context) => Fitness(),
    '/saved' : (context) => SavedHikesPage(),
    '/accountEquipment' : (context) => AccountEquipment(),
    '/accountInfo' : (context) => AccountInfo(),
    '/recentActivity' : (context) => RecentActivity(),
    '/challenge' : (context) => Challenge(),
    '/recentStats' : (context) => RecentHikeStats(),
  }
));

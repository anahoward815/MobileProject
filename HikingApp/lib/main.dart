import 'package:flutter/material.dart';
import 'package:hiking_app/pages/hiking_experience.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    // '/': (context) => Loading(),
    '/': (context) => RateYourExperience(),
  }
));

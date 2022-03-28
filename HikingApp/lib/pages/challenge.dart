import 'package:flutter/material.dart';
import 'package:hiking_app/reusable_widgets/AppHeader.dart';
import 'package:hiking_app/reusable_widgets/HikeCardDisplay.dart';
import 'package:hiking_app/reusable_widgets/SortBox.dart';

class Challenge extends StatefulWidget {
  const Challenge({Key? key}) : super(key: key);

  @override
  _ChallengeState createState() => _ChallengeState();
}

class _ChallengeState extends State<Challenge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appHeader(),
    );
  }
}

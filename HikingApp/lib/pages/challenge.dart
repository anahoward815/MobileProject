import 'package:flutter/material.dart';
import 'package:hiking_app/reusable_widgets/AppHeader.dart';
import 'package:hiking_app/reusable_widgets/HikeCardDisplay.dart';
import 'package:hiking_app/reusable_widgets/SortBox.dart';
import 'package:hiking_app/reusable_widgets/HamburgerDrawer.dart';

class Challenge extends StatefulWidget {
  const Challenge({Key? key}) : super(key: key);

  @override
  _ChallengeState createState() => _ChallengeState();
}

class _ChallengeState extends State<Challenge> {

  String challengeHeader = 'These hikes are geared towards pushing you a little harder '
      'physically. Don\'t worry, they are still appropriate '
      'for your equipment!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appHeader(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              challengeHeader,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22.0,
              ),
            ),

          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 12, 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SortBox(),
              ],
            ),
          ),
          HikeCardDisplay(),
        ],
      ),
      drawer: hamburgerDrawer(context),
    );
  }
}

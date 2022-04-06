import 'package:flutter/material.dart';
import 'package:hiking_app/backend/DefaultHikeList.dart';
import 'package:hiking_app/reusable_widgets/AppHeader.dart';
import 'package:hiking_app/reusable_widgets/HikeCardDisplay.dart';
import 'package:hiking_app/reusable_widgets/SortBox.dart';

class HikeRecommendationPage extends StatefulWidget {
  const HikeRecommendationPage({Key? key}) : super(key: key);

  @override
  State<HikeRecommendationPage> createState() => _HikeRecommendationPageState();
}

class _HikeRecommendationPageState extends State<HikeRecommendationPage> {

  String hikeRec = "Recommended Hikes:";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appHeader(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hikeRec,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SortBox(),
              ],
            ),
          ),
          HikeCardDisplay.withList(DefaultHikeList().getHikeList()),
        ],
      ),
    );
  }
}

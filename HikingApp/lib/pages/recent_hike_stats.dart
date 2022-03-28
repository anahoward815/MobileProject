import 'package:flutter/material.dart';
import 'package:hiking_app/reusable_widgets/AppHeader.dart';
import 'package:hiking_app/reusable_widgets/HikeCardDisplay.dart';
import 'package:hiking_app/reusable_widgets/SortBox.dart';

class RecentHikeStats extends StatefulWidget {
  const RecentHikeStats({Key? key}) : super(key: key);

  @override
  _RecentHikeStatsState createState() => _RecentHikeStatsState();
}

class _RecentHikeStatsState extends State<RecentHikeStats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appHeader(),
    );
  }
}

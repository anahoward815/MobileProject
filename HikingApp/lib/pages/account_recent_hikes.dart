import 'package:flutter/material.dart';
import 'package:hiking_app/reusable_widgets/AppHeader.dart';
import 'package:hiking_app/reusable_widgets/HikeCardDisplay.dart';
import 'package:hiking_app/reusable_widgets/SortBox.dart';
import 'package:hiking_app/reusable_widgets/HamburgerDrawer.dart';

import '../backend/Hikes.dart';
import '../backend/SavedHikes.dart';

class RecentActivity extends StatefulWidget {
  const RecentActivity({Key? key}) : super(key: key);

  @override
  _RecentActivityState createState() => _RecentActivityState();
}

class _RecentActivityState extends State<RecentActivity> {

  List<Hikes> getHikes() {
    SavedHikes.inst.init();
    return SavedHikes.inst.getList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appHeader(),
      body: Column(
        children: [
          HikeCardDisplay.withBool(getHikes(), true),
        ],
      ),
      drawer: hamburgerDrawer(context),
    );
  }
}

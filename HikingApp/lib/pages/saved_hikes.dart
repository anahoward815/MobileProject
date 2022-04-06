import 'package:flutter/material.dart';
import 'package:hiking_app/backend/Hikes.dart';
import 'package:hiking_app/reusable_widgets/AppHeader.dart';
import 'package:hiking_app/reusable_widgets/HikeCardDisplay.dart';
import 'package:hiking_app/reusable_widgets/SortBox.dart';

import '../backend/SavedHikes.dart';

class SavedHikesPage extends StatefulWidget {
  const SavedHikesPage({Key? key}) : super(key: key);

  @override
  State<SavedHikesPage> createState() => _SavedHikesPage();
}

class _SavedHikesPage extends State<SavedHikesPage> {

  String savedHike = "Saved Hikes";

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
          Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    savedHike,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SortBox(),
                ],
              ),
          ),
          HikeCardDisplay.withList(getHikes()),
          ElevatedButton(
            onPressed: () {
            },
            child: Text(
              'Add Hike +',
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
            style: ElevatedButton.styleFrom(
                primary: Colors.lightBlue[300],
                padding: EdgeInsets.fromLTRB(50, 20, 50, 20)
            ),
          )
        ],
      ),
    );
  }
}

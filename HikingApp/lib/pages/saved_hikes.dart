import 'package:flutter/material.dart';
import 'package:hiking_app/reusable_widgets/AppHeader.dart';
import 'package:hiking_app/reusable_widgets/HikeCardDisplay.dart';
import 'package:hiking_app/reusable_widgets/SortBox.dart';

class SavedHikesPage extends StatefulWidget {
  const SavedHikesPage({Key? key}) : super(key: key);

  @override
  State<SavedHikesPage> createState() => _SavedHikesPage();
}

class _SavedHikesPage extends State<SavedHikesPage> {

  String savedHike = "Saved Hikes";

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
          HikeCardDisplay()
        ],
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:hiking_app/reusable_widgets/AppHeader.dart';
import 'package:hiking_app/reusable_widgets/HamburgerDrawer.dart';
import 'package:hiking_app/reusable_widgets/HikeCardDisplay.dart';
import 'package:hiking_app/reusable_widgets/SortBox.dart';
import 'package:hiking_app/reusable_widgets/UserCard.dart';

class AccountInfo extends StatefulWidget {
  const AccountInfo({Key? key}) : super(key: key);

  @override
  _AccountInfoState createState() => _AccountInfoState();
}

class _AccountInfoState extends State<AccountInfo> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appHeader(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            UserCard(),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 150, 25),
              child: Text(
                'Equipment List: ',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 150, 35),
              child: Text(
                '- Hiking shoes \n - Running shoes \n - Tights \n '
                    '- Coat \n - Wool socks \n - Moleskin \n '
                    '- Hiking hat',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/accountEquipment');
              },
              child: const Text('Add More Equipment'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlue[300],
                  padding: const EdgeInsets.fromLTRB(30, 15, 30, 15)
              ),
            )
          ],
        ),
      ),
      drawer: hamburgerDrawer(context),
    );
  }
}

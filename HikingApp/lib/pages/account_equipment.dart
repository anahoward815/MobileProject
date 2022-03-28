import 'package:flutter/material.dart';
import 'package:hiking_app/reusable_widgets/AppHeader.dart';
import 'package:hiking_app/reusable_widgets/HikeCardDisplay.dart';
import 'package:hiking_app/reusable_widgets/SortBox.dart';

class AccountEquipment extends StatefulWidget {
  const AccountEquipment({Key? key}) : super(key: key);

  @override
  _AccountEquipmentState createState() => _AccountEquipmentState();
}

class _AccountEquipmentState extends State<AccountEquipment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appHeader(),

    );
  }
}

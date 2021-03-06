import 'package:flutter/material.dart';
import 'package:hiking_app/reusable_widgets/AppHeader.dart';
import 'package:hiking_app/reusable_widgets/HamburgerDrawer.dart';

class Equipment extends StatefulWidget {
  const Equipment({Key? key}) : super(key: key);

  @override
  State<Equipment> createState() => _EquipmentState();
}

class _EquipmentState extends State<Equipment> {

  Map<String, bool> equipmentList = {
    "empty spot": false,
    "Hiking Backpack": false,
    "Water Bottle": false,
    "Camelback": false,
    "Moleskin": false,
    "Tank Top": false,
    "Heavy-Duty boots": false,
    "Running Shoes": false,
    "Running Shorts": false,
    "Hat": false,
    "Moleskin": false,
  };

  Map<int, bool> selectedFlag = {};
  bool isSelectionMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appHeader(),
      body: ListView.builder(
        itemCount: equipmentList.keys.length,
        itemBuilder: (context, index) {
          bool _value = equipmentList.values.elementAt(index);
          String item = equipmentList.keys.elementAt(index);
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Tell us what equipment you have:",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            );
          }
          if (index == equipmentList.keys.length - 1) {
            return Container(
              margin: const EdgeInsets.fromLTRB(160, 0, 160, 0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/fitness');
                },
                child: Text('next'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.lightBlue[300],
                    // padding: EdgeInsets.fromLTRB(30, 5, 30, 5)
                ),
              ),
            );
          }
          return CheckboxListTile(
              value: _value,
              title: Text(
                item,
              ),
              onChanged: (check) {
                if(check == true) {
                  print('yes');
                  setState(() {
                    equipmentList[equipmentList.keys.elementAt(index)] = true;
                  });
                } else {
                  print('no');
                  setState(() {
                    equipmentList[equipmentList.keys.elementAt(index)] = false;
                  });
                }
              }
          );
        }
      ),
      drawer: hamburgerDrawer(context),
    );
  }
}
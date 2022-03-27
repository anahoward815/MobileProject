import 'package:flutter/material.dart';
import 'package:hiking_app/reusable_widgets/AppHeader.dart';

class Equipment extends StatefulWidget {
  const Equipment({Key? key}) : super(key: key);

  @override
  State<Equipment> createState() => _EquipmentState();
}

class _EquipmentState extends State<Equipment> {

  Map<String, bool> equipmentList = {
    "Hiking Backpack": false,
    "Water Bottle": false,
    "Sun protection": false,
    "First Aid kit": false,
    "Hiking pants": false,
    "Hiking boots": false,
    "Base layers": false,
    "Hat": false,
    "Trekking poles": false,
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
    );
  }
}
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
      )
    );
  }
}


/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../reusable_widgets/AppHeader.dart';

import 'package:multi_select_item/multi_select_item.dart';

// class MultiSelectDialogItem<V> {
//   const MultiSelectDialogItem(this.value, this.label);
//
//   final V value;
//   final String label;
// }
//
// class MultiSelectDialog<V> extends StatefulWidget {
//   MultiSelectDialog({required Key key, required this.items})
//       : super(key: key);
//
//   final List <MultiSelectDialogItem<V>> items;
//
//   @override
//   State<StatefulWidget> createState() => _MultiSelectDialogState<V>();
// }
//
// class _MultiSelectDialogState<V> extends State<MultiSelectDialogItem<V>> {
//   final _selectedValues = Set<V>();
//
//   void initState() {
//     super.initState();
//   }
//
//   void _onItemCheckedChange(V itemValue, bool checked) {
//     setState(() {
//       if (checked) {
//         _selectedValues.add(itemValue);
//       } else {
//         _selectedValues.remove(itemValue);
//       }
//     });
//   }
// }

class Equipment extends StatefulWidget {
  const Equipment({Key? key}) : super(key: key);

  @override
  _EquipmentState createState() => _EquipmentState();
}

class _EquipmentState extends State<Equipment> {

  MultiSelectController controller = MultiSelectController();

  final hikingEquipment = {
    1: "Hiking Backpack",
    2: "Water Bottle",
    3: "Sun protection",
    4: "First Aid kit",
    5: "Hiking pants",
    6: "Hiking boots",
    7: "Base layers",
    8: "Hat",
    9: "Trekking poles",
  };

  @override
  void initState() {
    super.initState();
    controller.disableEditingWhenNoneSelected = true;
    controller.set(hikingEquipment.length);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        var before = !controller.isSelecting;
        setState(() {
          controller.deselectAll();
        });
        return before;
      },
      child: Scaffold(
        appBar: appHeader(),
        body: ListView.builder(
          itemCount: hikingEquipment.length,
          itemBuilder: (context, index) {
            return InkWell (
              onTap: () {},
              child: MultiSelectItem(
                isSelecting: controller.isSelecting,
                onSelected: () {
                  setState(() {
                    controller.toggle(index);
                  });
                },
                child: Container (
                  height:75,
                  margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
                  decoration: BoxDecoration (
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.transparent,
                  ),
                  child: Card (
                    color: controller.isSelected(index) ? Colors.grey.shade200:Colors.white,
                    shape: const RoundedRectangleBorder (
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    child: Padding (
                      padding:EdgeInsets.symmetric(vertical:10, horizontal: 12),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          SizedBox(width:20,),
                          Text(
                            'hello',
                            style: TextStyle(fontSize: 14),
                          )
                        ]
                      )
                    )
                  )
                )
              )
            );
          },
        ),
      ),
    );
  }
}
*/

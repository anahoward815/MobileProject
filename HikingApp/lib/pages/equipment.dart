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
                            hikingEquipment![index],
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

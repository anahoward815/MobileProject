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
  List<String> types = ['Footwear', 'Clothing', 'Misc'];
  List<String> footwear = ["Heavy-duty Boots", "Running Shoes", "Water Shoes"];
  List<String> clothing = ["Tank top", "running shorts", "Joggers", "Windbreaker"];
  List<String> misc = ["Camelback", "Water bottle", "Hiking sticks", "Moleskin"];
  late List<List<String>> stuff = [["Heavy-duty Boots", "Running Shoes", "Water Shoes"],
                                   ["Tank top", "running shorts", "Joggers", "Windbreaker"],
                                   ["Camelback", "Water bottle", "Hiking sticks", "Moleskin"]];
  String currentFootwear = "";
  String currentClothing = "";
  String currentMisc = "";

  @override
  void initState() {
    currentFootwear = footwear[0];
    currentClothing = clothing[0];
    currentMisc = misc[0];
    stuff.add(footwear); stuff.add(clothing); stuff.add(misc);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appHeader(),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: types.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ExpansionTile(
                        title: Text(types[index], style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                        children: [
                          Column(
                            children:
                              _buildExpandableList(stuff[index]),
                          )
                        ],
                      );
                    },
                  ),
            ),

          ],
        ),

    );
  }

  _buildExpandableList(List<String> items) {
    List<Widget> columnContent = [];
    for (String content in items) {
      columnContent.add(
        ListTile(
          title: Text(content, style: const TextStyle(fontSize: 18.0),),
        ),
      );
    }
    columnContent.add(ElevatedButton(
        onPressed: () {

        },
        child: Text("Add Item")));
    return columnContent;
  }
}

/*padding: EdgeInsets.all(15),
                    children: ListTile.divideTiles(
                        context: context,
                        tiles: [
                          DropdownButton(
                            value: currentFootwear,
                            items: footwear.map<DropdownMenuItem<String>>(
                                    (e) => DropdownMenuItem(
                                      value: e,
                                      child: Text(e),
                                    ),
                            ).toList(),
                            onChanged: (String? value) => setState(() {
                              if (value != null) currentFootwear = value;
                            },
                            ),
                          ),


                          DropdownButton(
                            value: currentClothing,
                            items: clothing.map<DropdownMenuItem<String>>(
                                  (e) => DropdownMenuItem(
                                value: e,
                                child: Text(e),
                              ),
                            ).toList(),
                            onChanged: (String? value) => setState(() {
                              if (value != null) currentClothing = value;
                            },
                            ),
                          ),


                          DropdownButton(
                            value: currentMisc,
                            items: misc.map<DropdownMenuItem<String>>(
                                  (e) => DropdownMenuItem(
                                value: e,
                                child: Text(e),
                              ),
                            ).toList(),
                            onChanged: (String? value) => setState(() {
                              if (value != null) currentMisc = value;
                            },
                            ),
                          ),
                        ]
                    ).toList(),*/
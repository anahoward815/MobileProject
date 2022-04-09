import 'package:flutter/material.dart';
import 'package:hiking_app/reusable_widgets/AppHeader.dart';
import 'package:hiking_app/reusable_widgets/EquipmentCard.dart';
import 'package:hiking_app/reusable_widgets/HamburgerDrawer.dart';
import 'package:hiking_app/reusable_widgets/HikeCardDisplay.dart';
import 'package:hiking_app/reusable_widgets/SortBox.dart';

class AccountEquipment extends StatefulWidget {
  const AccountEquipment({Key? key}) : super(key: key);

  @override
  _AccountEquipmentState createState() => _AccountEquipmentState();
}



class _AccountEquipmentState extends State<AccountEquipment> {
  List<String> equipment = ["Heavy-duty Boots", "Running Shoes", "Tank top", "running shorts", "Camelback", "Moleskin"];

  final textFieldValueHolder = TextEditingController();


  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appHeader(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 280,
                  padding: EdgeInsets.all(8),
                  child: TextField(
                    controller: textFieldValueHolder,
                    autocorrect: false,
                    decoration: InputDecoration(hintText: 'Enter new equipment'),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue,
                      padding: EdgeInsets.all(12),
                      textStyle: TextStyle(fontSize: 22),
                    ),
                    child: Text('Add Value To String Array'),
                    onPressed: addValue,
                  ),
                ),
                  Column(
                    children: equipment.map((item) => EquipmentCard(
                        equipment: item,
                        delete: () {
                          setState(() {
                            equipment.remove(item);
                          });
                        }
                    )).toList(),
                  )
              ],
            ),
        ),
      ),
      drawer: hamburgerDrawer(context),
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
    return columnContent;
  }

  showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text('Please Enter Value in Text Field.'),
          actions: <Widget>[
            ElevatedButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void addValue() {
    if (textFieldValueHolder.text == '') {
      showAlert(context);
    } else {
      setState(() {
        equipment.add(textFieldValueHolder.text);
      });
      print(equipment);
    }
  }
}

/*

ExpansionTile(
                        title: Text(types[index], style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                        children: [
                          Column(
                            children:
                              _buildExpandableList(stuff[index]),
                          )
                        ],
                      );

                      ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: equipment.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(equipment[index]),
                      );
                    },
                  ),

 */

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
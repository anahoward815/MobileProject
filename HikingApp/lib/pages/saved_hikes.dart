import 'package:flutter/material.dart';
import 'package:hiking_app/reusable_widgets/AppHeader.dart';

class HikeRecommendationPage extends StatefulWidget {
  const HikeRecommendationPage({Key? key}) : super(key: key);

  @override
  _HikeRecommendationPageState createState() => _HikeRecommendationPageState();
}

class _HikeRecommendationPageState extends State<HikeRecommendationPage> {
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
                  DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.teal[200],
                        borderRadius: BorderRadius.circular(3.0)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                      child: DropdownButton(
                        dropdownColor: Colors.teal[200],
                        hint: Text('Sort By'),
                        value: dropDownValue,
                        items: _sortItems.map((String item){
                          return DropdownMenuItem<String>(
                              value: item,
                              child: Text(item)
                          );
                        }).toList(),
                        onChanged: (String? newValue){
                          setState(() {
                            dropDownValue = newValue!;
                          });
                        },
                        icon: Icon(Icons.arrow_drop_down),
                      ),
                    ),
                  )
                ],
              ),,
          )
        ],
      ),
    );
  }
}

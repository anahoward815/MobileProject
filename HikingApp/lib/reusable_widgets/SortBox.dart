import 'package:flutter/material.dart';

class SortBox extends StatefulWidget {
  const SortBox({Key? key}) : super(key: key);

  @override
  State<SortBox> createState() => _SortBoxState();
}

class _SortBoxState extends State<SortBox> {

  List<String> _sortItems = ['Location', 'Difficulty', 'Distance', 'Elevation'];

  String? dropDownValue;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
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
    );
  }
}

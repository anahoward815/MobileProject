import 'package:flutter/material.dart';

class EquipmentCard extends StatelessWidget {
  final String equipment;
  final Function() delete;

  EquipmentCard({ required this.equipment, required this.delete });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                equipment,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 8,),
            TextButton.icon(
              onPressed: delete,
              icon: const Icon(Icons.delete),
              label: const Text('Delete item'),
              style: TextButton.styleFrom(
                primary: Colors.red[700]
              ),
            )
          ],
        ),
      ),
    );
  }
}

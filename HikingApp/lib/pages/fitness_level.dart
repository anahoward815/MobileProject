import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../reusable_widgets/AppHeader.dart';

class Fitness extends StatefulWidget {
  const Fitness({Key? key}) : super(key: key);

  @override
  _FitnessState createState() => _FitnessState();
}

enum FitnessLevel { one, two, three, four, five }

class _FitnessState extends State<Fitness> {
  FitnessLevel? _fitnessLevel = FitnessLevel.five;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appHeader(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 150, 0),
              child: Text(
                'Rate your fitness level:',
                style: TextStyle(
                  fontSize: 24,
                ),
              )
            ),
            RadioListTile(
              title: const Text('All I do is exercise (5)'),
              value: FitnessLevel.five,
              groupValue: _fitnessLevel,
              onChanged: (FitnessLevel? value) {
                setState(() {
                  _fitnessLevel = value;
                });
              },
            ),
            RadioListTile(
              title: const Text('Hiking is my passion (4)'),
              value: FitnessLevel.four,
              groupValue: _fitnessLevel,
              onChanged: (FitnessLevel? value) {
                setState(() {
                  _fitnessLevel = value;
                });
              },
            ),
            RadioListTile(
              title: const Text('I do on runs sometimes (3)'),
              value: FitnessLevel.three,
              groupValue: _fitnessLevel,
              onChanged: (FitnessLevel? value) {
                setState(() {
                  _fitnessLevel = value;
                });
              },
            ),
            RadioListTile(
              title: const Text('I\'ve walked around a bit (2)'),
              value: FitnessLevel.two,
              groupValue: _fitnessLevel,
              onChanged: (FitnessLevel? value) {
                setState(() {
                  _fitnessLevel = value;
                });
              },
            ),
            RadioListTile(
              title: const Text('Certified couch potato (1)'),
              value: FitnessLevel.one,
              groupValue: _fitnessLevel,
              onChanged: (FitnessLevel? value) {
                setState(() {
                  _fitnessLevel = value;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/hikeRecommendation');
              },
              child: Text('next'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlue[300],
                  padding: EdgeInsets.fromLTRB(30, 5, 30, 5)
              ),
            )
          ],
        )
      ),
    );
  }
}

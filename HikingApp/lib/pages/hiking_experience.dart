import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../reusable_widgets/AppHeader.dart';

class RateYourExperience extends StatefulWidget {
  @override
  _RateYourExperience createState() => _RateYourExperience();
}

enum Experience { one, two, three, four, five }
enum Length { one, two, three, four }

class _RateYourExperience extends State<RateYourExperience> {
  Experience? _experience = Experience.one;
  Length? _length = Length.one;

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
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Text(
                'Rate your experience:',
                style: TextStyle(
                  fontSize: 24.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 150, 0),
              child: Text(
                'Hiking Frequency',
                style: TextStyle(
                  fontSize: 28.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            RadioListTile(
              title: const Text('4+ times per week'),
              value: Experience.one,
              groupValue: _experience,
              onChanged: (Experience? value) {
                setState(() {
                  _experience = value;
                });
              },
            ),
            RadioListTile(
              title: const Text('1-3 times per week'),
              value: Experience.two,
              groupValue: _experience,
              onChanged: (Experience? value) {
                setState(() {
                  _experience = value;
                });
              },
            ),
            RadioListTile(
              title: const Text('1-3 times per month'),
              value: Experience.three,
              groupValue: _experience,
              onChanged: (Experience? value) {
                setState(() {
                  _experience = value;
                });
              },
            ),
            RadioListTile(
              title: const Text('1-3 times per year'),
              value: Experience.four,
              groupValue: _experience,
              onChanged: (Experience? value) {
                setState(() {
                  _experience = value;
                });
              },
            ),
            RadioListTile(
              title: const Text('Never'),
              value: Experience.five,
              groupValue: _experience,
              onChanged: (Experience? value) {
                setState(() {
                  _experience = value;
                });
              },
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 110, 0),
              child: Text(
                'Average Hike Length',
                style: TextStyle(
                  fontSize: 28.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            RadioListTile(
              title: const Text('6+ miles'),
              value: Length.one,
              groupValue: _length,
              onChanged: (Length? value) {
                setState(() {
                  _length = value;
                });
              },
            ),
            RadioListTile(
              title: const Text('3-5 miles'),
              value: Length.two,
              groupValue: _length,
              onChanged: (Length? value) {
                setState(() {
                  _length = value;
                });
              },
            ),
            RadioListTile(
              title: const Text('1-2 miles'),
              value: Length.three,
              groupValue: _length,
              onChanged: (Length? value) {
                setState(() {
                  _length = value;
                });
              },
            ),
            RadioListTile(
              title: const Text('< 1 mile'),
              value: Length.four,
              groupValue: _length,
              onChanged: (Length? value) {
                setState(() {
                  _length = value;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/equipment');
              },
              child: Text('next'),
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(136, 183, 175, 100),
                padding: EdgeInsets.fromLTRB(30, 5, 30, 5)
              ),
            )
          ],
        ),
      )
    );
  }

}
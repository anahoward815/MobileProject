import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../reusable_widgets/AppHeader.dart';

class RateYourExperience extends StatefulWidget {
  @override
  _RateYourExperience createState() => _RateYourExperience();
}

enum RadioButton { one, two, three, four, five }

class _RateYourExperience extends State<RateYourExperience> {
  RadioButton? _button = RadioButton.one;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appHeader(),
      body: Column(
        children: [
          RadioListTile(
            title: const Text('4+ times per week'),
            value: RadioButton.one,
            groupValue: _button,
            onChanged: (RadioButton? value) {
              setState(() {
                _button = value;
              });
            },
          ),
          RadioListTile(
            title: const Text('1-3 times per week'),
            value: RadioButton.two,
            groupValue: _button,
            onChanged: (RadioButton? value) {
              setState(() {
                _button = value;
              });
            },
          ),
          RadioListTile(
            title: const Text('1-3 times per month'),
            value: RadioButton.three,
            groupValue: _button,
            onChanged: (RadioButton? value) {
              setState(() {
                _button = value;
              });
            },
          ),
          RadioListTile(
            title: const Text('1-3 times per year'),
            value: RadioButton.four,
            groupValue: _button,
            onChanged: (RadioButton? value) {
              setState(() {
                _button = value;
              });
            },
          ),
          RadioListTile(
            title: const Text('Never'),
            value: RadioButton.five,
            groupValue: _button,
            onChanged: (RadioButton? value) {
              setState(() {
                _button = value;
              });
            },
          ),
        ],
      )
    );
  }

}
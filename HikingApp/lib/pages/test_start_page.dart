import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../reusable_widgets/AppHeader.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appHeader(),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                child: const Text('open experience'),
                onPressed: () {
                  Navigator.pushNamed(context, '/exp');
                },
              ),
              ElevatedButton(
                child: const Text('open equipment'),
                onPressed: () {
                  Navigator.pushNamed(context, '/equipment');
                },
              ),
              ElevatedButton(
                child: const Text('open fitness'),
                onPressed: () {
                  Navigator.pushNamed(context, '/fitness');
                },
              ),
              ElevatedButton(
                child: const Text('open recommendations'),
                onPressed: () {
                  Navigator.pushNamed(context, '/hikeRecommendation');
                },
              ),
              ElevatedButton(
                child: const Text('open hike info'),
                onPressed: () {
                  Navigator.pushNamed(context, '/hikeInfo');
                },
              ),
              ElevatedButton(
                child: const Text('open account menu'),
                onPressed: () {
                  Navigator.pushNamed(context, '/accountMenu');
                },
              ),
              ElevatedButton(
                child: const Text('open saved hikes'),
                onPressed: () {
                  Navigator.pushNamed(context, '/saved');
                },
              ), // ..........................................
              ElevatedButton(
                child: const Text('open account equipment'),
                onPressed: () {
                  Navigator.pushNamed(context, '/accountEquipment');
                },
              ),
              ElevatedButton(
                child: const Text('open account info'),
                onPressed: () {
                  Navigator.pushNamed(context, '/accountInfo');
                },
              ),
              ElevatedButton(
                child: const Text('open account recent activity'),
                onPressed: () {
                  Navigator.pushNamed(context, '/recentActivity');
                },
              ),
              ElevatedButton(
                child: const Text('open challenge page'),
                onPressed: () {
                  Navigator.pushNamed(context, '/challenge');
                },
              ),
              ElevatedButton(
                child: const Text('open recent hike stats'),
                onPressed: () {
                  Navigator.pushNamed(context, '/recentStats');
                },
              ),
            ],
          )
        )
    );
  }
}

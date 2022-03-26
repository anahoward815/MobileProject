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
              )
            ],
          )
        )
    );
  }
}

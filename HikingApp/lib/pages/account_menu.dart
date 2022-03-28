import 'package:flutter/material.dart';
import 'package:hiking_app/reusable_widgets/AppHeader.dart';

class AccountMenu extends StatefulWidget {
  const AccountMenu({Key? key}) : super(key: key);

  @override
  _AccountMenuState createState() => _AccountMenuState();
}

class _AccountMenuState extends State<AccountMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appHeader(),
      body: Column(
        children: [
          Card(
            color: Colors.grey[200],
            child: TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.arrow_forward_ios_rounded),
            label: Text('Account Info')),
          ),
          Card(
            color: Colors.grey[200],
            child: TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward_ios_rounded),
                label: Text('Saved Hikes')),
          ),
          Card(
            color: Colors.grey[200],
            child: TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward_ios_rounded),
                label: Text('Recent Activity')),
          ),
        ],
      ),
    );
  }
}

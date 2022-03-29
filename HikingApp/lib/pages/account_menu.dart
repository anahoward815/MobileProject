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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: ListView(
              children: [
                ListTile.divideTiles(
                    tiles: [
                    
                ]),
                Card(
                  color: Colors.grey[200],
                  child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                      label: Text('Recent Activity')),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(70, 15, 70, 15),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: Text('Logout'),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(136, 183, 175, 100),
                  padding: EdgeInsets.fromLTRB(30, 5, 30, 5)
              ),
            ),
          )
        ],
      ),
    );
  }
}

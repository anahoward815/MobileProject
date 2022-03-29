import 'package:flutter/material.dart';
import 'package:hiking_app/reusable_widgets/AppHeader.dart';

class AccountMenu extends StatefulWidget {
  const AccountMenu({Key? key}) : super(key: key);

  @override
  _AccountMenuState createState() => _AccountMenuState();
}

class _AccountMenuState extends State<AccountMenu> {

  Map<String, bool> equipmentList = {
    "Account Info": false,
    "Saved Hikes": false,
    "Recent Hikes": false,
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appHeader(),
      body: Container(
        height: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(15),
                children: ListTile.divideTiles(
                    context: context,
                    tiles: [
                      ListTile(
                        title: Text('Account Info'),
                      ),
                      ListTile(
                        title: Text('Saved Hikes'),
                      ),
                      ListTile(
                        title: Text('Recent Activity'),
                      )
                    ]
                ).toList(),
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
      ),
    );
  }
}


/*

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

body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: ListView(
              children: [
                ListTile.divideTiles(
                  context: context,
                    tiles: [
                      ListTile(
                        title: Text('Account Info'),
                      ),

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


 */
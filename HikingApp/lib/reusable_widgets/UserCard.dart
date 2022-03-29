import 'package:flutter/material.dart';

class UserCard extends StatefulWidget {
  const UserCard({Key? key}) : super(key: key);

  @override
  _UserCardState createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {

  String usersName = "Emily Kozak";
  String location = "Utah Based Hikr";
  String experience = "Intermediate Hikr";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Column(
                  children: const [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/EmilyKozak.JPG'),
                      radius: 50,
                    ),
                  ]
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                  child: Column(
                    children: [
                      Text(
                        usersName, //+ '\n' + location + '\n' + experience,
                        style: const TextStyle(
                          fontSize: 25.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                        child: Text(
                          location + '\n' + experience,
                          style: const TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      )
                    ]
                  ),
                )
              ],
            ),
          ),
          // const Text(
          //   'Brought to you by Helga Svilty',
          //   style: TextStyle(
          //     fontSize: 1.0,
          //     color: Colors.transparent,
          //   ),
          // )
        ]
      ),
    );
  }
}

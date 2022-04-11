import 'package:flutter/material.dart';
import 'package:hiking_app/reusable_widgets/UserCard.dart';

Drawer hamburgerDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserCard(),
        ListTile(
          title: const Text(
            'My Account',
            style: TextStyle(fontSize: 24.0),
          ),
          onTap: () {
            Navigator.pushNamed(context, '/accountMenu');
          },
        ),
        ListTile(
          title: const Text(
            'My Equipment',
            style: TextStyle(fontSize: 24.0),
          ),
          onTap: () {
            Navigator.pushNamed(context, '/accountEquipment');
          },
        ),
        ListTile(
          title: const Text(
            'Challenge Yourself',
            style: TextStyle(fontSize: 24.0),
          ),
          onTap: () {
            Navigator.pushNamed(context, '/challenge');
          },
        ),
        ListTile(
          title: const Text(
            'Recent Activities',
            style: TextStyle(fontSize: 24.0),
          ),
          onTap: () {
            Navigator.pushNamed(context, '/recentActivity');
          },
        ),
        ListTile(
          title: const Text(
            'Recommended Hikes',
            style: TextStyle(fontSize: 24.0),
          ),
          onTap: () {
            Navigator.pushNamed(context, '/hikeRecommendation');
          },
        ),
        ListTile(
          title: const Text(
            'Saved Hikes',
            style: TextStyle(fontSize: 24.0),
          ),
          onTap: () {
            Navigator.pushNamed(context, '/saved');
          },
        ),
      ],
    ),
  );
}
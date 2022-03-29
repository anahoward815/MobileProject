import 'package:flutter/material.dart';
import 'package:hiking_app/backend/Hikes.dart';
import 'package:hiking_app/reusable_widgets/AppHeader.dart';
import 'package:hiking_app/reusable_widgets/HikeCardDisplay.dart';
import 'package:hiking_app/reusable_widgets/SortBox.dart';

class RecentHikeStats extends StatefulWidget {
  const RecentHikeStats({Key? key}) : super(key: key);

  @override
  _RecentHikeStatsState createState() => _RecentHikeStatsState();
}

class _RecentHikeStatsState extends State<RecentHikeStats> {

  late Hikes recentHike;

  Map data = {};

  @override
  Widget build(BuildContext context) {

    if(data.isEmpty){
      data = ModalRoute.of(context)!.settings.arguments as Map;
    }

    recentHike = Hikes(data['name'], data['difficulty'], data['terrain'], data['location'], data['imagePath'], data['elevation'], data['length']);

    return Scaffold(
      appBar: appHeader(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(recentHike.getHikeImagePath()),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '${recentHike.getHikeName()}',
              style: TextStyle(
                fontSize: 30.0,

              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Stats:',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Total Time: 12 hrs 45 mins',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Calories Burned: 4428 cal',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Total Distance: 14.60 miles',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Elevation Gain: 5,557’',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Breaks Taken: 10',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Average Break: 5 mins',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Average mph: 3.0 mph',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Longest Non-Stop Distance: 1.64 miles',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Greatest Elevation Gain: 500’',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(height: 5.0),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

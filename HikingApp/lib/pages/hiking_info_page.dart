import 'package:flutter/material.dart';
import 'package:hiking_app/backend/Hikes.dart';
import 'package:hiking_app/reusable_widgets/weatherDisplay.dart';

import '../reusable_widgets/AppHeader.dart';

late Hikes hike;


class HikingInfo extends StatefulWidget {
  const HikingInfo({Key? key}) : super(key: key);

  HikingInfo.Info(Hikes val) {
      hike = val;
  }

  @override
  State<HikingInfo> createState() => _HikingInfoState();
}

class _HikingInfoState extends State<HikingInfo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appHeader(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                hike.getHikeName(),
                style: TextStyle(
                  fontSize: 20.0
                ),
              ),
              SizedBox(height: 10.0,),
              Image(
                  image: AssetImage(
                    hike.hikeImagePath
                  )
              ),
              SizedBox(height: 10.0,),
              Card(
                color: Colors.grey[200],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Hike Info',
                        style: TextStyle(
                          fontSize: 15.0
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(18.0, 10.0, 10.0, 10.0),
                        child: Text(
                            'Difficulty: ${hike.getHikeDifficulty()}'
                        )
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(18.0, 10.0, 10.0, 10.0),
                        child: Text(
                            'Distance: ${hike.getHikeLength()} miles'
                        )
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(18.0, 10.0, 10.0, 10.0),
                        child: Text(
                            'Elevation: ${hike.getHikeElevation()} ft'
                        )
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(18.0, 10.0, 10.0, 10.0),
                        child: Text(
                            'Terrain: ${hike.getHikeTerrain()}'
                        )
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0,),
              Text(
                '7 Day Forecast',
                style: TextStyle(
                    fontSize: 18.0
                ),
              ),
              Card(
                color: Colors.lightBlueAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DailyWeather.day('Mon'),
                    DailyWeather.day('Tues'),
                    DailyWeather.day('Wed'),
                    DailyWeather.day('Thurs'),
                    DailyWeather.day('Fri'),
                    DailyWeather.day('Sat'),
                    DailyWeather.day('Sun'),
                  ],
                ),
              ),
              SizedBox(height: 10.0,),
              Text(
                'Today\'s Weather',
                style: TextStyle(
                    fontSize: 18.0
                ),
              ),
              Card(
                color: Colors.lightBlueAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                      child: Icon(
                        Icons.wb_sunny_outlined,
                        size: 40.0,
                      ),
                    ),
                    SizedBox(width: 30.0,),
                    Text(
                        '53 F',
                        style: TextStyle(
                          fontSize: 40.0
                        ),
                    ),
                    SizedBox(width: 50.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'High: 56 F',
                          style: TextStyle(
                              fontSize: 20.0
                          ),
                        ),
                        Text(
                          'Low: 23 F',
                          style: TextStyle(
                              fontSize: 20.0
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Card(
                color: Colors.grey[200],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Recommended Equipment:',
                        style: TextStyle(
                            fontSize: 15.0
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(18.0, 10.0, 10.0, 10.0),
                        child: Text(
                            'Hiking Boots'
                        )
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(18.0, 10.0, 10.0, 10.0),
                        child: Text(
                            'Windbreaker'
                        )
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(18.0, 10.0, 10.0, 10.0),
                        child: Text(
                            'Tights'
                        )
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(18.0, 10.0, 10.0, 10.0),
                        child: Text(
                            'Moleskin'
                        )
                    ),
                  ],
                ),
              ),
              Card(
                color: Colors.grey[200],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.fromLTRB(5.0, 10.0, 10.0, 10.0),
                        child: Text(
                          '*Water and Calories:',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        )
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(18.0, 5.0, 10.0, 10.0),
                        child: Text(
                            'Water Recommendation: 2 Liters'
                        )
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(18.0, 5.0, 10.0, 10.0),
                        child: Text(
                            'Caloric Recommendation: 6400 kj'
                        )
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                    'Save Hike'
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.teal[200]
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

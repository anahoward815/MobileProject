import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:hiking_app/backend/Hikes.dart';
import 'package:hiking_app/backend/SavedHikes.dart';
import 'package:hiking_app/reusable_widgets/TimpanogosHikeMap.dart';
import 'package:hiking_app/reusable_widgets/weatherDisplay.dart';
import 'package:hiking_app/backend/Weather.dart';

import '../reusable_widgets/AppHeader.dart';

late Hikes hike;


class HikingInfo extends StatefulWidget {
  HikingInfo({Key? key}) : super(key: key);

  HikingInfo.Info(Hikes val) {
      hike = val;
  }

  @override
  State<HikingInfo> createState() => _HikingInfoState();
}

class _HikingInfoState extends State<HikingInfo> {

  String saveText = 'Save Hike';

  bool pressed = false;
  double currentTemp = 13.62;
  double high = 22.51;
  double low = 6.46;
  String currentWeatherIcon = '';
  String currentIconUrl = '';

  void getWeather() async {
    // Weather instance = Weather(0.0,0.0);
    await Weather.inst.init(0.0, 0.0);
    currentTemp = Weather.inst.currentTemp;
    high = Weather.inst.high;
    low = Weather.inst.low;
    currentIconUrl = Weather.inst.currentIconUrl;
  }

  @override
  void initState() {
    super.initState();
    getWeather();
  }

  @override
  Widget build(BuildContext context) {
    // getWeather();
    // sleep(const Duration(seconds: 10));
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
                child: Container(
                  height: 400,
                  child: TimpanogosHikeMap(),
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
              const Text(
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
                      padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                      // child: Image.network(currentIconUrl),
                      child: Icon(
                        Icons.wb_sunny_outlined,
                        size: 40.0,
                      ),
                    ),
                    SizedBox(width: 30.0,),
                    Text(
                        currentTemp.toString() + ' F',
                        style: TextStyle(
                          fontSize: 30.0
                        ),
                    ),
                    SizedBox(width: 50.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'High: ' + high.toString() + ' F',
                          style: TextStyle(
                              fontSize: 20.0
                          ),
                        ),
                        Text(
                          'Low: ' + low.toString() + ' F',
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
                onPressed: () async {
                  if(pressed == false){
                    print('big mistake');
                    await SavedHikes.inst.init();
                    SavedHikes.inst.addHike(hike);
                    print(SavedHikes.inst.getList().elementAt(0));
                    setState(() {
                      saveText = 'Saved';
                      pressed = true;
                    });
                  }
                },
                child: Text(
                    saveText,
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

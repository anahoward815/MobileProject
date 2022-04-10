import 'package:flutter/material.dart';
import 'package:hiking_app/backend/Hikes.dart';
import 'package:hiking_app/backend/SavedHikes.dart';
import 'package:hiking_app/reusable_widgets/weatherDisplay.dart';
import 'package:hiking_app/backend/Weather.dart';
import 'package:hiking_app/reusable_widgets/HamburgerDrawer.dart';

import '../reusable_widgets/AppHeader.dart';

class HikingInfo extends StatefulWidget {
  HikingInfo({Key? key}) : super(key: key);

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
  
  late Map data;
  late Weather weather;
  late Hikes hike;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;
    weather = data['weather'];
    hike = data['hike'];
    print(weather.currentWeatherIcon);
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
              Image(
                  image: AssetImage(
                      hike.hikeMapPath
                  )
              ),
              SizedBox(height: 10.0,),
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
                    DailyWeather.day('Mon', weather.currentWeatherIcon),
                    DailyWeather.day('Tues', weather.weatherIcon1),
                    DailyWeather.day('Wed', weather.weatherIcon2),
                    DailyWeather.day('Thurs', weather.weatherIcon3),
                    DailyWeather.day('Fri', weather.weatherIcon4),
                    DailyWeather.day('Sat', weather.weatherIcon5),
                    DailyWeather.day('Sun', weather.weatherIcon6),
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 18.0),
                        child: Icon(
                          determineWeatherIcon((weather.currentWeatherIcon)),
                          size: 40.0,
                        ),
                      ),
                      SizedBox(width: 30.0,),
                      Text(
                          weather.currentTemp.toString() + ' F',
                          style: TextStyle(
                            fontSize: 30.0
                          ),
                      ),
                      SizedBox(width: 40.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'High: ' + weather.high.toString() + ' F',
                            style: TextStyle(
                                fontSize: 20.0
                            ),
                          ),
                          Text(
                            'Low: ' + weather.low.toString() + ' F',
                            style: TextStyle(
                                fontSize: 20.0
                            ),
                          )
                        ],
                      )
                    ],
                  ),
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
      drawer: hamburgerDrawer(context),
    );
  }
}

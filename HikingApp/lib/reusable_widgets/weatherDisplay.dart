import 'package:flutter/material.dart';

class DailyWeather extends StatefulWidget {
  DailyWeather({Key? key}) : super(key: key);

  late String weekDay;

  DailyWeather.day(String day){
    weekDay = day;
  }

  @override
  State<DailyWeather> createState() => _DailyWeatherState(weekDay);
}

class _DailyWeatherState extends State<DailyWeather> {

  late String weekDay;

  _DailyWeatherState(String day) {
    weekDay = day;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(Icons.wb_sunny_outlined),
          SizedBox(
            height: 5.0,
          ),
          Text(
            weekDay,
            style: TextStyle(
                fontSize: 10.0
            ),
          )
        ],
      ),
    );
  }
}

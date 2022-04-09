import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

class DailyWeather extends StatefulWidget {
  DailyWeather({Key? key}) : super(key: key);

  late String weekDay;
  late String icon;

  DailyWeather.day(String day, this.icon){
    weekDay = day;
  }

  @override
  State<DailyWeather> createState() => _DailyWeatherState();
}

class _DailyWeatherState extends State<DailyWeather> {


  /*
* all icons:
* thunderstorm
* drizzle
* rain
* snow
* mist smoke haze dust fog sand dust ash squall tornado
* clear
* clouds
* */

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(determineWeatherIcon(widget.icon)),
          SizedBox(
            height: 10.0,
          ),
          Text(
            widget.weekDay,
            style: TextStyle(
                fontSize: 10.0
            ),
          )
        ],
      ),
    );
  }
}

IconData determineWeatherIcon(String icon){
  if(icon == 'Thunderstorm'){
    return WeatherIcons.thunderstorm;
  }
  else if(icon == 'Drizzle' || icon == 'rain'){
    return WeatherIcons.rain;
  }
  else if(icon == 'Snow'){
    return WeatherIcons.snow;
  }
  else if(icon == 'Mist' || icon == 'Smoke' || icon == 'Haze' || icon == 'Dust' || icon == 'Fog' || icon == 'Sand' || icon == 'Ash' || icon == 'Squall'){
    return WeatherIcons.fog;
  }
  else if(icon == 'Tornado'){
    return WeatherIcons.tornado;
  }
  else if(icon == 'Clear'){
    return WeatherIcons.day_sunny;
  }
  else{
    return WeatherIcons.cloud;
  }
}

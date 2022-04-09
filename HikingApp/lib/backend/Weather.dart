import 'package:http/http.dart';
import 'dart:convert';

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

class Weather {

  Weather(this.lat, this.long);

  double lat = 0.0;
  double long = 0.0;
  late double currentTemp = 0.0;
  late double high = 0.0;
  late double low = 0.0;
  late String currentWeatherIcon = '';
  late String weatherIcon1;
  late String weatherIcon2;
  late String weatherIcon3;
  late String weatherIcon4;
  late String weatherIcon5;
  late String weatherIcon6;

  late String currentIconUrl = '';

  Future<void> getWeather() async {
    try {
      Response response = await get(Uri.parse('https://api.openweathermap.org/data/2.5/onecall?lat=$lat&lon=$long&units=imperial&exclude=hourly,minutely&APPID=1722f3c559a5a00effc25b9f9c9dafd4'));

      Map data = jsonDecode(response.body);
      currentTemp = data['current']['temp'];
      high = data['daily'][0]['temp']['max'];
      low = data['daily'][0]['temp']['min'];
      currentWeatherIcon = data['daily'][0]['weather'][0]['main'];
      weatherIcon1 = data['daily'][1]['weather'][0]['main'];
      weatherIcon2 = data['daily'][2]['weather'][0]['main'];
      weatherIcon3 = data['daily'][3]['weather'][0]['main'];
      weatherIcon4 = data['daily'][4]['weather'][0]['main'];
      weatherIcon5 = data['daily'][5]['weather'][0]['main'];
      weatherIcon6 = data['daily'][6]['weather'][0]['main'];
      currentIconUrl = 'http://openweathermap.org/img/w/' + currentWeatherIcon + '.png';

    } catch(e) {
      print(e);
    }
  }

  double getLat(){ return lat; }

  double getLong(){ return long; }

  double getCurrentTemp(){ return currentTemp; }

  double getHigh(){ return high; }

  double getLow(){ return low; }



}
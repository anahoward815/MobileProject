import 'package:http/http.dart';
import 'dart:convert';

class Weather {

  Weather._();
  static Weather? _instance;
  static Weather get inst => _instance ??= Weather._();

  double lat = 0.0;
  double long = 0.0;
  late double currentTemp = 0.0;
  late double high = 0.0;
  late double low = 0.0;
  late String currentWeatherIcon = '';
  late String currentIconUrl = '';


  init (double lat, double long) async {
    this.lat = lat;
    this.long = long;
    getWeather();
  }

  void getWeather() async {
    try {
      Response response = await get(Uri.parse('https://api.openweathermap.org/data/2.5/onecall?lat=40.3908&lon=-111.6458&units=imperial&exclude=hourly,minutely&APPID=1722f3c559a5a00effc25b9f9c9dafd4'));
      Map data = jsonDecode(response.body);
      currentTemp = data['current']['temp'];
      high = data['daily'][0]['temp']['max'];
      low = data['daily'][0]['temp']['min'];
      currentWeatherIcon = data['daily'][0]['weather'][0]['icon'];
      currentIconUrl = 'http://openweathermap.org/img/w/' + currentWeatherIcon + '.png';

    } catch(e) {
      print(e);
    }
  }

}
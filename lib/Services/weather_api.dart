import 'package:flutter/cupertino.dart';
import 'package:weather_app_appedian/Const/const.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:weather_app_appedian/Models/WeatherModel.dart';

getWeather({var lat, var lon}) async {
  print(lat.toString());
  try {
    final weatherResponse = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$apikey'));

    if (weatherResponse.statusCode == 200) {
      var data = jsonDecode(weatherResponse.body);
      print("$data");

      return WeatherModel.fromJson(data);
    } else {
      debugPrint('Failed to load Weather');
    }
  } catch (e) {
    print("error $e");
  }
}

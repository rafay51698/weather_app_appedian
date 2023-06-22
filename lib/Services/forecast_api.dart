import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app_appedian/Const/const.dart';
import 'package:weather_app_appedian/Models/ForecastModel.dart';
import 'package:weather_app_appedian/Services/storage_init.dart';

Future<ForecastModel> getForecastWeather() async {
  final response;
  var city = storage.read('city');
  response = await http.get(Uri.parse(
      'http://api.openweathermap.org/data/2.5/forecast?q=Karachi&appid=$apikey'));
  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    print("$data");
    return ForecastModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load Forecast');
  }
}

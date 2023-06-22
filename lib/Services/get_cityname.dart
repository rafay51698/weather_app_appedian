import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app_appedian/Const/const.dart';
import 'package:weather_app_appedian/Models/City.dart';
import 'package:weather_app_appedian/Models/ForecastModel.dart';

getCity({
  var lon,
  var lat,
}) async {
  final response;
  print("inside city api $lat $lon");
  response = await http.get(Uri.parse(
      'http://api.openweathermap.org/geo/1.0/reverse?lat=$lat&lon=$lon&limit=2&appid=$apikey'));
  if (response.statusCode == 200) {
    var data = await jsonDecode(response.body);
    print("$data");
    return CityModel.fromJson(data);
  } else {
    throw Exception('Failed to load Forecast');
  }
}

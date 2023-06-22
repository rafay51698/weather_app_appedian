import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:weather_app_appedian/Models/ForecastModel.dart';
import 'package:weather_app_appedian/Models/WeatherModel.dart';
import 'package:weather_app_appedian/Services/forecast_api.dart';
import 'package:weather_app_appedian/Services/get_cityname.dart';
import 'package:weather_app_appedian/Services/get_current_location.dart';
import 'package:weather_app_appedian/Services/storage_init.dart';
import 'package:weather_app_appedian/Services/weather_api.dart';
import 'package:weather_app_appedian/Util/utils.dart';

class HomeController extends GetxController {
  Rxn<WeatherModel>? weatherResponse = Rxn<WeatherModel>();
  Rxn<ForecastModel>? forecastModel = Rxn<ForecastModel>();
  var lat = 24.816818.obs;
  var lon = 67.078605.obs;
  var isLoading = false.obs;
  var forecastLoading = false.obs;

  getCurrentLocation() async {
    isLoading.value = true;
    Position position = await determinePosition();
    lat.value = position.latitude;
    lon.value = position.longitude;
    print("${lat.value} ${lon.value} ");
    await storage.write('lat', position.latitude);
    await storage.write('lon', position.longitude);
    // var data = await getCity();
    // storage.write('city', data.name);
  }

  getWeatherApi() async {
    weatherResponse?.value = await getWeather(lat: lat.value, lon: lon.value);
    isLoading.value = false;
    update();
  }

  getForecastApi() async {
    forecastModel?.value = await getForecastWeather();
    forecastLoading.value = false;
    update();
  }

  init() async {
    if (await getUser() != null) {
      print("here");
      await getWeatherApi();
      await getForecastApi();
    } else {
      print("not here");
      await getCurrentLocation();
      await getWeatherApi();
      await getForecastApi();
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    init();
  }
}

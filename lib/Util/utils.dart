import 'package:weather_app_appedian/Services/storage_init.dart';

Future getUser() async {
  final String? lon = storage.read('lon');
  final String? lat = storage.read('lat');
  final String? city = storage.read('city');
  return lon;
}

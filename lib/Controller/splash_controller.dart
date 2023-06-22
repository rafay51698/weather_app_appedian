import 'package:get/get.dart';
import 'package:weather_app_appedian/View/HomeScreen/home_screen.dart';
import 'package:weather_app_appedian/main.dart';

class SplashController extends GetxController {

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Future.delayed(
      Duration(
        seconds: 1,
      ),
      () => Get.to(() =>  HomeScreen()),
    );
  }
}

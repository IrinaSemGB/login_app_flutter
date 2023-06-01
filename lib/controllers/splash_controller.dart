import 'package:get/get.dart';
import 'package:login_app_flutter/screens/on_boarding/on_boarding_screen.dart';

class SplashController extends GetxController {
  static SplashController get find => Get.find();

  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(seconds: 5));
    Get.to(OnBoardingScreen());
   }
}
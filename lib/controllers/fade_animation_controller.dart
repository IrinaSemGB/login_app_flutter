import 'package:get/get.dart';
import 'package:login_app_flutter/screens/welcome_screen.dart';

class FadeAnimationController extends GetxController {
  static FadeAnimationController get find => Get.find();

  RxBool animate = false.obs;

  Future startSplashAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(seconds: 3));
    animate.value = false;
    await Future.delayed(Duration(seconds: 2));
    Get.offAll(() => WelcomeScreen());
   }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
  }
}
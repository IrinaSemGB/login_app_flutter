import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app_flutter/constants/app_colors.dart';
import 'package:login_app_flutter/constants/app_titles.dart';
import 'package:login_app_flutter/constants/images_strings.dart';
import 'package:login_app_flutter/controllers/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();

    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Obx(() => AnimatedPositioned(
              duration: Duration(milliseconds: 1600),
              top: splashController.animate.value ? 0 : - screenWidth * 0.4,
              left: splashController.animate.value ? 0 : - screenWidth * 0.4,
              child: Image(image: AssetImage(kSplashTopIcon), height: screenWidth * 0.4),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: Duration(milliseconds: 1600),
              top: screenWidth * 0.3,
              left: splashController.animate.value
                  ? screenWidth * 0.2
                  : -screenWidth * 0.2,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(kAppTitle,
                        style: Theme.of(context).textTheme.headlineSmall),
                    Text(kAppTagLine,
                        style: Theme.of(context).textTheme.headlineMedium),
                  ],
                ),
              ),
            ),
          ),
          Obx(() => AnimatedPositioned(
              duration: Duration(milliseconds: 1600),
              left: 10.0,
              right: 10.0,
              bottom: splashController.animate.value ? screenHeight * 0.2 : 0,
              child: AnimatedOpacity(
                opacity: splashController.animate.value ? 1 : 0,
                duration: Duration(milliseconds: 1600),
                child: Image(image: AssetImage(kSplashImage), width: screenWidth * 0.9),
              ),
            ),
          ),
          Obx(() => AnimatedPositioned(
              duration: Duration(milliseconds: 1600),
              bottom: splashController.animate.value ? 40.0 : -40.0,
              right: splashController.animate.value ? 30.0 : -30.0,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: AppColors.PRIMARY,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

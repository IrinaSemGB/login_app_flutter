import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app_flutter/constants/app_colors.dart';
import 'package:login_app_flutter/constants/app_titles.dart';
import 'package:login_app_flutter/constants/images_strings.dart';
import 'package:login_app_flutter/controllers/fade_animation_controller.dart';
import 'package:login_app_flutter/models/fade_animation_position_model.dart';
import '../common_widgets/fade_in_animation/fade_animation_widget.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final controller = Get.put(FadeAnimationController());

  @override
  Widget build(BuildContext context) {

    controller.startSplashAnimation();

    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          FadeAnimation(
            durationInMilliseconds: 1600,
            animate: FadeAnimationPosition(
              topAfter: 0, topBefore: -screenWidth * 0.4,
              leftAfter: 0, leftBefore: -screenWidth * 0.4
            ),
            child: Image(image: AssetImage(kSplashTopIcon), height: screenWidth * 0.4),
          ),
          FadeAnimation(
            durationInMilliseconds: 2000,
            animate: FadeAnimationPosition(
              leftAfter: screenWidth * 0.2, leftBefore: -screenWidth * 0.2,
              topAfter: screenWidth * 0.3, topBefore: screenWidth * 0.3,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(kAppTitle,
                    style: Theme.of(context).textTheme.displayMedium),
                Text(kAppTagLine,
                    style: Theme.of(context).textTheme.headlineLarge),
              ],
            ),
          ),
          FadeAnimation(
            durationInMilliseconds: 2400,
            animate: FadeAnimationPosition(
              bottomAfter: screenHeight * 0.2, bottomBefore: 0,
              leftAfter: 10.0, leftBefore: 10.0,
              rightAfter: 10.0, rightBefore: 10.0,
            ),
            child: Image(image: AssetImage(kSplashImage), width: screenWidth * 0.9),
          ),
          FadeAnimation(
            durationInMilliseconds: 2400,
            animate: FadeAnimationPosition(
              bottomAfter: 40, bottomBefore: -40,
              rightAfter: 30, rightBefore: -30,
            ),
            child: Container(
              width: 30.0,
              height: 30.0,
              decoration: BoxDecoration(
                color: AppColors.PRIMARY,
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

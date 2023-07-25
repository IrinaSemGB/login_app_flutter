import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app_flutter/common_widgets/fade_in_animation/fade_animation_widget.dart';
import 'package:login_app_flutter/constants/app_colors.dart';
import 'package:login_app_flutter/constants/app_titles.dart';
import 'package:login_app_flutter/constants/images_strings.dart';
import 'package:login_app_flutter/models/fade_animation_position_model.dart';
import 'package:login_app_flutter/screens/login/login_screen.dart';
import 'package:login_app_flutter/screens/sign_up/sing_up_screen.dart';
import '../controllers/fade_animation_controller.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  final controller = Get.put(FadeAnimationController());

  @override
  Widget build(BuildContext context) {

    final mediaQuery = MediaQuery.of(context);
    final double height = mediaQuery.size.height;
    final bool brightnessIsDark = mediaQuery.platformBrightness == Brightness.dark;

    controller.startAnimation();

    return Scaffold(
      backgroundColor: brightnessIsDark ? AppColors.SECONDARY : AppColors.PRIMARY,
      body: Stack(
        children: [
          FadeAnimation(
            durationInMilliseconds: 1200,
            animate: FadeAnimationPosition(
              bottomAfter: 0, bottomBefore: -100,
              topAfter: 0, topBefore: 0,
              rightAfter: 0, rightBefore: 0,
              leftAfter: 0, leftBefore: 0,
            ),
            child: Container(
              padding: EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Hero(
                    tag: 'welcome_image_tag',
                    child: Image.asset(kWelcomeScreenImage,
                      height: height * 0.6,
                    ),
                  ),
                  Column(
                    children: [
                      Text(kWelcomeTitle,
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      Text(kWelcomeSubtitle,
                        style: Theme.of(context).textTheme.displayMedium,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () => Get.to(LoginScreen()),
                          style: Theme.of(context).outlinedButtonTheme.style,
                          child: Text(kLoginButtonTitle.toUpperCase()),
                        ),
                      ),
                      SizedBox(width: 15.0),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => Get.to(SignUpScreen()),
                          style: Theme.of(context).elevatedButtonTheme.style,
                          child: Text(kSignupButtonTitle.toUpperCase()),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

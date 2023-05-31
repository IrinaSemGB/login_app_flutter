import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_app_flutter/constants/app_colors.dart';
import 'package:login_app_flutter/constants/images_strings.dart';

import '../constants/app_titles.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            pages: [
              Container(
                color: AppColors.WHITE,
                padding: EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(image: AssetImage(kOnBoardingImage1), height: size.height * 0.5),
                    Column(
                      children: [
                        Text(kOnBoardingTitle1, style: Theme.of(context).textTheme.headlineSmall),
                        Text(kOnBoardingSubtitle1, textAlign: TextAlign.center),
                      ],
                    ),
                    Text(kOnBoardingCounter1),
                    SizedBox(height: 20.0),
                  ],
                ),
              ),
              Container(
                color: AppColors.LIGHT_PINK,
              ),
              Container(
                color: AppColors.LIGHT_ORANGE,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

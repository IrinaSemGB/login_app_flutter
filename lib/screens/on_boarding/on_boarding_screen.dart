import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_app_flutter/constants/app_colors.dart';
import 'package:login_app_flutter/controllers/on_boarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {

  final OnBoardingController onBoardingController = OnBoardingController();

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Obx(
        () => Stack(
          alignment: Alignment.center,
          children: [
            LiquidSwipe(
              pages: onBoardingController.pages,
              liquidController: onBoardingController.controller,
              slideIconWidget: Icon(Icons.arrow_back_ios),
              enableSideReveal: true,
              onPageChangeCallback: onBoardingController.onPageChangedCallBack,
            ),
            Positioned(
              bottom: size.height * 0.05,
              child: OutlinedButton(
                onPressed: () => onBoardingController.animateToNextPage(),
                style: ElevatedButton.styleFrom(
                  side: BorderSide(color: Colors.black26),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20.0),
                  foregroundColor: AppColors.WHITE,
                ),
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: AppColors.DARK,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
            Positioned(
              top: 50.0,
              right: 20.0,
              child: TextButton(
                onPressed: () => onBoardingController.skip(),
                child: Text('Skip', style: TextStyle(color: Colors.grey)),
              ),
            ),
            Positioned(
              bottom: 10.0,
              child: AnimatedSmoothIndicator(
                activeIndex: onBoardingController.currentPage.value,
                count: onBoardingController.pages.length,
                effect: WormEffect(
                  activeDotColor: AppColors.DARK,
                  dotHeight: 5.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

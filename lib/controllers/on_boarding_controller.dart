import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import '../constants/app_colors.dart';
import '../constants/app_titles.dart';
import '../constants/images_strings.dart';
import '../models/on_boarding_model.dart';
import '../screens/on_boarding/on_boarding_widget.dart';

class OnBoardingController extends GetxController {

  final LiquidController controller = LiquidController();
  RxInt currentPage = 0.obs;

  onPageChangedCallBack(pageIndex) => currentPage.value = pageIndex;

  skip() => controller.jumpToPage(page: pages.length - 1);

  animateToNextPage() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }

  final List<OnBoardingPage> pages = [
    OnBoardingPage(
      onBoardingModel: OnBoardingModel(
        image: kOnBoardingImage1,
        title: kOnBoardingTitle1,
        subTitle: kOnBoardingSubtitle1,
        counterText: kOnBoardingCounter1,
        bgColor: AppColors.WHITE,
      ),
    ),
    OnBoardingPage(
      onBoardingModel: OnBoardingModel(
        image: kOnBoardingImage2,
        title: kOnBoardingTitle2,
        subTitle: kOnBoardingSubtitle2,
        counterText: kOnBoardingCounter2,
        bgColor: AppColors.LIGHT_PINK,
      ),
    ),
    OnBoardingPage(
      onBoardingModel: OnBoardingModel(
        image: kOnBoardingImage3,
        title: kOnBoardingTitle3,
        subTitle: kOnBoardingSubtitle3,
        counterText: kOnBoardingCounter3,
        bgColor: AppColors.LIGHT_ORANGE,
      ),
    ),
  ];
}
import '../../constants/app_titles.dart';
import '../../constants/images_strings.dart';

class DashboardBanner {
  final String image;
  final String title;
  final String subTitle;

  DashboardBanner(this.image, this.title, this.subTitle);

  static List<DashboardBanner> list = [
    DashboardBanner(kBannerImage1, kDashboardBannerTitle1, kDashboardBannerSubTitle),
    DashboardBanner(kBannerImage2, kDashboardBannerTitle2, kDashboardBannerSubTitle),
  ];
}
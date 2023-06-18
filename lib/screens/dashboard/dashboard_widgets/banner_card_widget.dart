import 'package:flutter/material.dart';
import '../../../constants/images_strings.dart';
import '../../../models/Dashboard/banner_model.dart';

class BannerCard extends StatelessWidget {

  final Color bannerBackgroundColor;
  final TextTheme textTheme;
  final DashboardBanner banner;

  const BannerCard({
    super.key,
    required this.bannerBackgroundColor,
    required this.textTheme,
    required this.banner,
  });



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: bannerBackgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(child: Image(image: AssetImage(kBookmarkIcon), height: 30.0,)),
              Flexible(child: Image(image: AssetImage(banner.image), height: 70.0)),
            ],
          ),
          SizedBox(height: 20.0),
          Text(
            banner.title,
            style: textTheme.displayMedium,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            banner.subTitle,
            style: textTheme.bodyMedium,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
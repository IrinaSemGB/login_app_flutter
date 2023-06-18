import 'package:flutter/material.dart';
import '../../../constants/app_titles.dart';
import '../../../models/Dashboard/banner_model.dart';
import 'banner_card_widget.dart';

class DashboardBanners extends StatelessWidget {

  final Color bannerBackgroundColor;
  final TextTheme textTheme;

  const DashboardBanners({super.key,
    required this.bannerBackgroundColor,
    required this.textTheme,
  });

  @override
  Widget build(BuildContext context) {

    final List<DashboardBanner> list = DashboardBanner.list;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: BannerCard(
            banner: list[0],
            bannerBackgroundColor: bannerBackgroundColor,
            textTheme: textTheme,
          ),
        ),
        SizedBox(width: 15.0),
        Expanded(
          child: Column(
            children: [
              BannerCard(
                bannerBackgroundColor: bannerBackgroundColor,
                textTheme: textTheme,
                banner: list[1],
              ),
              SizedBox(height: 5.0),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  child: Text(kDashboardButton),
                  onPressed: () {
                    // TODO Realisation
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
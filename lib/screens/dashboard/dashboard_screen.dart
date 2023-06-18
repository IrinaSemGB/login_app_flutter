import 'package:flutter/material.dart';
import 'package:login_app_flutter/constants/app_colors.dart';
import 'package:login_app_flutter/constants/app_titles.dart';
import 'dashboard_widgets/dashboard_appBar_widget.dart';
import 'dashboard_widgets/dashboard_banners_widget.dart';
import 'dashboard_widgets/dashboard_categories_widget.dart';
import 'dashboard_widgets/dashboard_search_widget.dart';
import 'dashboard_widgets/dashboard_top_courses_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final mediaQuery = MediaQuery.of(context);
    final bannerBackgroundColor = mediaQuery.platformBrightness == Brightness.dark
        ? Colors.grey.shade700 : AppColors.CARD;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: DashboardAppBar(bannerBackgroundColor: bannerBackgroundColor),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(kDashboardTitle, style: textTheme.bodyMedium),
              Text(kDashboardHeading, style: textTheme.headlineMedium),

              SizedBox(height: 20.0),
              DashboardSearch(textTheme: textTheme),

              SizedBox(height: 20.0),
              DashboardCategories(textTheme: textTheme),

              SizedBox(height: 20.0),
              DashboardBanners(bannerBackgroundColor: bannerBackgroundColor, textTheme: textTheme),

              SizedBox(height: 20.0),
              Text(
                kDashboardTopCourses,
                style: textTheme.displayMedium?.apply(fontSizeFactor: 1.2),
              ),
              DashboardTopCoursesWidget(bannerBackgroundColor: bannerBackgroundColor, textTheme: textTheme),
            ],
          ),
        ),
      ),
    );
  }
}










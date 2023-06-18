import 'package:flutter/material.dart';
import 'package:login_app_flutter/models/Dashboard/categories_model.dart';
import '../../../constants/app_colors.dart';

class DashboardCategories extends StatelessWidget {

  final TextTheme textTheme;

  const DashboardCategories({super.key,
    required this.textTheme,
  });

  @override
  Widget build(BuildContext context) {

    final list = CategoriesModel.list;

    return SizedBox(
      height: 45.0,
      child: ListView.builder(
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          final category = list[index];
          return GestureDetector(
            onTap: category.onPress,
            child: SizedBox(
              width: 170.0,
              height: 45.0,
              child: Row(
                children: [
                  Container(
                    width: 45.0,
                    height: 45.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: AppColors.DARK,
                    ),
                    child: Center(
                      child: Text(category.title, style: textTheme.displaySmall?.apply(color: AppColors.WHITE)),
                    ),
                  ),
                  SizedBox(width: 5.0),
                  Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(category.heading, style: textTheme.displaySmall, overflow: TextOverflow.ellipsis),
                        Text(category.subHeading, style: textTheme.bodySmall, overflow: TextOverflow.ellipsis),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_titles.dart';
import '../../../constants/images_strings.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {

  final Color bannerBackgroundColor;

  const DashboardAppBar({super.key,
    required this.bannerBackgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.menu, color: AppColors.SECONDARY),
      actions: [
        Container(
          margin: EdgeInsets.only(top: 7.0, right: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: bannerBackgroundColor,
          ),
          child: IconButton(
            icon: Image(image: AssetImage(kUserProfileImage)),
            onPressed: () {
              // TODO Realisation
            },
          ),
        ),
      ],
      title: Text(kAppTitle, style: Theme.of(context).textTheme.displayMedium),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(55);
}
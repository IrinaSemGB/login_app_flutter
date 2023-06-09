import 'package:flutter/material.dart';
import '../../constants/app_titles.dart';
import '../../constants/images_strings.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: AssetImage(kWelcomeScreenImage), height: size.height * 0.2),
        Text(kWelcomeTitle, style: Theme.of(context).textTheme.headlineMedium),
        Text(kWelcomeSubtitle, style: Theme.of(context).textTheme.displaySmall),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_titles.dart';
import '../../constants/images_strings.dart';

class LoginFooter extends StatelessWidget {

  final String textTitle, buttonTitle;

  const LoginFooter({
    super.key,
    required this.textTitle,
    required this.buttonTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 10.0),
          child: Text('OR', style: Theme.of(context).textTheme.displaySmall),
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: Image(image: AssetImage(kGoogleLogo), width: 20.0),
            label: Text(kGoogleButtonTitle),
            onPressed: () {
              // TODO realisation
            },
          ),
        ),
        TextButton(
          onPressed: () {
            // TODO realisation
          },
          child: Text.rich(
            TextSpan(
              text: textTitle,
              style: Theme.of(context).textTheme.displaySmall,
              children: [
                TextSpan(
                  text: buttonTitle,
                  style: TextStyle(color: AppColors.ACCENT),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
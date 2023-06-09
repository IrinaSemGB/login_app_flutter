import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_titles.dart';
import '../../constants/images_strings.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('OR'),
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
              text: kHaveAnAccount,
              style: Theme.of(context).textTheme.displaySmall,
              children: [
                TextSpan(
                  text: kSignupButtonTitle,
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
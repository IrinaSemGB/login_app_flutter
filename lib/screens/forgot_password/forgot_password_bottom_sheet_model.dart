import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/app_titles.dart';
import 'forgot_password_mail_screen.dart';
import 'forgot_password_options_button_widget.dart';

class ForgotPasswordScreen {

  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
      context: context,
      builder: (context) => Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(kForgotPasswordTitle, style: Theme.of(context).textTheme.headlineMedium),
            Text(kForgotPasswordSubtitle, style: Theme.of(context).textTheme.displaySmall),
            SizedBox(height: 30.0),
            ForgotPasswordOptionsButton(
              icon: Icons.mail_outline_rounded,
              title: kEmail,
              subTitle: kResetViaEmail,
              onTap: () {
                Navigator.pop(context);
                Get.to(() => ForgotPasswordMailScreen());
              },
            ),
            SizedBox(height: 30.0),
            ForgotPasswordOptionsButton(
              icon: Icons.mobile_friendly_rounded,
              title: kPhoneNumber,
              subTitle: kResetViaPhone,
              onTap: () {
                // TODO Realisation
              },
            ),
          ],
        ),
      ),
    );
  }
}
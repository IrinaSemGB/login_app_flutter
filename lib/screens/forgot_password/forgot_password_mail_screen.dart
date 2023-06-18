import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app_flutter/screens/login/login_header_widget.dart';
import 'package:login_app_flutter/constants/app_titles.dart';
import 'package:login_app_flutter/constants/images_strings.dart';
import '../../common_widgets/next_button_widget.dart';
import 'otp_screen.dart';

class ForgotPasswordMailScreen extends StatelessWidget {
  const ForgotPasswordMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final mediaQuery = MediaQuery.of(context);

    String imageName = mediaQuery.platformBrightness == Brightness.dark
        ? kForgotPasswordImageYellow
        : kForgotPasswordImageDark;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(30.0),
            child: Column(
              children: [
                SizedBox(height: mediaQuery.size.height * 0.1),
                FormHeader(
                  title: kForgotPassword,
                  subTitle: kInputEmailSubtitle,
                  image: imageName,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: 30.0,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30.0),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text(kEmail),
                          hintText: kEmail,
                          prefixIcon: Icon(Icons.mail_outline_rounded),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      NextButton(
                        onPressed: () {
                          Get.to(() => OtpScreen());
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

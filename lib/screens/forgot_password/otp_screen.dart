import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:login_app_flutter/common_widgets/next_button_widget.dart';
import 'package:login_app_flutter/constants/app_titles.dart';
import '../dashboard/dashboard_screen.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Brightness platformBrightness = MediaQuery.of(context).platformBrightness;
    final borderColor = platformBrightness == Brightness.dark? Colors.grey.shade700 : Colors.grey.shade200;

    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(kOtpTitle, style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontSize: 80.0, height: 0.85)),
              Text(kOtpSubTitle.toUpperCase(), style: Theme.of(context).textTheme.displayMedium),
              SizedBox(height: 40.0),
              Text(kOtpMessage + 'your_registered@email.com', textAlign: TextAlign.center),
              SizedBox(height: 40.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    OtpTextField(
                      numberOfFields: 6,
                      filled: true,
                      fillColor:  borderColor,
                      enabledBorderColor: borderColor,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      onSubmit: (code) {
                        // TODO right realisation
                        print('OTP code is => $code');
                      },
                    ),
                    SizedBox(height: 30.0),
                    NextButton(
                      onPressed: () {
                        Get.to(() => DashboardScreen());
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:login_app_flutter/constants/app_titles.dart';
import 'package:login_app_flutter/screens/sign_up/sign_up_form_widget.dart';
import '../login/login_header_widget.dart';
import '../../constants/images_strings.dart';
import '../login/login_footer_widget.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(30.0),
            child: Column(
              children: [
                FormHeader(
                  image: kWelcomeScreenImage,
                  title: kSignUpTitle,
                  subTitle: kSignUpSubtitle,
                ),
                SignUpForm(),
                LoginFooter(
                  textTitle: kHaveAnAccount,
                  buttonTitle: kLoginButtonTitle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:login_app_flutter/constants/app_colors.dart';
import 'package:login_app_flutter/constants/app_titles.dart';
import 'package:login_app_flutter/constants/images_strings.dart';
import 'login_footer_widget.dart';
import 'login_form_widget.dart';
import 'login_header_widget.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoginHeader(size: size),
                LoginForm(),
                LoginFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}







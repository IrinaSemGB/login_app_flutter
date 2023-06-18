import 'package:flutter/material.dart';
import 'package:login_app_flutter/constants/app_colors.dart';
import '../../constants/app_titles.dart';
import '../forgot_password/forgot_password_bottom_sheet_model.dart';


class LoginForm extends StatelessWidget {
  const LoginForm({ super.key });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: kEmail,
                hintText: kEmail,
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: kPassword,
                hintText: kPassword,
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(Icons.remove_red_eye_sharp),
                  onPressed: () {
                    // TODO realisation
                  },
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () => ForgotPasswordScreen.buildShowModalBottomSheet(context),
                child: Text(
                  kForgotPasswordQuestion,
                  style: TextStyle(color: AppColors.ACCENT),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // TODO realisation
                },
                child: Text(
                  kLoginButtonTitle.toUpperCase(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


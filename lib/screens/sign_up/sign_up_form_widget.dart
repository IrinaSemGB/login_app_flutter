import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app_flutter/screens/sign_up/sign_up_controller.dart';
import '../../constants/app_titles.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {

    final _controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();

    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _controller.fullName,
              decoration: InputDecoration(
                labelText: kName,
                prefixIcon: Icon(Icons.person_outline_outlined),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: _controller.email,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                labelText: kEmail,
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: _controller.phone,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.numbers),
                labelText: kPhoneNumber,
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: _controller.password,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: kPassword,
              ),
            ),
            SizedBox(height: 20.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    SignUpController.instance.registerUser(
                      _controller.email.text.trim(),
                      _controller.password.text.trim(),
                    );
                  }
                },
                child: Text(
                  kSignupButtonTitle.toUpperCase(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
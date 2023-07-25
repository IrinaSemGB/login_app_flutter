import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app_flutter/screens/sign_up/sign_up_controller.dart';
import '../../constants/app_titles.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({super.key});

  final _controller = Get.put(SignUpController());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
                prefixIcon: Icon(Icons.fingerprint),
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
                      email: _controller.email.text.trim(),
                      password: _controller.password.text.trim(),
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
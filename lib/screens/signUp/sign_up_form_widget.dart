import 'package:flutter/material.dart';
import '../../constants/app_titles.dart';

class SignUpForm extends StatelessWidget {


  SignUpForm({super.key,
    
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: kName,
                prefixIcon: Icon(Icons.person_outline_outlined),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: kPassword,
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.numbers),
                labelText: kPassword,
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
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
                  // TODO realisation
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
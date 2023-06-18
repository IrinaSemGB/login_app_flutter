import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {

  final VoidCallback onPressed;

  const NextButton({super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text('Next'),
      ),
    );
  }
}
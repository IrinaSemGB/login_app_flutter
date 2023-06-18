import 'package:flutter/material.dart';

class ForgotPasswordOptionsButton extends StatelessWidget {

  final IconData icon;
  final String title, subTitle;
  final VoidCallback onTap;

  const ForgotPasswordOptionsButton({super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: MediaQuery.of(context).platformBrightness == Brightness.dark
              ? Colors.grey.shade700 : Colors.grey.shade200,
        ),
        child: Row(
          children: [
            Icon(icon, size: 60.0),
            SizedBox(width: 10.0),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: Theme.of(context).textTheme.displayMedium, overflow: TextOverflow.ellipsis),
                  Text(subTitle, style: Theme.of(context).textTheme.bodyMedium, overflow: TextOverflow.ellipsis),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
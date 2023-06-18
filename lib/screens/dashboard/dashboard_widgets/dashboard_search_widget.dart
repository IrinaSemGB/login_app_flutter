import 'package:flutter/material.dart';
import '../../../constants/app_titles.dart';

class DashboardSearch extends StatelessWidget {

  final TextTheme textTheme;

  const DashboardSearch({super.key, required this.textTheme});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      decoration: BoxDecoration(
        border: Border(left: BorderSide(width: 4)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(kDashboardSearch, style: textTheme.headlineMedium?.apply(color: Colors.grey.withOpacity(0.5))),
          Icon(Icons.mic, size: 25.0),
        ],
      ),
    );
  }
}
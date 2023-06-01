import 'package:flutter/material.dart';
import '../../models/on_boarding_model.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key, required this.onBoardingModel});

  final OnBoardingModel onBoardingModel;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      color: onBoardingModel.bgColor,
      padding: EdgeInsets.all(30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage(onBoardingModel.image), height: size.height * 0.4),
          Column(
            children: [
              Text(onBoardingModel.title, style: Theme.of(context).textTheme.headlineSmall),
              Text(onBoardingModel.subTitle, textAlign: TextAlign.center),
            ],
          ),
          Text(onBoardingModel.counterText),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
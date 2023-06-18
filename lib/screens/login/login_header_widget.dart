import 'package:flutter/material.dart';

class FormHeader extends StatelessWidget {

  final String title, subTitle, image;
  final Color? imageColor;
  final double imageHeight;
  final double? heightBetween;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAlign;

  const FormHeader({super.key,
    required this.title,
    required this.subTitle,
    required this.image,
    this.imageColor,
    this.imageHeight = 0.2,
    this.heightBetween,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Image(image: AssetImage(image),
          color: imageColor,
          height: size.height * imageHeight,
        ),
        SizedBox(height: heightBetween),
        Text(title, style: Theme.of(context).textTheme.headlineMedium),
        Text(subTitle, style: Theme.of(context).textTheme.displaySmall, textAlign: textAlign),
      ],
    );
  }
}
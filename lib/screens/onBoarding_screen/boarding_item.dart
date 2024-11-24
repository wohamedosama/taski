import 'package:flutter/material.dart';
import 'package:taski/widgets/on_boarding/onboarding_title_andsubtitle.dart';

class BoardingItem extends StatelessWidget {
  const BoardingItem({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });
  final String image, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Image.asset(
          image,
          height: 400,
        ),
        const SizedBox(height: 30),
        OnBoardingTitleAndSubtitleText(
          text: title,
          // color: Colors.black,
          fontSize: 28,
          fontWeight: FontWeight.w500,
          //    boardingList[index].title!,
        ),
        const SizedBox(height: 20),
        OnBoardingTitleAndSubtitleText(
          text: subtitle,
          //color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w300,
          //   boardingList[index].subtitle!,
        ),
      ],
    );
  }
}

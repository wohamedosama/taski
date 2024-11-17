import 'package:flutter/material.dart';
import 'package:taski/screens/onBoarding_screen/widgets/onboarding_title_andsubtitle.dart';

class NextButtonOrGetStartedButton extends StatelessWidget {
  const NextButtonOrGetStartedButton({
    super.key,
    required this.isLastPage,
    required this.onPressed,
  });
  final bool isLastPage;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff8875FF),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        onPressed: onPressed,
        child: OnBoardingTitleAndSubtitleText(
          text: isLastPage ? 'Get Started' : 'Next',
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}

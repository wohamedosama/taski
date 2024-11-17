import 'package:flutter/material.dart';
import 'package:taski/screens/onBoarding_screen/widgets/next_button.dart';
import 'package:taski/screens/onBoarding_screen/widgets/smooth_page_indicator.dart';

class DotPageIndicatorAndNextButton extends StatelessWidget {
  const DotPageIndicatorAndNextButton({
    super.key,
    required this.pageController,
    required this.isLastPage,
  });

  final PageController pageController;
  final bool isLastPage;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //! dot page indicator

        DotPageIndecator(controller: pageController),
        //! Next button
        NextButtonOrGetStartedButton(
          onPressed: () {
            pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOutCubicEmphasized);
          },
          isLastPage: isLastPage,
        ),
      ],
    );
  }
}

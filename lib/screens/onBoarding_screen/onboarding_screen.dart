import 'package:flutter/material.dart';
import 'package:taski/constants/shared/shared_preferences.dart';
import 'package:taski/constants/strings/routes.dart';

import 'package:taski/models/onboarding/onboarding_info.dart';
import 'package:taski/models/onboarding/onboarding_model.dart';
import 'package:taski/screens/onBoarding_screen/boarding_item.dart';
import 'package:taski/widgets/on_boarding/dot_page_indicator_and_next_button.dart';
import 'package:taski/widgets/on_boarding/skip_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late List<OnboardingModel> boardingList = OnboardingInfo().boarding;
  late PageController pageController = PageController(initialPage: 0);

  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 32),
        child: PageView.builder(
          onPageChanged: (index) {
            if (index == boardingList.length - 1) {
              setState(() {
                isLastPage = true;
              });
            } else {
              setState(() {
                isLastPage = false;
              });
            }
          },
          itemCount: boardingList.length,
          controller: pageController,
          itemBuilder: (context, index) {
            return Column(
              children: [
                //! skip button
                SkipButton(onPressed: () {
                  SharedPref.saveBool(kOnBaording, false);

                  Navigator.pushNamed(context, navbar);
                }),

                //! boarding item
                BoardingItem(
                  image: boardingList[index].image!,
                  title: boardingList[index].title!,
                  subtitle: boardingList[index].subtitle!,
                ),

                const Spacer(),

                //! dot page indicator && Next button
                DotPageIndicatorAndNextButton(
                  isLastPage: isLastPage,
                  pageController: pageController,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

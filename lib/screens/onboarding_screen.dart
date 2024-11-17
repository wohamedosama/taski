import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:taski/models/onboarding/onboarding_item.dart';
import 'package:taski/models/onboarding/onboarding_model.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late List<OnboardingModel> boardingList = OnboardingItem().boarding;
  late PageController pageController = PageController(initialPage: 0);
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
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
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {
                      pageController.jumpToPage(boardingList.length - 1);
                    },
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.3),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Image.asset(
                  boardingList[index].image!,
                  height: 400,
                ),
                const SizedBox(height: 30),
                Text(
                  boardingList[index].title!,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 80,
                  child: Text(
                    boardingList[index].subtitle!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                const SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: SmoothPageIndicator(
                          controller: pageController,
                          count: boardingList.length,
                          effect:
                              const JumpingDotEffect(), // your preferred effect
                          onDotClicked: (index) {}),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff8875FF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        onPressed: () {
                          pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOutCubicEmphasized);
                        },
                        child: Text(
                          isLastPage ? 'Get Started' : 'Next',
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

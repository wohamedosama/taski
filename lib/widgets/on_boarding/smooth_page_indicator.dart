import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotPageIndecator extends StatelessWidget {
  const DotPageIndecator({
    super.key,
    this.count = 3,
    required this.controller,
  });
  final PageController controller;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: SmoothPageIndicator(
          controller: controller,
          count: count,
          effect: const WormEffect(
            activeDotColor: Color(0xff8875FF),
            dotColor: Color.fromARGB(255, 140, 135, 177),
            dotWidth: 22,
          )),
    );
  }
}

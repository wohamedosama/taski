import 'package:taski/constants/strings/images.dart';
import 'package:taski/constants/strings/subtitles.dart';
import 'package:taski/constants/strings/titles.dart';
import 'package:taski/models/onboarding/onboarding_model.dart';

class OnboardingItem {
  List<OnboardingModel> boarding = [
    OnboardingModel(image: onboarding1, title: title1, subtitle: subtitle1),
    OnboardingModel(image: onboarding2, title: title2, subtitle: subtitle2),
    OnboardingModel(image: onboarding3, title: title3, subtitle: subtitle3),
  ];
}

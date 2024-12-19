import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taski/constants/colors/my_colors.dart';
import 'package:taski/constants/strings/text.dart';
import 'package:taski/widgets/build_setting_item.dart';

List<BuildSettingItem> buildSettingItemsForTaskiSections() {
  return [
    const BuildSettingItem(
        title: aboutUS, leadingIcon: FontAwesomeIcons.circleQuestion),
    const BuildSettingItem(
        title: faq, leadingIcon: FontAwesomeIcons.circleInfo),
    const BuildSettingItem(
        title: helpAndFeedback, leadingIcon: FontAwesomeIcons.bolt),
    const BuildSettingItem(
        title: supportUS, leadingIcon: FontAwesomeIcons.thumbsUp),
    const BuildSettingItem(
      isLogout: true,
      title: logout,
      leadingIcon: FontAwesomeIcons.arrowRightFromBracket,
      leadingColor: MyColors.deleteItem,
    ),
  ];
}

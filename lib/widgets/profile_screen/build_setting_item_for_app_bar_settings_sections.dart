import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taski/constants/strings/text.dart';
import 'package:taski/widgets/build_setting_item.dart';

List<BuildSettingItem> buildSettingItemsForAppSettingSections() => [
      const BuildSettingItem(
          title: changeAppTheme, leadingIcon: FontAwesomeIcons.penToSquare),
      const BuildSettingItem(
          title: changeapplanguage, leadingIcon: FontAwesomeIcons.language),
    ];

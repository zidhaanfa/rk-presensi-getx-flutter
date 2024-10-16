import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getx_skeleton/config/theme/my_theme.dart';

import '../../../../../components/config/config.dart';
import '../../../../../components/widget/Custom_text.dart';
import '../../../../../components/widget/Custom_text2.dart';

class InfoGridMenu extends StatelessWidget {
  InfoGridMenu({
    Key? key,
    required this.items,
  }) : super(key: key);

  List<InfoGridMenuItem> items;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 160.h,
      child: GridView(
        semanticChildCount: items.length,
        addRepaintBoundaries: true,
        addSemanticIndexes: true,
        clipBehavior: Clip.none,
        primary: false,
        addAutomaticKeepAlives: true,
        cacheExtent: 9999,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 150,
          childAspectRatio: 1 / 1.5,
          // crossAxisSpacing: 10,
          // mainAxisSpacing: 3,
        ),
        shrinkWrap: true,
        dragStartBehavior: DragStartBehavior.start,
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        children: items,
      ),
    );
  }
}

class InfoGridMenuItem extends StatelessWidget {
  InfoGridMenuItem({
    Key? key,
    this.cardColor,
    this.iconColor,
    this.textColor,
    this.title,
    this.icon,
    this.iconSize,
    this.elevation,
  }) : super(key: key);

  Color? cardColor;
  Color? iconColor;
  Color? textColor;

  String? title;
  IconData? icon;
  double? iconSize;
  double? elevation;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        children: [
          Icon(
            icon ?? Icons.info,
            size: iconSize ?? 25,
            color: iconColor ?? theme.buttonTheme.colorScheme!.onPrimary,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CustomText2(
                  text: title ?? 'text',
                  fontType: FontType.bodySmall,
                  // colorText: MyTheme.theme.textTheme.bodyMedium!.color,
                  // weight: FontWeight.bold,
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rk_attend/config/theme/my_theme.dart';

import '../../../../../components/config/config.dart';
import '../../../../../components/widget/Custom_text.dart';
import '../../../../../components/widget/Custom_text2.dart';

class InfoGridAttendance extends StatelessWidget {
  InfoGridAttendance({
    Key? key,
    required this.items,
  }) : super(key: key);

  List<InfoGridAttendanceItem> items;
  @override
  Widget build(BuildContext context) {
    return GridView(
      semanticChildCount: items.length,
      addRepaintBoundaries: true,
      addSemanticIndexes: true,
      clipBehavior: Clip.none,
      primary: false,
      addAutomaticKeepAlives: true,
      cacheExtent: 9999,
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 250,
        childAspectRatio: 1 / 0.72,
        // crossAxisSpacing: 10,
        // mainAxisSpacing: 3,
      ),
      shrinkWrap: true,
      dragStartBehavior: DragStartBehavior.start,
      scrollDirection: Axis.vertical,
      physics: ClampingScrollPhysics(),
      children: items,
    );
  }
}

class InfoGridAttendanceItem extends StatelessWidget {
  InfoGridAttendanceItem({
    Key? key,
    this.cardColor,
    this.iconColor,
    this.textColor,
    this.name,
    this.title,
    this.subtitle,
    this.icon,
    this.iconSize,
    this.elevation,
  }) : super(key: key);

  Color? cardColor;
  Color? iconColor;
  Color? textColor;

  String? name;
  String? title;
  String? subtitle;
  IconData? icon;
  double? iconSize;
  double? elevation;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      shadowColor: Colors.black.withOpacity(0.2),
      elevation: elevation ?? 1,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: cardColor ?? theme.buttonTheme.colorScheme!.primary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    icon ?? Icons.info,
                    size: iconSize ?? 20,
                    color:
                        iconColor ?? theme.buttonTheme.colorScheme!.onPrimary,
                  ),
                ),
                10.horizontalSpace,
                //Name
                CustomText(
                  text: name ?? 'text',
                  fontType: FontType.bodyMedium,
                  colorText: cardColor ?? theme.textTheme.bodyMedium!.color,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  //Title
                  CustomText2(
                    text: title ?? 'text',
                    fontType: FontType.titleMedium,
                    // colorText: MyTheme.theme.textTheme.bodyMedium!.color,
                    weight: FontWeight.bold,
                  ),
                  2.verticalSpace,
                  //Subtitle
                  CustomText2(
                    text: subtitle ?? 'Lorem ipsum dolor sit amet',
                    fontType: FontType.bodyMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

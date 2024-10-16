import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/my_theme.dart';
import '../../../../components/config/config.dart';
import '../../../../components/widget/Custom_text.dart';
import '../../../../components/widget/Custom_textButton.dart';
import 'components/announcement_item.dart';

class InfoAnnouncement extends StatelessWidget {
  const InfoAnnouncement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomText(
                text: 'Announcement',
                fontType: FontType.bodyLarge,
                weight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomTextButton(
                text: 'View All',
                colorText: MyTheme.theme.primaryColor,
                onPressed: () {},
                fontType: FontType.titleSmall,
              ),
            ),
          ],
        ),
        AnnouncementItem(),
      ],
    );
  }
}

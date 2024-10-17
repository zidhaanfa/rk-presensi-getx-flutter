import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rk_attend/app/components/config/config.dart';
import 'package:rk_attend/app/components/widget/Custom_elevatedButton.dart';
import 'package:rk_attend/app/components/widget/Custom_text.dart';
import 'package:rk_attend/app/components/widget/Custom_textButton.dart';

import '../../../../components/widget/Custom_appBar.dart';

class TimeOffApprovalDetail extends StatelessWidget {
  const TimeOffApprovalDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Column(
        children: [
          // ----------------------- Header ----------------------- //
          CustomAppBar(
            pageName: 'Cuti Tahunan',
            subTitle: '12 okt 2021 - 13 okt 2021',
            withTrailing: false,
            onTrailingTap: () {},
            withImage: false,
            // image: 'assets/images/app_icon.png',
            trailingWidget: Row(
              children: [
                CustomTextButton(
                  text: 'Cancel',
                  fontType: FontType.bodyMedium,
                  weight: FontWeight.w700,
                  onPressed: () {},
                  colorText: Colors.red,
                ),
              ],
            ),
          ),

          // ----------------------- Body ----------------------- //
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  20.verticalSpace,

                  // ----------------------- Approved ----------------------- //
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 10.h,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.orange[400],
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: CustomText(
                      text: 'Waiting Approval',
                      fontType: FontType.bodyMedium,
                      weight: FontWeight.bold,
                      colorText: Colors.white,
                    ),
                  ),

                  // ----------------------- Detail Request ----------------------- //

                  // ----------------------- Request Date ----------------------- //
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 10.h,
                    ),
                    child: Row(
                      children: [
                        CustomText(
                          text: 'Request Date',
                          fontType: FontType.bodyMedium,
                          weight: FontWeight.bold,
                        ),
                        const Spacer(),
                        CustomText(
                          text: '12 okt 2021',
                          fontType: FontType.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

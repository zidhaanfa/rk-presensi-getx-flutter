import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rk_attend/app/components/config/config.dart';
import 'package:rk_attend/app/components/widget/Custom_elevatedButton.dart';
import 'package:rk_attend/app/components/widget/Custom_text.dart';
import 'package:rk_attend/app/components/widget/Custom_textButton.dart';
import 'package:rk_attend/app/modules/timeOff/controllers/time_off_controller.dart';
import 'package:rk_attend/app/modules/timeOff/views/widgets/approval_request_detail.dart';
import 'package:rk_attend/app/modules/timeOff/views/widgets/approval_request_status.dart';

import '../../../../components/widget/Custom_appBar.dart';

class TimeOffApprovalDetail extends StatelessWidget {
  const TimeOffApprovalDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    TimeOffController controller = Get.put(TimeOffController());
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

          10.verticalSpace,

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
          10.verticalSpace,

          // ----------------------- Body ----------------------- //
          Expanded(
            child: Scaffold(
              appBar: TabBar(
                controller: controller.tabTimeOffApprovalDetailController,
                dividerColor: Colors.transparent,
                automaticIndicatorColorAdjustment: true,
                splashBorderRadius: BorderRadius.circular(10),
                tabs: const [
                  Tab(text: 'Request Detail'),
                  Tab(text: 'Request Status'),
                ],
              ),
              body: TabBarView(
                controller: controller.tabTimeOffApprovalDetailController,
                children: [
                  // ----------------------- Request ----------------------- //
                  ApprovalRequestDetail(),
                  // ----------------------- Approval ----------------------- //
                  ApprovalRequestStatus(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

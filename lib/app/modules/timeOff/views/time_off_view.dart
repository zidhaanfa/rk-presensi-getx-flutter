import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:rk_attend/app/modules/timeOff/views/views_micro/time_off_approval.dart';
import 'package:rk_attend/app/modules/timeOff/views/views_micro/time_off_request.dart';
import 'package:rk_attend/config/theme/my_theme.dart';

import '../../../components/widget/Custom_appBar.dart';
import '../controllers/time_off_controller.dart';

class TimeOffView extends GetView<TimeOffController> {
  const TimeOffView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TimeOffController controller = Get.put(TimeOffController());
    return Obx(() => Scaffold(
          body: Column(
            children: [
              // ----------------------- Header ----------------------- //
              CustomAppBar(
                pageName: 'Time Off',
                subTitle: 'Everyones Schedule',
                withTrailing: true,
                onTrailingTap: () {},
                withImage: false,
                trailingIcon: controller.tabIndex.value == 0
                    ? FontAwesomeIcons.squarePlus
                    : FontAwesomeIcons.filter,
                trailingColor: MyTheme.theme.buttonTheme.colorScheme!.primary,
                // image: 'assets/images/app_icon.png',
              ),
              Text(
                controller.count.value.toString(),
                style: TextStyle(
                  color: Colors.transparent,
                  fontSize: 0,
                ),
              ),
              Expanded(
                  child: Scaffold(
                appBar: TabBar(
                  controller: controller.tabTimeOffController,
                  dividerColor: Colors.transparent,
                  automaticIndicatorColorAdjustment: true,
                  splashBorderRadius: BorderRadius.circular(10),
                  tabs: const [
                    Tab(text: 'Request'),
                    Tab(text: 'Approval'),
                  ],
                ),
                body: TabBarView(
                  controller: controller.tabTimeOffController,
                  children: const [
                    // ----------------------- Request ----------------------- //
                    TimeOffRequest(),
                    // ----------------------- Approval ----------------------- //
                    TimeOffApproval(),
                  ],
                ),
              )),
            ],
          ),
        ));
  }
}

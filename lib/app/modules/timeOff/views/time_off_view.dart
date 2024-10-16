import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../components/widget/Custom_appBar.dart';
import '../controllers/time_off_controller.dart';

class TimeOffView extends GetView<TimeOffController> {
  const TimeOffView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // ----------------------- Header ----------------------- //
          CustomAppBar(
            pageName: 'Time Off',
            subTitle: 'Everyones Schedule',
            withTrailing: false,
            onTrailingTap: () {},
            withImage: false,
            // image: 'assets/images/app_icon.png',
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

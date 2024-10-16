import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/widget/Custom_appBar.dart';
import '../controllers/home_controller.dart';
import 'widgets/info_check_in_out.dart';
import 'widgets/info_menu.dart';
import 'widgets/info_announcement.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // ----------------------- Header ----------------------- //
          CustomAppBar(
            pageName: 'Zidanfath',
            subTitle: 'Mobile Developer',
            trailingIcon: CupertinoIcons.bell_fill,
            onTrailingTap: () {},
            // image: 'assets/images/app_icon.png',
          ),

          // ----------------------- Body ----------------------- //
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // ----------------------- Check in out ----------------------- //
                  InfoCheckInOut(),

                  // ----------------------- Menu ----------------------- //
                  InfoMenu(),

                  // ----------------------- Today Attendances ----------------------- //
                  InfoAnnouncement(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

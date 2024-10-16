import 'dart:ffi';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import '../../home/bindings/home_binding.dart';
import '/config/theme/my_theme.dart';

import '../controllers/custom_navigation_bar_controller.dart';

class CustomNavigationBarView extends GetView<CustomNavigationBarController> {
  const CustomNavigationBarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    CustomNavigationBarController controller =
        Get.put(CustomNavigationBarController());
    return Obx(() => Scaffold(
          body: controller.pages[controller.bottomNavIndex.value],
          floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: controller.bottomNavIndex.value == 0
              ? FloatingActionButton(
                  backgroundColor:
                      MyTheme.theme.buttonTheme.colorScheme!.primary,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40.0),
                    ),
                  ),
                  child: Icon(
                    //icon request attendance
                    FontAwesomeIcons.rightToBracket,
                    color: MyTheme.theme.buttonTheme.colorScheme!.onPrimary,
                  ),
                  onPressed: () {},
                )
              : null,
          bottomNavigationBar: AnimatedBottomNavigationBar.builder(
            itemCount: controller.iconList.length,
            height: 65,
            tabBuilder: (int index, bool isActive) {
              final color = isActive
                  ? MyTheme.theme.buttonTheme.colorScheme!.primary
                  : MyTheme.theme.buttonTheme.colorScheme!.onBackground;
              return Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    controller.iconList[index],
                    size: 24,
                    color: color,
                  ),
                ],
              );
            },
            backgroundColor: MyTheme.theme.cardColor, // Colors.white,
            activeIndex: controller.bottomNavIndex.value,
            splashColor: Colors.orange,
            // notchAndCornersAnimation: controller.borderRadiusAnimation,
            splashSpeedInMilliseconds: 300,
            gapLocation: GapLocation.center,
            notchSmoothness: NotchSmoothness.softEdge,
            leftCornerRadius: 20,
            rightCornerRadius: 20,
            blurEffect: true,
            onTap: (index) {
              // controller.bottomNavIndex(index);
              if (index == 0) {
                print('index 0');
                controller.bottomNavIndex.value = index;
                BindingsBuilder.put(() => HomeBinding());
              } else if (index == 1) {
                print('index 1');
                controller.bottomNavIndex.value = index;
              } else if (index == 2) {
                print('index 2');
                controller.bottomNavIndex.value = index;
              } else if (index == 3) {
                print('index 3');
                controller.bottomNavIndex.value = index;
              }
            },
            // hideAnimationController: controller.hideBottomBarAnimationController,
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/modules/notification/views/notification_view.dart';
import 'package:getx_skeleton/app/modules/timeOff/views/time_off_view.dart';

import '../../account/views/account_view.dart';
import '../../home/views/home_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNavigationBarController extends GetxController {
  //TODO: Implement CustomNavigationBarController

  final count = 0.obs;
  final bottomNavIndex = 0.obs; //default index of a first screen

// List of Pages to be displayed in the Navigation Bar
  late List<Widget> pages;
// Initial Page to be displayed
  late HomeView homeView;
  late NotificationView notificationView;
  late TimeOffView timeOffView;
  late AccountView accountView;
// Global Key for the Navigation Bar
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  // late final AnimationController fabAnimationController;
  // late final AnimationController borderRadiusAnimationController;
  // late final Animation<double> fabAnimation;
  // late final Animation<double> borderRadiusAnimation;
  // late final CurvedAnimation fabCurve;
  // late final CurvedAnimation borderRadiusCurve;
  // late final AnimationController hideBottomBarAnimationController;

  final iconList = <IconData>[
    FontAwesomeIcons.houseUser,
    FontAwesomeIcons.solidBell,
    FontAwesomeIcons.userClock,
    FontAwesomeIcons.gear,
  ];

  @override
  void onInit() {
    super.onInit();

    // Initialize the Pages
    homeView = HomeView();
    notificationView = NotificationView();
    timeOffView = TimeOffView();
    accountView = AccountView();

    // Initialize the List of Pages
    pages = [
      homeView,
      notificationView,
      timeOffView,
      accountView,
    ];
    // fabAnimationController = AnimationController(
    //   duration: Duration(milliseconds: 500),
    //   vsync: this,
    // );
    // borderRadiusAnimationController = AnimationController(
    //   duration: Duration(milliseconds: 500),
    //   vsync: this,
    // );
    // fabCurve = CurvedAnimation(
    //   parent: fabAnimationController,
    //   curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
    // );
    // borderRadiusCurve = CurvedAnimation(
    //   parent: borderRadiusAnimationController,
    //   curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
    // );

    // fabAnimation = Tween<double>(begin: 0, end: 1).animate(fabCurve);
    // borderRadiusAnimation = Tween<double>(begin: 0, end: 1).animate(
    //   borderRadiusCurve,
    // );

    // hideBottomBarAnimationController = AnimationController(
    //   duration: Duration(milliseconds: 200),
    //   vsync: this,
    // );

    // Future.delayed(
    //   Duration(seconds: 1),
    //   () => fabAnimationController.forward(),
    // );
    // Future.delayed(
    //   Duration(seconds: 1),
    //   () => borderRadiusAnimationController.forward(),
    // );
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}

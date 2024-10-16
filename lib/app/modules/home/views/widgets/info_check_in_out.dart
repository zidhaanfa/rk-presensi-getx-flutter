import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/components/config/config.dart';
import 'package:getx_skeleton/app/components/widget/Custom_text2.dart';
import 'package:getx_skeleton/config/theme/my_theme.dart';

import '../../../../components/widget/Custom_text.dart';

class InfoCheckInOut extends StatelessWidget {
  const InfoCheckInOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: MyTheme.theme.primaryColor,
        elevation: 0,
        child: Stack(
          children: [
            // position widget with icon, position on top right
            Positioned(
              top: 10,
              right: 10,
              child: Icon(
                FontAwesomeIcons.clock,
                size: 100,
                color: MyTheme.theme.buttonTheme.colorScheme!.onPrimary
                    .withOpacity(0.2),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  CustomText2(
                    text: 'Don\'t forget to check in and out',
                    fontType: FontType.bodyMedium,
                    colorText: MyTheme.theme.buttonTheme.colorScheme!.onPrimary,
                  ),
                  5.verticalSpace,
                  Row(
                    children: [
                      Icon(
                        Icons.info,
                        size: 30,
                        color: MyTheme.theme.buttonTheme.colorScheme!.onPrimary,
                      ),
                      10.horizontalSpace,
                      CustomText(
                        text: '16 Oct 2024 (08:00 - 17:00)',
                        fontType: FontType.bodyLarge,
                        weight: FontWeight.bold,
                        colorText:
                            MyTheme.theme.buttonTheme.colorScheme!.onPrimary,
                      ),
                    ],
                  ),
                  5.verticalSpace,
                  Card(
                    elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Column(
                        children: [
                          CustomText2(
                            text: 'Today Schedule',
                            fontType: FontType.titleMedium,
                            weight: FontWeight.bold,
                            colorText:
                                MyTheme.theme.buttonTheme.colorScheme!.primary,
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                          10.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: Get.width * 0.40,
                                padding: const EdgeInsets.only(
                                  right: 16,
                                  left: 16,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          FontAwesomeIcons.signInAlt,
                                          size: 20,
                                          color: Colors.green,
                                        ),
                                        10.horizontalSpace,
                                        CustomText(
                                          text: 'Check In',
                                          fontType: FontType.bodyMedium,
                                          weight: FontWeight.bold,
                                          colorText: Colors.green,
                                        ),
                                      ],
                                    ),
                                    5.verticalSpace,
                                    CustomText(
                                      text: '08:00',
                                      fontType: FontType.bodyMedium,
                                      colorText: Colors.green,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                color:
                                    MyTheme.theme.shadowColor.withOpacity(0.3),
                                width: 1,
                                height: 30,
                              ),
                              Container(
                                width: Get.width * 0.40,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          FontAwesomeIcons.rightFromBracket,
                                          size: 20,
                                          color: Colors.blue,
                                        ),
                                        10.horizontalSpace,
                                        CustomText(
                                          text: 'Check Out',
                                          fontType: FontType.bodyMedium,
                                          weight: FontWeight.bold,
                                          colorText: Colors.blue,
                                        ),
                                      ],
                                    ),
                                    5.verticalSpace,
                                    CustomText(
                                      text: '17:00',
                                      fontType: FontType.bodyMedium,
                                      colorText: Colors.blue,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: Get.width * 0.40,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          FontAwesomeIcons.businessTime,
                                          size: 20,
                                          color: Colors.orange,
                                        ),
                                        10.horizontalSpace,
                                        CustomText(
                                          text: 'Break Time',
                                          fontType: FontType.bodyMedium,
                                          weight: FontWeight.bold,
                                          colorText: Colors.orange,
                                        ),
                                      ],
                                    ),
                                    5.verticalSpace,
                                    CustomText(
                                      text: '00:30 min',
                                      fontType: FontType.bodyMedium,
                                      colorText: Colors.orange,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                color:
                                    MyTheme.theme.shadowColor.withOpacity(0.3),
                                width: 1,
                                height: 30,
                              ),
                              Container(
                                width: Get.width * 0.40,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 20,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          FontAwesomeIcons.calendarPlus,
                                          size: 20,
                                          color: Colors.red,
                                        ),
                                        10.horizontalSpace,
                                        CustomText(
                                          text: 'Overtime',
                                          fontType: FontType.bodyMedium,
                                          weight: FontWeight.bold,
                                          colorText: Colors.red,
                                        ),
                                      ],
                                    ),
                                    5.verticalSpace,
                                    CustomText(
                                      text: '17:00',
                                      fontType: FontType.bodyMedium,
                                      colorText: Colors.red,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Card(
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       InkWell(
                  //         onTap: () {},
                  //         child: Container(
                  //           width: Get.width * 0.40,
                  //           padding: const EdgeInsets.symmetric(
                  //             horizontal: 16,
                  //             vertical: 20,
                  //           ),
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             children: [
                  //               Icon(
                  //                 FontAwesomeIcons.signInAlt,
                  //                 size: 20,
                  //                 color: MyTheme
                  //                     .theme.buttonTheme.colorScheme!.secondary,
                  //               ),
                  //               10.horizontalSpace,
                  //               CustomText(
                  //                 text: 'Check In',
                  //                 fontType: FontType.bodyMedium,
                  //                 weight: FontWeight.bold,
                  //                 colorText: MyTheme
                  //                     .theme.buttonTheme.colorScheme!.secondary,
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       Container(
                  //         color: Colors.black.withOpacity(0.3),
                  //         width: 1,
                  //         height: 30,
                  //       ),
                  //       InkWell(
                  //         onTap: () {},
                  //         child: Container(
                  //           width: Get.width * 0.40,
                  //           padding: const EdgeInsets.symmetric(
                  //             horizontal: 16,
                  //             vertical: 20,
                  //           ),
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             children: [
                  //               Icon(
                  //                 FontAwesomeIcons.signOutAlt,
                  //                 size: 20,
                  //                 color: MyTheme
                  //                     .theme.buttonTheme.colorScheme!.secondary,
                  //               ),
                  //               10.horizontalSpace,
                  //               CustomText(
                  //                 text: 'Check Out',
                  //                 fontType: FontType.bodyMedium,
                  //                 weight: FontWeight.bold,
                  //                 colorText: MyTheme
                  //                     .theme.buttonTheme.colorScheme!.secondary,
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

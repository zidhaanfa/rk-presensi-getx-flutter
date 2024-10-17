import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rk_attend/app/components/config/config.dart';
import 'package:rk_attend/app/components/widget/Custom_text.dart';
import 'package:rk_attend/app/components/widget/Custom_text2.dart';

class ApprovalRequestDetail extends StatelessWidget {
  const ApprovalRequestDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      child: Column(
        children: [
          //Time Off date
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: Get.width * 0.4,
                child: CustomText2(
                  text: 'Time Off Date',
                  weight: FontWeight.w500,
                  fontType: FontType.bodyMedium,
                  colorText: theme.textTheme.bodyText1!.color!.withOpacity(0.5),
                ),
              ),
              Container(
                width: Get.width * 0.5,
                child: CustomText2(
                  text: '12 Oct 2021',
                  weight: FontWeight.w500,
                  fontType: FontType.bodyMedium,
                ),
              ),
            ],
          ),

          //divider
          Divider(),

          //Time Off type
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: Get.width * 0.4,
                child: CustomText2(
                  text: 'Time Off Type',
                  weight: FontWeight.w500,
                  fontType: FontType.bodyMedium,
                  colorText: theme.textTheme.bodyText1!.color!.withOpacity(0.5),
                ),
              ),
              Container(
                width: Get.width * 0.5,
                child: CustomText2(
                  text: 'Cuti Tahunan',
                  weight: FontWeight.w500,
                  fontType: FontType.bodyMedium,
                ),
              ),
            ],
          ),

          //divider
          Divider(),

          //request type
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: Get.width * 0.4,
                child: CustomText2(
                  text: 'Request Type',
                  weight: FontWeight.w500,
                  fontType: FontType.bodyMedium,
                  colorText: theme.textTheme.bodyText1!.color!.withOpacity(0.5),
                ),
              ),
              Container(
                width: Get.width * 0.5,
                child: CustomText2(
                  text: 'Full Day',
                  weight: FontWeight.w500,
                  fontType: FontType.bodyMedium,
                ),
              ),
            ],
          ),

          //divider
          Divider(),

          //Time Off duration
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: Get.width * 0.4,
                child: CustomText2(
                  text: 'Time Off Duration',
                  weight: FontWeight.w500,
                  fontType: FontType.bodyMedium,
                  colorText: theme.textTheme.bodyText1!.color!.withOpacity(0.5),
                ),
              ),
              Container(
                width: Get.width * 0.5,
                child: CustomText2(
                  text: '1 Day',
                  weight: FontWeight.w500,
                  fontType: FontType.bodyMedium,
                ),
              ),
            ],
          ),

          //divider
          Divider(),

          //Time Off reason
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: Get.width * 0.4,
                child: CustomText2(
                  text: 'Time Off Reason',
                  weight: FontWeight.w500,
                  fontType: FontType.bodyMedium,
                  colorText: theme.textTheme.bodyText1!.color!.withOpacity(0.5),
                ),
              ),
              Container(
                width: Get.width * 0.5,
                child: CustomText2(
                  text: 'Cuti urusan keluarga',
                  weight: FontWeight.w500,
                  fontType: FontType.bodyMedium,
                  maxLines: null,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

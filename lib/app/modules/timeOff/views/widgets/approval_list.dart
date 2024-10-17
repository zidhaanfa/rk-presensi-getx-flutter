import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../components/widget/Custom_card1.dart';
import '../views_micro/time_off_approval_detail.dart';

class ApprovalList extends StatelessWidget {
  const ApprovalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(0),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
        return CustomCard1(
          title: 'Cuti Tahunan',
          subtitle: '12 Oct 2024 - 14 Oct 2024',
          part: 'Approved',
          partColor: Colors.green,
          borderColor: Colors.green.withOpacity(0.1),
          cardColor: Colors.green.withOpacity(0.01),
          allPadding: 8,
          onTap: () {
            Get.to(() => TimeOffApprovalDetail());
          },
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/approval_list.dart';

class TimeOffApproval extends StatelessWidget {
  const TimeOffApproval({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        20.verticalSpace,
        ApprovalList(),
      ],
    );
  }
}

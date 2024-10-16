import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rk_attend/app/modules/Employee/views/view_micro/employee_detail.dart';

import 'components/employee_item.dart';

class EmployeeList extends StatelessWidget {
  const EmployeeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(0),
      itemCount: 5,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return EmployeeItem(
          onTap: () {
            Get.to(() => EmployeeDetail());
          },
        );
      },
    );
  }
}

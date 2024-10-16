import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/info_grid_menu.dart';

class InfoMenu extends StatelessWidget {
  const InfoMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        20.verticalSpace,
        // ----------------------- Calendar Today ----------------------- //
        InfoGridMenu(items: [
          InfoGridMenuItem(
            icon: FontAwesomeIcons.fileAlt,
            title: 'Reimbursement',
            iconColor: Colors.blue,
            elevation: 0.2,
            onTap: () {
              // Get.toNamed(Routes.ACCOUNT_PERSONAL_INFORMATION);
            },
          ),
          InfoGridMenuItem(
            icon: FontAwesomeIcons.clock,
            title: 'Time Off',
            iconColor: Colors.green,
            elevation: 0.2,
          ),
          InfoGridMenuItem(
            icon: FontAwesomeIcons.signature,
            title: 'Overtime',
            iconColor: Colors.orange,
            elevation: 0.2,
          ),
          InfoGridMenuItem(
            icon: FontAwesomeIcons.userClock,
            title: 'Attendance',
            iconColor: Colors.purple,
            elevation: 0.2,
          ),
          InfoGridMenuItem(
            icon: FontAwesomeIcons.calendar,
            title: 'Calendar',
            iconColor: Colors.red,
            elevation: 0.2,
          ),
          InfoGridMenuItem(
            icon: FontAwesomeIcons.userFriends,
            title: 'Team',
            iconColor: Colors.pink,
            elevation: 0.2,
          ),
          InfoGridMenuItem(
            icon: FontAwesomeIcons.fileInvoice,
            title: 'Payslip',
            iconColor: Colors.teal,
            elevation: 0.2,
          ),
          InfoGridMenuItem(
            icon: FontAwesomeIcons.file,
            title: 'Files',
            iconColor: Colors.brown,
            elevation: 0.2,
          ),
          InfoGridMenuItem(
            icon: FontAwesomeIcons.fileSignature,
            title: 'Form',
            iconColor: Colors.blueGrey,
            elevation: 0.2,
          ),
          InfoGridMenuItem(
            icon: FontAwesomeIcons.star,
            title: 'Review',
            iconColor: Colors.amber,
            elevation: 0.2,
          ),
        ]),
      ],
    );
  }
}

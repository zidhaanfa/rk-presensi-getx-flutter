import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rk_attend/config/theme/my_theme.dart';

import '../../../../components/widget/Custom_appBar.dart';

class EmployeeDetail extends StatelessWidget {
  const EmployeeDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // ----------------------- Header ----------------------- //
          CustomAppBar(
            pageName: 'Muh. Zidan Fathoni',
            subTitle: 'Mobile Developer',
            withTrailing: false,
            // image: 'assets/images/app_icon.png',
          ),
          // ----------------------- 3 Icon ----------------------- //
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  // Config.launcher.launch('tel:$phone');
                },
                icon: Icon(
                  FontAwesomeIcons.phoneFlip,
                  color: Colors.blue,
                ),
              ),
              IconButton(
                onPressed: () {
                  // Config.launcher.launch('mailto:$email');
                },
                icon: Icon(
                  FontAwesomeIcons.whatsapp,
                  color: Colors.green,
                ),
              ),
              IconButton(
                onPressed: () {
                  // Config.launcher.launch('mailto:$email');
                },
                icon: Icon(
                  FontAwesomeIcons.envelope,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          // ----------------------- Body ----------------------- //
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

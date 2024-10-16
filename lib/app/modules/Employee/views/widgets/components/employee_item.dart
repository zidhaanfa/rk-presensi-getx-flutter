import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rk_attend/app/components/config/config.dart';
import 'package:rk_attend/app/components/widget/Custom_text.dart';
import 'package:rk_attend/app/components/widget/Custom_text2.dart';
import 'package:rk_attend/config/theme/my_theme.dart';

class EmployeeItem extends StatelessWidget {
  EmployeeItem({
    Key? key,
    this.name,
    this.position,
    this.phone,
    this.email,
    this.whatsapp,
    this.image,
  }) : super(key: key);

  String? name;
  String? position;
  String? phone;
  String? email;
  String? whatsapp;
  String? image;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 5),
                      decoration: BoxDecoration(
                          color: MyTheme
                              .theme.buttonTheme.colorScheme!.onSecondary,
                          borderRadius: BorderRadius.circular(50)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          image ?? 'assets/images/person1.png',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 0.02.sw,
                    ),
                    Container(
                      width: 0.4.sw,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomText2(
                            text: name ?? 'Muhamad Zidan Fathoni',
                            fontType: FontType.bodyMedium,
                            weight: FontWeight.bold,
                            maxLines: 2,
                          ),
                          CustomText2(
                            text: position ?? 'Mobile Developer',
                            fontType: FontType.bodyMedium,
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //3 icon
                    IconButton(
                      onPressed: () {
                        // Config.launcher.launch('tel:$phone');
                      },
                      icon: Icon(
                        FontAwesomeIcons.squarePhone,
                        color: Colors.blue,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        // Config.launcher.launch('mailto:$email');
                      },
                      icon: Icon(
                        FontAwesomeIcons.squareWhatsapp,
                        color: Colors.green,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        // Config.launcher.launch('mailto:$email');
                      },
                      icon: Icon(
                        FontAwesomeIcons.squareEnvelope,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

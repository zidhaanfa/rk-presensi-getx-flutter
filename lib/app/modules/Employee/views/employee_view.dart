import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:rk_attend/app/components/widget/Custom_textFormField2.dart';
import 'package:rk_attend/config/theme/my_theme.dart';

import '../../../components/widget/Custom_appBar.dart';
import '../controllers/employee_controller.dart';
import 'widgets/employee_list.dart';

class EmployeeView extends GetView<EmployeeController> {
  const EmployeeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    EmployeeController controller = Get.put(EmployeeController());
    return Scaffold(
      body: Column(
        children: [
          // ----------------------- Header ----------------------- //
          CustomAppBar(
            pageName: 'Employee',
            subTitle: '200 Employees',
            withTrailing: false,
            withImage: false,
            trailingWidget: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    //icon urutan organisasi
                    FontAwesomeIcons.sitemap,
                    // color: MyTheme.theme.buttonTheme.colorScheme!.primary,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.filter_alt,
                    // color: MyTheme.theme.buttonTheme.colorScheme!.secondary,
                  ),
                ),
              ],
            ),
            // image: 'assets/images/app_icon.png',
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // ----------------------- Search ----------------------- //
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextFormField2(
                      name: 'Search',
                      controller: controller.searchController,
                      enable: true,
                      errorText: 'error',
                      keyboardType: TextInputType.name,
                      height: 50,
                      prefixIcon: Icons.search,
                      color: MyTheme.theme.buttonTheme.colorScheme!.primary
                          .withOpacity(0.7),
                    ),
                  ),

                  // ----------------------- Employee List ----------------------- //
                  EmployeeList(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

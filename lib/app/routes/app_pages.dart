import 'package:get/get.dart';

import '../modules/Employee/bindings/employee_binding.dart';
import '../modules/Employee/views/employee_view.dart';
import '../modules/account/bindings/account_binding.dart';
import '../modules/account/views/account_view.dart';
import '../modules/announcement/bindings/announcement_binding.dart';
import '../modules/announcement/views/announcement_view.dart';
import '../modules/custom_navigationBar/bindings/custom_navigation_bar_binding.dart';
import '../modules/custom_navigationBar/views/custom_navigation_bar_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/notification/bindings/notification_binding.dart';
import '../modules/notification/views/notification_view.dart';
import '../modules/timeOff/bindings/time_off_binding.dart';
import '../modules/timeOff/views/time_off_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOM_NAVIGATION_BAR,
      page: () => const CustomNavigationBarView(),
      binding: CustomNavigationBarBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT,
      page: () => const AccountView(),
      binding: AccountBinding(),
    ),
    GetPage(
      name: _Paths.ANNOUNCEMENT,
      page: () => const AnnouncementView(),
      binding: AnnouncementBinding(),
    ),
    GetPage(
      name: _Paths.TIME_OFF,
      page: () => const TimeOffView(),
      binding: TimeOffBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => const NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.EMPLOYEE,
      page: () => const EmployeeView(),
      binding: EmployeeBinding(),
    ),
  ];
}

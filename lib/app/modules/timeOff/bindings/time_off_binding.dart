import 'package:get/get.dart';

import '../controllers/time_off_controller.dart';

class TimeOffBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TimeOffController>(
      () => TimeOffController(),
    );
  }
}

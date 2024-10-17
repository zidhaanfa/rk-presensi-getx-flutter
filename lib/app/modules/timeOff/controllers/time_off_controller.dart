import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TimeOffController extends GetxController
    with GetTickerProviderStateMixin {
  //TODO: Implement TimeOffController

  late TabController tabTimeOffController;
  late TabController tabTimeOffApprovalDetailController;

  final count = 0.obs;
  final tabLength = 2.obs;
  final tabIndex = 0.obs;
  final tabName = 'Internet'.obs;

  final tabLengthApproval = 2.obs;
  final tabIndexApproval = 0.obs;

  final tabs = [].obs;

  @override
  void onInit() {
    super.onInit();
    tabTimeOffController = TabController(length: tabLength.value, vsync: this);
    tabTimeOffApprovalDetailController =
        TabController(length: tabLengthApproval.value, vsync: this);
    tabTimeOffController.addListener(() {
      if (tabTimeOffController.indexIsChanging) {
        tabIndex.value = tabTimeOffController.index;

        print(tabTimeOffController.index);
        print(tabName.value);
      }
    });
  }

  @override
  void dispose() {
    tabTimeOffController.dispose();

    super.dispose();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}

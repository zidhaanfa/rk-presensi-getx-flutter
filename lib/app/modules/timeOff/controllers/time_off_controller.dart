import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TimeOffController extends GetxController
    with GetSingleTickerProviderStateMixin {
  //TODO: Implement TimeOffController

  late TabController tabTimeOffController;

  final count = 0.obs;
  final tabLength = 2.obs;
  final tabIndex = 0.obs;
  final tabName = 'Internet'.obs;

  final tabs = [].obs;

  @override
  void onInit() {
    super.onInit();
    tabTimeOffController = TabController(length: tabLength.value, vsync: this);
    tabTimeOffController.addListener(() {
      if (tabTimeOffController.indexIsChanging) {
        tabIndex.value = tabTimeOffController.index;

        if (tabTimeOffController.index == 0) {
          tabName.value = 'Internet';
        } else if (tabTimeOffController.index == 1) {
          tabName.value = 'Produk';
        } else if (tabTimeOffController.index == 2) {
          tabName.value = 'Wishlist';
        }
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

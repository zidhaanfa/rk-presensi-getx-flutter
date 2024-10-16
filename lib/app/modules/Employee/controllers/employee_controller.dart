import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmployeeController extends GetxController {
  //TODO: Implement EmployeeController

  final count = 0.obs;

  final TextEditingController searchController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
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

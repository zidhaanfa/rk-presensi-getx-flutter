import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final count = 0.obs;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final TextEditingController nameFirstRegisterController =
      TextEditingController();
  final TextEditingController nameLastRegisterController =
      TextEditingController();
  final TextEditingController emailRegisterController = TextEditingController();
  final TextEditingController passwordRegisterController =
      TextEditingController();
  final TextEditingController confirmPasswordRegisterController =
      TextEditingController();
  final isObsecure = true.obs;
  final rememberMe = false.obs;
  final isLoginForm = true.obs;

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

  void changeObsecure() {
    isObsecure.value = !isObsecure.value;
  }

  void changeForm() {
    isLoginForm.value = !isLoginForm.value;
  }

  void changeRememberMe(bool? value) {
    rememberMe.value = !rememberMe.value;
  }
}

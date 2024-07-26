import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlayertempltController extends GetxController {
  final emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

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
    emailController.dispose();
    super.onClose();
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    } else if (!GetUtils.isEmail(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  void resetPassword() {
    if (formKey.currentState?.validate() ?? false) {
      // Implement your password reset logic here
      Get.toNamed('/catogorytemplt');
    }
  }
}

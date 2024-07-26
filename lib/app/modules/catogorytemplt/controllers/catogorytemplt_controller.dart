import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatogorytempltController extends GetxController {
  final TextEditingController _passwordController = TextEditingController();

  //TODO: Implement CatogorytempltController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}

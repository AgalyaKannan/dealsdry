import 'dart:convert';

import 'package:chatapp/app/modules/preference.dart';
import 'package:chatapp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class RegisterController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController referralCode = TextEditingController();


  @override
  void onInit() {
    super.onInit();
  }
  Future<void> signin() async {
    final String apiUrl = 'http://devapiv4.dealsdray.com/api/v2/user/email/referral';

    final Map<String, dynamic> input = {
      "email": email.text.toString(),
      "password": password.text.toString(),
      "referralCode": referralCode.text.toString(),
      "userId": Preference.userid
    };

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        body: jsonEncode(input),
        headers: {'Content-Type': 'application/json'},
      );

      print('url: $apiUrl');
      print('statuscode: ${response.statusCode}'); // Log response data
      print('input: $input'); // Log response data

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        print('Response data: $jsonData'); // Log response data

        if (jsonData['status'] == 1) {
          
            Get.offAllNamed(Routes.HOMEPAGE); 
           Get.snackbar('Success', 'Successfully Added');
         
        } else {
          Get.snackbar('Error', 'Not Successfully Added');
        }
      } else {
        throw Exception('Something went wrong');
      }
    } catch (e) {
      print('Error verifying OTP: $e');
      Get.snackbar('Error', 'Something went wrong');
      }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

}

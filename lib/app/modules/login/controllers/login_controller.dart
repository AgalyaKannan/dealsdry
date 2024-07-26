import 'dart:convert';
import 'package:chatapp/app/modules/preference.dart';
import 'package:chatapp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class StatusController extends GetxController {
  final formKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();

  // Validate phone number
  String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your phone number';
    } else if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
      return 'Please enter a valid 10-digit phone number';
    }
    return " "; // Use null instead of empty string to indicate no error
  }

  // Login method
  void login() {
    print('cominginsidefunction');
     getotp();
  }

  Future<void> getotp() async {
    final String apiUrl = 'http://devapiv4.dealsdray.com/api/v2/user/otp';
    final Map input = {
      "mobileNumber": phoneController.text.toString(),
      "deviceId": Preference.deviceid,
    };
print('url:$apiUrl');

    try {
      print('insideresponse');
      final response = await http.post(
        Uri.parse(apiUrl),
        body: jsonEncode(input),
        headers: {
          'Content-Type': 'application/json',
        },
      );
      print('url:$apiUrl');
      print('statuscode: ${response.statusCode}'); // Log response data
      print('Request data: $input'); // Log request data

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        print('Response data: $jsonData'); // Log response data

        if (jsonData['status'] == 1) {
          Preference.userid = jsonData['data']['userId'];
          Preference.deviceid = jsonData['data']['deviceId'];

          print('loginuserid: ${Preference.userid}');
          print('logindeviceid: ${Preference.deviceid}');
          Get.offAllNamed(Routes.OTPLOGIN);
          Get.snackbar('Success', 'otp sent successfully');
          update();
        } else {
         Get.snackbar('error', 'something went wrong');
         
         
          throw Exception('API response status is not 1');
        }
      } else {
          Get.snackbar('error', 'something went wrong');

        throw Exception('Failed to load data: ${response.statusCode}');
      }
    } catch (e) {
      print('Error occurred: $e'); // Log error
    }
  }


}

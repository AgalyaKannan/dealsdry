import 'dart:convert';
import 'package:chatapp/app/modules/preference.dart';
import 'package:chatapp/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class OtploginController extends GetxController {
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

  Future<void> verifyOtp(String otp) async {
    final String apiUrl = 'http://devapiv4.dealsdray.com/api/v2/user/otp/verification';

    final Map<String, dynamic> input = {
      "otp": otp,
      "deviceId": Preference.deviceid,
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
          final registrationStatus = jsonData['data']['registration_status'];
          if (registrationStatus.toLowerCase() == 'incomplete') {
            // Navigate to the registration page if registration status is incomplete
             Get.offAllNamed(Routes.REGISTER);
          } else {
            // Navigate to the homepage if registration status is complete
            Get.offAllNamed(Routes.HOMEPAGE); 
          }
          Get.snackbar('Success', 'Successfully verified mobile number');
        } else {
          Get.snackbar('Error', 'Invalid OTP');
        }
      } else {
        throw Exception('Failed to verify OTP');
      }
    } catch (e) {
      print('Error verifying OTP: $e');
      Get.snackbar('Error', 'Failed to verify OTP');
    }
  }

}

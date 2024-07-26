import 'package:chatapp/app/modules/homepage/views/homepage_view.dart';
import 'package:chatapp/app/modules/login/views/login_view.dart';
import 'package:chatapp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/otplogin_controller.dart';

class OtploginView extends GetView<OtploginController> {
  final List<TextEditingController> otpControllers = List.generate(4, (_) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {
                 Get.offAllNamed(Routes.STATUS);

            },
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                // Asset Image
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Image.asset(
                    'assets/otpimage.png', // Replace with your image path
                    height: 100, // Adjust height as needed
                  ),
                ),
                // OTP Verification Title and Description
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'OTP Verification',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'We have sent a unique OTP number \n to your Mobile +74185296355',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(height: 40),
                      // OTP Input Fields
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          children: List.generate(
                            4,
                            (index) => Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: TextField(
                                  controller: otpControllers[index],
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    counterText: '',
                                  ),
                                  maxLength: 1,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(50.0),
                            child: Text(
                              '01:57',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ElevatedButton(
                              onPressed: () {
                                String otp = otpControllers.map((controller) => controller.text).join();
                                if (otp.length == 4) {
                                  controller.verifyOtp(otp); // Pass the OTP string
                                } else {
                                  Get.snackbar('Error', 'Please enter a valid 4-digit OTP');
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Text(
                                'VERIFY',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:chatapp/app/modules/login/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StatusView extends GetView<StatusController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: GetBuilder<StatusController>(
        builder: (controller) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SafeArea(
              child: Center(
                child: Form(
                  key: controller.formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Image.asset(
                          'assets/dealsdray.png', // Replace with your image path
                          height: 100, // Adjust height as needed
                        ),
                      ),
                      SizedBox(height: 50),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Glad to see you..!',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Please Provide your Phone number',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 50),
                      Container(
                        height: 50.0,
                        width: 300.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade800),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            controller: controller.phoneController,
                            textAlign: TextAlign.start,
                            autofocus: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.phone, color: Colors.black),
                              hintText: 'Phone',
                              hintStyle: TextStyle(color: Colors.black54),
                              border: InputBorder.none,
                            ),
                            validator: controller.validatePhoneNumber,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      ElevatedButton(
                        onPressed: () {
                          controller.login();
                          print('sendiconpressed');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'SEND CODE',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}

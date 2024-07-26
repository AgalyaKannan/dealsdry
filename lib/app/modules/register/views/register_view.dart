import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: GetBuilder<RegisterController>(
        builder: (Controller) {
          return SingleChildScrollView(
            scrollDirection:Axis.vertical,
            child: SafeArea(
              child: Center(
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
                          'Lets Begin!',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Please enter Your Credentials To proceed ',
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
                          keyboardType: TextInputType.emailAddress,
                          controller: controller.email,
                          textAlign: TextAlign.start,
                          autofocus: true,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email, color: Colors.black),
                            hintText: 'Your Email',
                            hintStyle: TextStyle(color: Colors.black54),
                            border: InputBorder.none,
                          ),
                        
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                        ),
                      ),
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
                          keyboardType: TextInputType.name,
                          controller: controller.password,
                          textAlign: TextAlign.start,
                          autofocus: true,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock, color: Colors.black),
                            suffixIcon: Icon(Icons.remove_red_eye),
                            hintText: 'Create Password',
                            hintStyle: TextStyle(color: Colors.black54),
                            border: InputBorder.none,
                          ),
                         
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                        ),
                      ),
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
                          keyboardType: TextInputType.emailAddress,
                          controller: controller.referralCode,
                          textAlign: TextAlign.start,
                          autofocus: true,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.password_sharp, color: Colors.black),
                            hintText: 'Referral Code (Optional)',
                            hintStyle: TextStyle(color: Colors.black54),
                            border: InputBorder.none,
                          ),
                         
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                        ),
                      ),
                    ),
                    
                   
                  ],
                ),
              ),
            ),
          );
        }
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          onPressed: () {
        
            controller.signin();
            print('FAB Pressed');
          },
          child: Icon(Icons.arrow_forward,color: Colors.white,),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }

}

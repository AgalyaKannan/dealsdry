import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:chatapp/app/modules/homepage/views/homepage_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/splashscreen_controller.dart';

 class SplashscreenView extends GetView<SplashscreenController> {
  @override
  Widget build(BuildContext context) {
     controller.getallinfo();
    return Scaffold(
       body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.asset(
                      'assets/Animation - 1721846571309.json',
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 5),
                    Image.asset(
                      'assets/dealsdray.png',
                      width: 50,
                      height: 50,
                      filterQuality: FilterQuality.low,
                    ),
                  ],
                ),
              ),
       
    );
  }
}

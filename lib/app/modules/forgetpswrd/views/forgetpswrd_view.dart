import 'package:chatapp/app/modules/catogorytemplt/views/catogorytemplt_view.dart';
import 'package:chatapp/app/modules/login/views/login_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/forgetpswrd_controller.dart';

class PlayertempltView extends GetView<PlayertempltController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin:Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          const Color.fromARGB(255, 17, 17, 17),
          Color.fromARGB(226, 44, 114, 66)
          ]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(onPressed: (){
              Get.to(StatusView());
            }, icon: Icon(Icons.arrow_back,color: Colors.white,))
          ),
          // actions: [Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: IconButton(onPressed: (){
          //     Get.to(CatogorytempltView());
          //   }, icon: Icon(Icons.more_vert),color: Colors.white,)
          // )],
          // title: Text('Spotify',style: TextStyle(color: Colors.white),),
          
          // centerTitle: true,
        ),

    
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                const Center(
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Center(
                  child: Text(
                    "Enter Your Email Address to Get the Password Reset link",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 100),
                const Text(
                  "Email Address",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade800),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        textAlign: TextAlign.start,
                        autofocus: false,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.mail, color: Colors.black),
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.white),
                          border: InputBorder.none,
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                      ),
                    ),
                  ),
                ),
                  SizedBox(height: 20),
                      Center(
                        child: ElevatedButton(
                           onPressed: (){
                           Get.to(CatogorytempltView());
                           },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text(
                            'Password Reset',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        
                      ),
                       SizedBox(height: 200),
                       
                          Center(child: TextButton(onPressed: (){
                          }, child: Text("Create An Account",style: TextStyle(fontSize: 18, color: Colors.white),))) ,
                            
                        

              ],
            ),
          ),
          
        ),
      ),
      )
    );
  }
}
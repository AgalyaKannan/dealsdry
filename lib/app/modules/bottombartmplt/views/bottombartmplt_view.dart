import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../controllers/bottombartmplt_controller.dart';

class BottombartmpltView extends GetView<BottombartmpltController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              // Handle menu icon press
            },
          ),
        ),
        title: Container(
          margin: EdgeInsets.symmetric(horizontal: 1),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: TextField(
                    maxLength: 15,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search here',
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Image.asset('assets/smallicon1.png'),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(Icons.search, color: Colors.black),
                      ),
                      counterText: '',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.notifications_none_outlined, color: Colors.black),
              onPressed: () {
                Get.to(() => BottombartmpltView());
              },
            ),
          ),
        ],
        elevation: 0,
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _bottomAppBarItem(
                context,
                icon: Icons.home,
                page: 0,
                label: "Home",
              ),
              _bottomAppBarItem(
                context,
                icon: Icons.category,
                page: 1,
                label: "Catogories",
              ),
              _bottomAppBarItem(
                context,
                icon: Icons.local_offer,
                page: 2,
                label: "Deals",
              ),
              _bottomAppBarItem(
                context,
                icon: Icons.shopping_cart,
                page: 0,
                label: "Cart",
              ),
              _bottomAppBarItem(
                context,
                icon: Icons.person,
                page: 0,
                label: "Profile",
              ),
            ],
          ),
        ),
      ),
      // body: Center(
      //   child: Text(
      //     'BottombartmpltView is working',
      //     style: TextStyle(fontSize: 20),
      //   ),
      // ),
    );
  }

  Widget _bottomAppBarItem(BuildContext context, {required IconData icon, required int page, required String label}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.black),
        Text(label, style: TextStyle(color: Colors.black)),
      ],
    );
  }
}

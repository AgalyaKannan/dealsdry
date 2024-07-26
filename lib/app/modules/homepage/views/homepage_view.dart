import 'package:chatapp/app/modules/homepage/views/home_view.dart';
import 'package:chatapp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/homepage_controller.dart';
import 'package:chatapp/app/modules/bottombartmplt/views/bottombartmplt_view.dart';

class HomepageView extends GetView<HomepageController> {
  @override
  Widget build(BuildContext context) {
    controller.gethomemodel();
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
        ),
        title: Container(
          margin: EdgeInsets.symmetric(horizontal: 01),
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
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 15.0),
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
              icon: Icon(Icons.logout, color: Colors.black),
              onPressed: () {
                   Get.offAllNamed(Routes.STATUS);
              },
            ),
          ),
        ],
        elevation: 0,
      ),
        body: HomeView(),
      // body:
      //  GetBuilder<HomepageController>(
      //   builder: (controller) {
      //     if (controller.homemodelwholedata.isEmpty) {
      //       return Center(child: CircularProgressIndicator());
      //     }

      //     var firstHomemodel = controller.homemodelwholedata.isNotEmpty ? controller.homemodelwholedata[0] : null;
      //     var bannerOneList = firstHomemodel?.data?.bannerOne ?? [];

      //     return SafeArea(
      //       child: Column(
      //         children: [
      //           // Horizontal ListView for banners
      //           Container(
      //             height: 200, // Adjust height as needed
      //             child: ListView.builder(
      //               scrollDirection: Axis.horizontal,
      //               itemCount: bannerOneList.length,
      //               itemBuilder: (context, index) {
      //                 var banner = bannerOneList[index];
      //                 return Container(
      //                   width: 300.0,
      //                   height: 200.0,
      //                   decoration: BoxDecoration(
      //                     color: Colors.grey,
      //                     borderRadius: BorderRadius.circular(15.0),
      //                     border: Border.all(
      //                       color: Colors.grey,
      //                       width: 3.0,
      //                     ),
      //                     boxShadow: [
      //                       BoxShadow(
      //                         color: Colors.grey,
      //                         offset: Offset(4.0, 4.0),
      //                         blurRadius: 10.0,
      //                       ),
      //                     ],
      //                   ),
      //                   padding: EdgeInsets.all(20.0),
      //                   margin: EdgeInsets.symmetric(horizontal: 8.0),
      //                   child: Center(
      //                     child: banner?.banner != null
      //                         ? Image.network(
      //                             banner.banner!,
      //                             fit: BoxFit.cover,
      //                           )
      //                         : Text(
      //                             'No Image Available',
      //                             style: TextStyle(
      //                               color: Colors.white,
      //                               fontSize: 18.0,
      //                             ),
      //                           ),
      //                   ),
      //                 );
      //               },
      //             ),
                
      //           ),
      //           // Horizontal ListView for categories
      //           Container(
      //             height: 100, // Adjust height as needed
      //             child: ListView.builder(
      //               scrollDirection: Axis.horizontal,
      //               itemCount: controller.allcategories.length,
      //               itemBuilder: (context, index) {
      //                 final iconUrl = controller.allcategories[index];
      //                 final label = controller.allcategorieslabel[index];

      //                 return Container(
      //                   width: 100, // Adjust width as needed
      //                   child: Padding(
      //                     padding: const EdgeInsets.all(8.0),
      //                     child: Column(
      //                       mainAxisAlignment: MainAxisAlignment.center,
      //                       children: [
      //                         Image.network(
      //                           iconUrl,
      //                           width: 50, // Adjust icon size as needed
      //                           height: 50,
      //                           fit: BoxFit.cover,
      //                         ),
      //                         SizedBox(height: 8.0),
      //                         Text(label, textAlign: TextAlign.center),
      //                       ],
      //                     ),
      //                   ),
      //                 );
      //               },
      //             ),
      //           ),
      //         ],
      //       ),
      //     );
      //   },
      // ),
     
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          width: 120,
          height: 50,
          child: FloatingActionButton.extended(
            onPressed: () {
              // Show a Snackbar with chat text
            },
            icon: Icon(Icons.message, color: Colors.white),
            label: Text(
              'Chat',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.red,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: 'Deals',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

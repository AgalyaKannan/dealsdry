import 'package:get/get.dart';

import '../controllers/forgetpswrd_controller.dart';

class PlayertempltBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlayertempltController>(
      () => PlayertempltController(),
    );
  }
}

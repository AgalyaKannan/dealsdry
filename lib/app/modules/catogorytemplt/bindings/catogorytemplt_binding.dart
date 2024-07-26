import 'package:get/get.dart';

import '../controllers/catogorytemplt_controller.dart';

class CatogorytempltBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CatogorytempltController>(
      () => CatogorytempltController(),
    );
  }
}

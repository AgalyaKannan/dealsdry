import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preference {
  static final SharedPreferences preferences = Get.find();



 static const String DEVICE_ID = 'deviceId';
 static const String USER_ID = 'userId';

  // device id
  static String get deviceid => preferences.getString(DEVICE_ID) ?? '';
  static set deviceid(String value) => preferences.setString(DEVICE_ID, value);

// user id
  static String get userid => preferences.getString(USER_ID) ?? '';
  static set userid(String value) => preferences.setString(USER_ID, value);



  
}

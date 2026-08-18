
import 'dart:async';

import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:getx_mvvc/res/routes/routes_name.dart';

class SplashServices {
  void islogin(){
    Timer(const Duration(seconds: 3),()=>Get.toNamed(RountesName.Loginview));
  }
}
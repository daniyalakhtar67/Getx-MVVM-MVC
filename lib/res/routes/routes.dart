import 'package:get/get.dart';
import 'package:getx_mvvc/res/routes/routes_name.dart';
import 'package:getx_mvvc/view/Splash_Screen.dart';
class AppRoutes{
  static approutes()=>{
    GetPage(name: RountesName.splashScreen, page: ()=>SplashScreen(),transition: Transition.leftToRightWithFade,
    transitionDuration: Duration(milliseconds: 250)
    ),
  };
}
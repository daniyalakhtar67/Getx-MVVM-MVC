import 'package:get/get.dart';
import 'package:getx_mvvc/res/routes/routes_name.dart';
import 'package:getx_mvvc/view/Splash_Screen.dart';
import 'package:getx_mvvc/view/login/loginView.dart';
class AppRoutes{
  static List<GetPage> approutes()=>[
    GetPage(name: RountesName.splashScreen, page: ()=>SplashScreen(),transition: Transition.leftToRightWithFade,
    transitionDuration: Duration(milliseconds: 250)
    ),
    GetPage(name: RountesName.Loginview, page: ()=>Loginview(),transition: Transition.leftToRight)
  ];
}
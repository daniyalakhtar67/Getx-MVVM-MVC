import 'package:flutter/material.dart';
import 'package:getx_mvvc/res/components/internet_exception.dart';
import 'package:getx_mvvc/view_modal/services/splash_services.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashScreen = SplashServices(); // instacne of splashscreen
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashScreen.islogin();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Splash Screen'),
        centerTitle: true,
      ),
      body: InternetExceptionWidget(onpress: (){},),
    );
  }
}

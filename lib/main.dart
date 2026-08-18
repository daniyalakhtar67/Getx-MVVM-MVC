import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_mvvc/res/routes/routes.dart';
import 'package:getx_mvvc/res/routes/routes_name.dart';
import 'package:getx_mvvc/view/Splash_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      getPages: AppRoutes.approutes(),
      initialRoute: RountesName.splashScreen,
    );
  }
}

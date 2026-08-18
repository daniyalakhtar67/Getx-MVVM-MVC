import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvc/res/colors/app_colors.dart';
import 'package:getx_mvvc/utils/utils.dart';
import 'package:getx_mvvc/view_modal/controller/login_controller.dart';

class Loginview extends StatefulWidget {
  const Loginview({super.key});

  @override
  State<Loginview> createState() => _LoginviewState();
}

class _LoginviewState extends State<Loginview> {
  final  loginC = Get.put(LoginController());
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login'.tr),
        centerTitle: true,
        automaticallyImplyActions: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formkey,
              child: TextFormField(
                controller: loginC.emailController.value,
                focusNode: loginC.emailFocusNode.value,
                validator: (value){
                  Utils.snakbar('Email', 'Enter email');
                },
                onFieldSubmitted: (value){
                  Utils.fieldfocuschange(context, loginC.emailFocusNode.value, loginC.passwordFocusNose.value);
                },
                decoration: InputDecoration(
                  hintText: 'email'.tr,
                ),
              ),
            ),
            SizedBox(height: 10),
            Form(key:_formkey,child: TextFormField(
              obscureText: true,
              obscuringCharacter: '*',
              controller: loginC.emailController.value,
              focusNode: loginC.passwordFocusNose.value,
              validator: (value){
                Utils.snakbar('Password', 'Enter password');
              },
              onFieldSubmitted: (value){
              },
              decoration: InputDecoration(
                hintText: 'password'.tr,
              ),
            )),
            SizedBox(height: 40),
            ElevatedButton(onPressed: (){
              if(_formkey.currentState!.validate()){}
            }, child: Text('login'.tr),style: ElevatedButton.styleFrom(
              minimumSize: Size(200, 50),
              backgroundColor: AppColors.primaryColor,

            ),)
          ],
        ),
      ),
    );
  }
}

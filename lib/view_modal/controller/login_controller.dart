
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  final emailController = TextEditingController().obs;
  final passController = TextEditingController().obs;
  final emailFocusNode = FocusNode().obs;
  final passwordFocusNose = FocusNode().obs;
}
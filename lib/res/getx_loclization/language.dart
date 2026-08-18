import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/internacionalization.dart';
class Language extends Translations{
  @override
  Map<String, Map<String,String>> get keys=>{
    'en_US':{
      'email_hint':'Enter Email'
    },
    'ur_PAK':{
      'email_hint':'ای میل درج کریں',
    }
  };
}
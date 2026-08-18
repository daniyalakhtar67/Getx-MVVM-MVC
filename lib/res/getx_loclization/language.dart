import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/internacionalization.dart';
class Language extends Translations{
  @override
  Map<String, Map<String,String>> get keys=>{
    'en_US':{
      'email_hint':'Enter Email',
      'internet_exception':'We\'re unable to show result \n Please check your data \n connection',
    },
    'ur_PAK':{
      'email_hint':'ای میل درج کریں',
      'internet_exception':'ہم نتیجہ نہیں دکھا سکتے \n براہ کرم اپنا ڈیٹا کنکشن چیک کریں',
    }
  };
}
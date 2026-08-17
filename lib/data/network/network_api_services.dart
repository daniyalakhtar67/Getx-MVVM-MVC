import 'dart:convert';
import 'dart:io';

import 'package:getx_mvvc/data/app_exceptions.dart';
import 'package:getx_mvvc/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;
class NetworkApiServices extends BaseApiServices{
  @override
  Future<dynamic>postApi(dynamic data, String url)async{
    dynamic responseJson;
    try{
      final response2 = await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
      responseJson = returnResponse(response2);
    }on SocketException{
      throw InternetException();
    }on RequestTimeOut{
      throw RequestTimeOut();
    }
    return responseJson;

  }
  @override
  Future<dynamic> getApi(String url)async {
    dynamic responseJson;
    try {
      final response = await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10)); // ya time backend developer da ga
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on RequestTimeOut {
      throw RequestTimeOut();
    }
    return responseJson;
  }
  dynamic returnResponse(http.Response response){
    switch(response.statusCode){
      case 200:
        dynamic responseJson=jsonDecode(response.body);
        return responseJson;
      case 400:
        throw InvalidUrl();
        default:
          throw FetchDataException('Error accoured while communicating with server'+response.body.toString());
    }
  }
}
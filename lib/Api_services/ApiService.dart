
import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
class ApiService {
static String baseUrl = ''; 
static var client = http.Client();  
var token=''; 
   Future getRequest(String path) async{
    var url = Uri.parse(baseUrl+path); 
    var headers = {
        'Content-Type':'application/json; charset=UTF-8', 
        'Accept':'application/json', 
        'Authorization':'Bearer '+token
    }; 

    try{
        final response = await http.get(url,headers:headers); 
        print(response.body); 

    if(response.statusCode==200 || response.statusCode==204)
    {
        return response; 
    }
    }catch(e){
        print(e);
    }

    }
    Future postRequest(String path,Map data) async{
    var url = Uri.parse(baseUrl+path); 
    var headers = {
        'Content-Type':'application/json;charset=UTF-8', 
        'Accept':'application/json', 
        'Authorization':'Bearer '+token,
    }; 

    try{
        final response = await http.post(url,headers:headers); 
        print(response.body); 

    if(response.statusCode==200 || response.statusCode==204)
    {
        return response; 
    }
    }catch(e){
        print(e);
    }

    }
      Future postWithOutData(String path) async {
    var url = Uri.parse(baseUrl+path);
    var headers={
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept':'application/json',
      'Authorization': 'Bearer '+token,
    };

    try{
      final response = await http.post(url,headers: headers,);
      if (response.statusCode == 200 || response.statusCode==422) {
        return response;
      }
      else if(response.statusCode==401){
        // authCtrl.logOut();
      //  return Get.off(()=>Login());
      }
      else {
        // Get.to(()=>const Error404());
      }
    }catch(e){
      print(e);
    }
  }
}
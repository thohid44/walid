import 'dart:convert';

import 'package:get/get.dart';
import 'package:triptask/Api_services/ApiService.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  login(email, password) async {
    Map mapData ={
      "email":email, 
      "password":password
    }; 
    var response = await ApiService().postRequest("path", mapData);

    var data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      print(data);
    }
  }

  registration() async {
    var response = await ApiService().postRequest("path",{});

    var data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      print(data); 
    }
  }
}

import 'dart:convert';

import 'package:get/get.dart';
import 'package:triptask/Api_services/ApiService.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  login() async {
    var response = await ApiService().postRequest("path",Map());

    var data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      print(data);
    }
  }

  registration() async {
    var response = await ApiService().postRequest("path",Map());

    var data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      print(data); 
    }
  }
}

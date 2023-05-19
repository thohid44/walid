import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:triptask/Api_services/ApiService.dart';
import 'package:http/http.dart' as http;
import 'package:triptask/Utils/localstorekey.dart';
import 'package:triptask/pages/Home/view/home_screen.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;
  final _box = GetStorage();
  var userClient = http.Client();
  var url = "http://api.tripshiptask.com/api/auth/login";
  login(email, password) async {
    var mapData = {"email": "waleed.amin08@gmail.com", "password": "123456789"};
    try {
      isLoading(true);
      var response = await http.post(Uri.parse(url), body: mapData);
      if (response.statusCode == 200) {
        var jsonData = jsonDecode(response.body);

        var getToken = jsonData['access_token'];
        _box.write(LocalStoreKey.token, getToken);
        print(_box.read(LocalStoreKey.token));
        if (getToken != null) {
          Get.to(HomeScreen());
        }
      }
    } catch (e) {
      print("Error $e");
    }
  }
}

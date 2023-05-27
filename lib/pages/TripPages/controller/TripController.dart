import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:triptask/Api_services/ApiService.dart';
import 'package:http/http.dart' as http;
import 'package:triptask/Utils/localstorekey.dart';
class TripController extends GetxController{

final _box = GetStorage();
var isLoading = false.obs; 

  getTripRide(sPoint,des,note, prefered,howmany, currency,vehicled) async{
 var token = _box.read(LocalStoreKey.token); 
 print(token); 
 var mapData = {
    "post_type": "sit",
    "start_point": sPoint,
    "via": "est",
    "date": "2023-05-24",
    "time": "10:00",
    "destination": "porro",
    "distance": "nulla",
    "duration": "esse",
    "vehicle": vehicled,
    "vehicle_type": howmany,
    "pay": currency,
    "s_lat": "eaque",
    "s_lng": "assumenda",
    "d_lat": "doloribus",
    "d_lng": "et",
    "country": "dignissimos",
    "currency": currency,
    "preferred_passenger": "ullam",
    "vehicle_seat": howmany,
    "details": note
};

    try {
      isLoading(true);
      var response = await ApiService().postData(mapData,"trip");
    
     
      if (response.statusCode == 201) {
        print(response.statusCode); 
        var jsonData = jsonDecode(response.body);
print(jsonData); 
  Get.snackbar("Get Ride", "Successfully Store"); 
      }
    } catch (e) {
      print("Error $e");
    }
  }
}
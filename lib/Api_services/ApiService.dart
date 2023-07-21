
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:triptask/Utils/localstorekey.dart';
class ApiService {
static String baseUrl = 'http://api.tripshiptask.com/api/'; 
static var client = http.Client();  
var token=''; 

    
final _box = GetStorage();
var isLoading = false.obs; 
//sPoint,des,note, prefered,howmany, currency,vehicled

  postData(mapData,String link) async{
 var token = _box.read(LocalStoreKey.token); 


    try {
      isLoading(true);
      var response = await http.post(Uri.parse("http://api.tripshiptask.com/api/$link"),
      headers: {
      
        'Accept':'application/json',
        'Authorization': 'Bearer '+token,
      },
       body: mapData);
      if (response.statusCode == 201) {
        print(response.statusCode); 
        var jsonData = jsonDecode(response.body);
print(jsonData); 
  Get.snackbar("Get Ride", "Successfully Store",
  backgroundColor: Colors.deepOrange
  ); 
      }
    } catch (e) {
      print("Error $e");
    }
  }
}
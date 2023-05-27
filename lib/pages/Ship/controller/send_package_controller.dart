import 'package:get/get.dart';
import 'package:triptask/Api_services/ApiService.dart';

class SendPackageController extends GetxController{


  sendPackage() async{

   var mapData = {
    "post_type": "enim",
    "pickuppoint": "minima",
    "date": "quaerat",
    "time": "modi",
    "delivery_date": "soluta",
    "delivery_time": "ut",
    "dropoffpoint": "eius",
    "distance": "aspernatur",
    "duration": "quidem",
    "amount": "enim",
    "p_lat": "ut",
    "p_lng": "quidem",
    "d_lat": "alias",
    "d_lng": "fugit",
    "document": "ut",
    "packagetype": "sint",
    "weight": "qui",
    "goodtype": "sit",
    "length": "illo",
    "width": "officiis",
    "height": "inventore",
    "document_worth": "atque",
    "ownvehicle": "molestiae",
    "country": "omnis",
    "currency": "et",
    "notes": "quos"
}
; 
    var response = await ApiService().postData(mapData, "ship"); 
    if(response.statusCode==201){


    }
  }
}
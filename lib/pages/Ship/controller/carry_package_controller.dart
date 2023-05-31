import 'package:get/get.dart';
import 'package:triptask/Api_services/ApiService.dart';

class CarryPackageController extends GetxController{


carryPackage(String pickup, String pickDate, String pickTime, String dropOff,   deliveryTime,
  deliveryDate, String currency,  String packageType,String note,) async{
   var mapData ={
    "ship_id": "porro",
    "pickuppoint": pickup,
    "date": "omnis",
    "time": "officiis",
    "delivery_date": "",
    "delivery_time": "minima",
    "dropoffpoint": "harum",
    "amount": "mollitia",
    "p_lat": "quia",
    "p_lng": "iste",
    "d_lat": "optio",
    "d_lng": "sit",
    "material": "quis",
    "material_type": "dolores",
    "package_type": "nostrum",
    "notes": "quibusdam",
    "weight": "dolores",
    "length": "vero",
    "width": "necessitatibus",
    "height": "voluptas"
}; 
    var response = await ApiService().postData(mapData, "carryshipbids"); 
    if(response.StatusCode==201){

    print(response.body); 
    }
  }
}
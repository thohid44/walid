
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:triptask/Utils/colors.dart';
import 'package:triptask/Widget/customButtonOne.dart';
import 'package:triptask/pages/TripPages/views/trip_page.dart';

class GetARide extends StatelessWidget {

  List<DropdownMenuItem<String>> get dropdownItem {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(child: Text("Select Year"), value: "Select Year"),
      const DropdownMenuItem(child: Text("2023"), value: "2023"),
      const DropdownMenuItem(child: Text("2024"), value: "2024"),
      const DropdownMenuItem(child: Text("2025"), value: "2025"),
      const DropdownMenuItem(child: Text("2026"), value: "2025"),
    ];
    return menuItems;
  }
  final TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //  CameraPosition initialCameraPosition = CameraPosition(
    //   zoom: 20,
    //   tilt: 80,
    //   bearing: 30,
    //   // target: currentLocation != null
    //   //     ? LatLng(currentLocation!.latitude ?? 0.0,
    //   //         currentLocation!.longitude ?? 0.0)
    //   //     : LatLng(0.0, 0.0),
    // );
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
          Container(
                  width: 320.w,
                  height: 40.h,
                  child: CustomForm(
                    hinttext: "Start Point",
                    radius: 5.r,
                    textController: search,
                  )),
                   SizedBox(
          height: 10.h,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            
              Container(
                  width: 150.w,
                  height: 40.h,
                  child: CustomForm(
                    hinttext: "Select Date",
                    radius: 5.r,
                    textController: search,
                  )),
             
              Container(
                  width: 150.w,
                  height: 40.h,
                  child: CustomForm(
                    hinttext: "Select Time",
                    radius: 5.r,
                    textController: search,
                  ))
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
         Container(
                  width: 320.w,
                  height: 40.h,
                  alignment: Alignment.center,
                  child: CustomForm(
                    hinttext: "Destination ",
                    radius: 5.r,
                    textController: search,
                  )),
                  SizedBox(
          height: 5.h,
        ),
        Container(
          color: Colors.amber,
          height: 150, 
          width: 320.w,
          
        ), 
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            children: [
             
              SizedBox(
                width: 10.w,
              ),
              Container(
                  width: 80.w,
                  height: 35.h,
                  alignment: Alignment.center,
                  child: CustomForm(
                    hinttext: "Radius",
                    radius: 5.r,
                    textController: search,
                  )),
              SizedBox(
                width: 5.w,
              ),
              Container(
                  width: 70.w,
                  height: 35.h,
                  alignment: Alignment.center,
                  child: CustomForm(
                    hinttext: "km",
                    radius: 5.r,
                    textController: search,
                  ))
            ],
          ),
        ),
        
        SizedBox(
          height: 10.h,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: TextFormField(
            decoration:  InputDecoration(
              hintText: "Note", 
              
              border: OutlineInputBorder(),
              
            ),
           
  maxLines: 3,
          
          ),
        ), 
      
        SizedBox(
          height: 10.h,
        ),
        CustomButtonOne(
          title: "Sumbit",
          onTab: () {},
          height: 40.h,
          width: 150.w,
          btnColor: navyBlueColor,
          radius: 10.r,
        )
      ],
    );
  }
}

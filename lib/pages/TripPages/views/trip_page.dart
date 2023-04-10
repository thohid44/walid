import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:triptask/Utils/colors.dart';
import 'package:triptask/Widget/customButtonOne.dart';
import 'package:triptask/Widget/customText.dart';
import 'package:triptask/Widget/customTextForm.dart';
import 'package:triptask/pages/TripPages/views/get_A_Ride.dart';
import 'package:triptask/pages/TripPages/views/give_A_Ride.dart';

class TripPage extends StatefulWidget {
  TripPage({super.key});

  @override
  State<TripPage> createState() => _TripPageState();
}

class _TripPageState extends State<TripPage> {
  final TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 160.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                      color: Color(0xff4CA4C7),
                      //E6E7E8
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Text(
                    "Give a Ride",
                    style: TextStyle(
                      fontSize: 13.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 160.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                      color: Color(0xff4CA4C7),
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Text(
                    "Give a Ride",
                    style: TextStyle(
                      fontSize: 13.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextForm(
                hinttext: "Search",
                width: 150.w,
                height: 40.h,
                textController: search,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    index = 2; 
                  });
                },
                child: Container(
                  height: 40.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                  decoration: BoxDecoration(
                      color: Color(0xffDEDFE0),
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Row(
                    children: [
                      Icon(Icons.list_alt),
                      CustomText(
                          "Task Posts", Colors.black, FontWeight.w700, 13.sp)
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(height: 550.h, child: widgetList[index])
        ],
      ),
    );
  }

  int index = 0;

  List<Widget> widgetList = [
  GiveARide(), 
   GetARide(), 
    TripTaskPost()
  ];
}

class CustomForm extends StatelessWidget {
  TextEditingController? textController;
  double? radius;
  String? hinttext;

  CustomForm({super.key, this.hinttext, this.radius, this.textController});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        hintText: hinttext ?? "Enter Data",
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius ?? 0.0.r)),
      ),
    );
  }
}

class TripTaskPost extends StatelessWidget {
  const TripTaskPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
        return Card(
          child: Container(
           
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 190.w,
                
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                               Container(
                 
                        child: CustomText("Start Point: Rajshahi", Colors.black,
                            FontWeight.w600, 13.sp),
                      ),
                      Container(
        
                      
                        child: CustomText("Destination: Bogura, Bangladesh", Colors.black,
                            FontWeight.w600, 13.sp),
                      ),
                           Container(
                    
                        child: CustomText("Offers: 10-20", Colors.black,
                            FontWeight.w600, 13.sp),
                      ),
                           Container(
                     
                        child: CustomText("Posted by: Admin Gov ID Verifide", Colors.black,
                            FontWeight.w600, 13.sp),
                      ),
                           Container(
               
                        child: CustomText("Male/25/Bachelor Degree or equivalent/Private job", Colors.black,
                            FontWeight.w600, 13.sp),
                      ),
                           Container(
                     
                        child: CustomText("Vehicle: Car", Colors.black,
                            FontWeight.w600, 13.sp),
                      ),
                  
                    ],
                  ),
                ), 
                 Container(
                  width: 120.w,
               
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                       padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: CustomText("Amount \$ 2400", Colors.black,
                            FontWeight.w600, 13.sp),
                      ),
                           Container(
                
                        child: CustomText("Details", Colors.black,
                            FontWeight.w600, 13.sp),
                      ),
                      SizedBox(height: 10.h,), 
                           Container(
                      padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 5.h, bottom: 5.h),
                        decoration: BoxDecoration(
                          color: navyBlueColor, 
                          borderRadius: BorderRadius.circular(10.r)
                        ),
                        child: CustomText("Make offer", Colors.white,
                            FontWeight.w600, 13.sp),
                      ),
                           Container(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: CustomText("Passenger:2", Colors.black,
                            FontWeight.w600, 13.sp),
                      ),
                   
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:triptask/Utils/colors.dart';

class ProfilePhoto extends StatefulWidget {
  const ProfilePhoto({super.key});

  @override
  State<ProfilePhoto> createState() => _ProfilePhotoState();
}

class _ProfilePhotoState extends State<ProfilePhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
          elevation: 0,
          title: Text(
            "E-mail Verification",
            style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.filter,
                  color: Colors.black,
                )),
          ],
        ),
      body: Column(
        children: [

          Container(
            margin: EdgeInsets.only(top: 20.h),
            alignment: Alignment.center,
            child: Text("Photo", style: TextStyle(
              fontSize: 16.sp, fontWeight: FontWeight.bold, 
              color: skyColor

            ),),
          ), 

          SizedBox(height: 40.h,), 
Container(
  child: Text("Click on camera to take your headshot", 
  style: TextStyle(fontSize: 15.sp, color: Colors.grey),),
), 
            SizedBox(height: 15.h,), 
          
      Container(
        height: 150.h, 
        width: 150.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(width: 0.5.w),
              image: DecorationImage(image: AssetImage("assets/man.jpg")),
              borderRadius: BorderRadius.circular(80.r)

            ),
            child: Icon(Icons.camera_alt, color:Colors.black, size: 50.h,),
          ), 

   SizedBox(height: 15.h,), 
Container(
  child: Text("Click on camera to take your headshot", 
  style: TextStyle(fontSize: 15.sp, color: Colors.grey),),
), 
      SizedBox(height: 100.h,), 
    Align( 
      alignment: Alignment.centerLeft,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 15.w),
        height: 40.h, 
        width: 100.w,
        decoration: BoxDecoration(
          color: navyBlueColor, 
          borderRadius: BorderRadius.circular(10.r)
        ),
        child: Text("< < Go Back", style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold, fontSize: 16.sp, 
        ),)
      ),
    )
        ],
      ),
    );
  }
}
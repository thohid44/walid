import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:triptask/Email_Verify/view/email_pin_option_screen.dart';
import 'package:triptask/Email_Verify/view/email_verification_optional_information.dart';
import 'package:triptask/Utils/colors.dart';
import 'package:triptask/Widget/customButtonOne.dart';

class ScanNIDPage extends StatefulWidget {
  const ScanNIDPage({super.key});

  @override
  State<ScanNIDPage> createState() => _ScanNIDPageState();
}

class _ScanNIDPageState extends State<ScanNIDPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Scan",style:TextStyle(fontSize: 16.sp, color: Color(0xff6D6E70))),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            child: Text(
              "Identification",
              style: TextStyle(
                  color: navyBlueColor,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            alignment: Alignment.center,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20.h, left: 15.w, right: 15.w),
                  height: 150.h,
                  width: 300.w,
                  decoration: BoxDecoration(
                      color: Color(0xffF2F2F2),
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Text(
                    "Scan the Front side of your id with the camera",
                    textAlign: TextAlign.center,
                  ),
                ),
                Positioned(
                    right: 10.w,
                    bottom: 10.h,
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xffC5C8DD), shape: BoxShape.circle),
                      child: FaIcon(
                        FontAwesomeIcons.camera,
                        color: Color(0xff6D6E70),
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            alignment: Alignment.center,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20.h, left: 15.w, right: 15.w),
                  height: 150.h,
                  width: 300.w,
                  decoration: BoxDecoration(
                      color: Color(0xffF2F2F2),
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Text(
                    "Scan the Back side of your id with the camera",
                    textAlign: TextAlign.center,
                  ),
                ),
                Positioned(
                    right: 10.w,
                    bottom: 10.h,
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xffC5C8DD), shape: BoxShape.circle),
                      child: FaIcon(
                        FontAwesomeIcons.camera,
                        color: Color(0xff6D6E70),
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            width: 300.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    alignment: Alignment.center,
                    height: 35.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: navyBlueColor,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Text(
                      "<< Go Back",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                      ),
                    )),
                InkWell( 
                  onTap: (){
                    Get.to(EmailVerificationOptionalInfo()); 
                  },
                  child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 15.w),
                      height: 35.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          color: navyBlueColor,
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Text(
                        "NEXT >>",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                        ),
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

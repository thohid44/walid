import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:triptask/Email_Verify/view/email_verification.dart';
import 'package:triptask/Utils/colors.dart';
import 'package:triptask/Widget/customText.dart';
import 'package:triptask/pages/Ship/views/shipPage.dart';
import 'package:triptask/pages/TripPages/views/trip_page.dart';
import 'package:triptask/profile/view/main_profile_page.dart';
import 'package:triptask/profile/view/user_deshboard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            // ignore: prefer_const_constructors
            appBar: customAppBar(),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 80.h,
                    alignment: Alignment.center,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: navyBlueColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.r),
                          topRight: Radius.circular(30.r),
                        )),
                    child: InkWell(
                      onTap: () {
                    
                      },
                      child: Row(
                        children: [
                          Container(
                              alignment: Alignment.center,
                              height: 50.h,
                              width: 70.w,
                              child: Icon(
                                Icons.person,
                                size: 60.h,
                                color: white,
                              )),
                          GestureDetector(
                            onTap: (){
                              Get.to(UserDeshBoard()); 
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 110.w,
                                  child: CustomText("Zakir Hossain", white,
                                      FontWeight.w500, 13.sp),
                                ),
                                Container(
                                  width: 110.w,
                                  child: CustomText("Acct: 123456", white,
                                      FontWeight.w500, 13.sp),
                                )
                              ],
                            ),
                          ),
                          Container(
                              width: 160.w,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 5.h),
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(right: 15.w),
                              height: 40.h,
                              decoration: BoxDecoration(
                                  color: lightNavyColor,
                                  borderRadius: BorderRadius.circular(30.r)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: navyBlueColor,
                                    child: CustomText(
                                        "\$", white, FontWeight.bold, 13.sp),
                                  ),
                                  CustomText(
                                    "Tab For Balance",
                                    white,
                                    FontWeight.w400,
                                    13.sp,
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 40.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                            color: tealColor,
                            borderRadius: BorderRadius.circular(15.r)),
                        child: InkWell(
                            onTap: () {
                              Get.to(TripPage());
                            },
                            child: CustomText(
                                "Trip", Colors.white, FontWeight.w600, 17.sp)),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 40.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                            color: tealColor,
                            borderRadius: BorderRadius.circular(15.r)),
                        child: InkWell(
                            onTap: () {
                              Get.to(ShipHomePage());
                            },
                            child: CustomText(
                                "Ship", Colors.white, FontWeight.w600, 17.sp)),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 40.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                            color: tealColor,
                            borderRadius: BorderRadius.circular(15.r)),
                        child: InkWell(
                            child: CustomText(
                                "Task", Colors.white, FontWeight.w600, 17.sp)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 150.h,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.w),
                            padding: EdgeInsets.only(top: 15.h, bottom: 10.h),
                            height: 140.h,
                            width: 250.w,
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 60.w,
                                  height: 100.h,
                                  child: Image.asset(
                                    "assets/man.png",
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: CustomText(
                                          "Check Shipping Content",
                                          Colors.black,
                                          FontWeight.w700,
                                          13.sp),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Container(
                                      child: CustomText("Always check & carry",
                                          Colors.black, FontWeight.w300, 13.sp),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Container(
                                      child: CustomText(
                                          "open items and legal items",
                                          Colors.black,
                                          FontWeight.w300,
                                          13.sp),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Container(
                                      child: CustomText(
                                          "Avoid risks & stay safe",
                                          Colors.black,
                                          FontWeight.w300,
                                          13.sp),
                                    )
                                  ],
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 200.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 4,
                          child: Container(
                            width: 290.w,
                            padding: EdgeInsets.all(8.w),
                            decoration: const BoxDecoration(),
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 150.w,
                                        padding: EdgeInsets.only(
                                            left: 7.w,
                                            right: 7.w,
                                            top: 7.h,
                                            bottom: 7.h),
                                        decoration: BoxDecoration(
                                            color: navyBlueColor,
                                            borderRadius:
                                                BorderRadius.circular(10.r)),
                                        child: Text(
                                          "Want to give a ride & make money?",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w700,
                                              color: white),
                                        ),
                                      ),
                                      Container(
                                          width: 100.w,
                                          height: 50.h,
                                          child: Image.asset(
                                            "assets/trip.png",
                                          )),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Stack(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 190.w,
                                          child: Text(
                                            "Post your destination & choose passengers who are headed the same direction",
                                            style: TextStyle(fontSize: 11.sp),
                                          ),
                                        ),
                                        Image.asset("assets/mobile.jpg")
                                      ],
                                    ),
                                    Positioned(
                                        bottom: 10.h,
                                        child: Container(
                                          child: Text(
                                            "Give a ride and make money.",
                                            style: TextStyle(fontSize: 11.sp),
                                          ),
                                        )),
                                    Positioned(
                                        right: 15.w,
                                        bottom: 0.h,
                                        child: Container(
                                            height: 40.h,
                                            child:
                                                Image.asset("assets/car.png"))),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                      height: 50.h,
                      margin: EdgeInsets.symmetric(horizontal: 20.w),
                      padding: EdgeInsets.only(
                        left: 30.w,
                        top: 20.h,
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.r),
                              bottomRight: Radius.circular(10.r))),
                      child: CustomText(
                        "New offers",
                        skyColor,
                        FontWeight.bold,
                        20.sp,
                      )),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 0),
                    decoration: BoxDecoration(color: primaryColor),
                    child: Text(
                      "- - - - - - - - - - - - - - - - - - - - - - -",
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.w),
                    padding: EdgeInsets.only(left: 15.w, bottom: 15.h),
                    decoration: BoxDecoration(color: primaryColor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 100.w,
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: navyBlueColor,
                                    shape: BoxShape.circle),
                                child: FaIcon(
                                  FontAwesomeIcons.camera,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Container(
                                  child: Text(
                                "New Account Bonus",
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ))
                            ],
                          ),
                        ),
                        Container(
                          width: 100.w,
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 60,
                                width: 60,
                                decoration: const BoxDecoration(
                                    color: navyBlueColor,
                                    shape: BoxShape.circle),
                                child: const FaIcon(
                                  FontAwesomeIcons.camera,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Container(
                                  child: Text(
                                "Rafferal Bonus",
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ))
                            ],
                          ),
                        ),
                        Container(
                          width: 100.w,
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: navyBlueColor,
                                    shape: BoxShape.circle),
                                child: FaIcon(
                                  FontAwesomeIcons.camera,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Container(
                                  child: Text(
                                "Frequent User Bonus",
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ))
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )));
  }

  AppBar customAppBar() {
    return AppBar(
      elevation: 0,
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
    );
  }
}

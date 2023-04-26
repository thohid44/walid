import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:triptask/Utils/colors.dart';
import 'package:triptask/Widget/customText.dart';
import 'package:triptask/pages/Task/views/task_home_page.dart';
import 'package:triptask/pages/TripPages/views/trip_page.dart';

import '../pages/Ship/views/shipPage.dart';

class TripShipTaskBar extends StatelessWidget {
  const TripShipTaskBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          alignment: Alignment.center,
          height: 30.h,
          width: 110.w,
          decoration: BoxDecoration(
              color: tealColor, borderRadius: BorderRadius.circular(5.r)),
          child: InkWell(
              onTap: () {
                Get.to(TripPage());
              },
              child: CustomText("Trip", Colors.white, FontWeight.w600, 17.sp)),
        ),
        Container(
          alignment: Alignment.center,
          height: 30.h,
          width: 110.w,
          decoration: BoxDecoration(
              color: tealColor, borderRadius: BorderRadius.circular(5.r)),
          child: InkWell(
              onTap: () {
                Get.to(ShipHomePage());
              },
              child: CustomText("Ship", Colors.white, FontWeight.w600, 17.sp)),
        ),
        Container(
          alignment: Alignment.center,
          height: 30.h,
          width: 110.w,
          decoration: BoxDecoration(
              color: tealColor, borderRadius: BorderRadius.circular(5.r)),
          child: InkWell(
              onTap: () {
                Get.to(TaskHomePage());
              },
              child: CustomText("Task", Colors.white, FontWeight.w600, 17.sp)),
        )
      ],
    );
  }
}

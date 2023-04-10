
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:triptask/Utils/colors.dart';
import 'package:triptask/Widget/customButtonOne.dart';
import 'package:triptask/pages/TripPages/views/trip_page.dart';

class GiveARide extends StatelessWidget {
  final TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            children: [
              Container(
                  width: 150.w,
                  height: 35.h,
                  child: CustomForm(
                    hinttext: "Start Point",
                    radius: 5.r,
                    textController: search,
                  )),
              SizedBox(
                width: 10.w,
              ),
              Container(
                  width: 80.w,
                  height: 35.h,
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
                  child: CustomForm(
                    hinttext: "km",
                    radius: 5.r,
                    textController: search,
                  ))
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            children: [
              Container(
                  width: 150.w,
                  height: 35.h,
                  alignment: Alignment.center,
                  child: CustomForm(
                    hinttext: "Destination ",
                    radius: 5.r,
                    textController: search,
                  )),
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
          height: 20.h,
        ),
        Container(
          height: 40.h,
          width: 150.w,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          decoration: BoxDecoration(
            color: navyBlueColor,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Row(
            children: [
              const Icon(
                Icons.search,
                color: Colors.white,
              ),
              SizedBox(
                width: 15.w,
              ),
              Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Search",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 15.sp,
                    ),
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        CustomButtonOne(
          title: "Clear Search",
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

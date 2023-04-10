import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:triptask/Widget/customText.dart';

class TripTaskPost extends StatelessWidget {
  const TripTaskPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(itemBuilder: (context, index) {
        return Container(
          child: Row(
            children: [
              Container(
                child: Column(
                  children: [
                    CustomText("Start Point: Rajshahi",
                     Colors.black, FontWeight.w600, 13.sp), 
                     
                  ],
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}

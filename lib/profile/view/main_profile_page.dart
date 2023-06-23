import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:triptask/pages/Ship/views/shipPage.dart';

class MainProfilePage extends StatefulWidget {
  const MainProfilePage({super.key});

  @override
  State<MainProfilePage> createState() => _MainProfilePageState();
}

class _MainProfilePageState extends State<MainProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(),


        body: ListView(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h, bottom: 10.h),
                      alignment: Alignment.center,
                    
                    
                      decoration: BoxDecoration(color: Colors.deepOrange),
                      child: Text(
                        "Posted Trip",
                        style: TextStyle(color: Colors.white, fontSize: 14.sp , fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Container(
                        padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h, bottom: 10.h),
                      alignment: Alignment.center,
                    
                    
                      decoration: BoxDecoration(color: Colors.deepOrange),
                      child: Text(
                        "Seeked Trips",
                         style: TextStyle(color: Colors.white, fontSize: 14.sp , fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        index = 2;
                      });
                    },
                    child: Container(
                        padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h, bottom: 10.h),
                      alignment: Alignment.center,
                      
                   
                      decoration: BoxDecoration(color: Colors.deepOrange),
                      child: Text(
                        "Completed Trips",
                         style: TextStyle(color: Colors.white, fontSize: 14.sp , fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
             SizedBox(
              height: 10.h,
            ),
            Container(
              height: 500.h,
              child: items[index],
            )
          ],
        ));
  }

  int index = 0;
  List<Widget> items = [
    Container(
      height: 400.h,
   
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
        return ListTile(
          title: Text("This is Title number $index"),
        );
      }),
    ),
    Container(
      height: 400.h,
    
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
        return ListTile(
          title: Text("This is Title number $index"),
        );
      }),
    ),
     Container(
      height: 400.h,
   
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
        return ListTile(
          title: Text("This is Title number $index"),
        );
      }),
    )
  ];
}

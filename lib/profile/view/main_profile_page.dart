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
      appBar:customAppBar(),

    // List<EdTrip>? seekedTrips;
    // List<EdTrip>? completedTrips;
      body: DefaultTabController(length: 3, 
      child: Column(
        children: [Material(
          child: Container(
            height: 50.h, 
            color: Colors.white, 
            child: TabBar(
             
             tabs: [],
            ),

          ),
        )],
      ),)
    );
  }
}
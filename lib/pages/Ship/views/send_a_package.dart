

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:triptask/Utils/colors.dart';
import 'package:triptask/Widget/customButtonOne.dart';
import 'package:triptask/pages/TripPages/views/trip_page.dart';

class SendAPackage extends StatefulWidget {
  @override
  State<SendAPackage> createState() => _SendAPackageState();
}

class _SendAPackageState extends State<SendAPackage> {
  final TextEditingController search = TextEditingController();

  List<DropdownMenuItem<String>> get vehicleItem {
    List<DropdownMenuItem<String>> destination = [
      const DropdownMenuItem(
          child: Text("Perferred delivery date"), value: "Perferred delivery date"),
     
    ];
    return destination;
  }

  String vehicle = "Perferred delivery date";

  List<DropdownMenuItem<String>> get deliveryTimes {
    List<DropdownMenuItem<String>> destination = [
      const DropdownMenuItem(
          child: Text("Perferred delivery time"), value: "Perferred delivery time"),
      
    ];
    return destination;
  }

  String deliveryTime = "Perferred delivery time";

  List<DropdownMenuItem<String>> get typeOfGoods {
    List<DropdownMenuItem<String>> destination = [
      const DropdownMenuItem(
          child: Text("Type of goods"),
          value: "Type of goods"),
      const DropdownMenuItem(child: Text("1"), value: "1"),
    ];
    return destination;
  }

  String typeGood = "Type of goods";

   List<DropdownMenuItem<String>> get packageTypes {
    List<DropdownMenuItem<String>> destination = [
      const DropdownMenuItem(
          child: Text("Packaging type"),
          value: "Packaging type"),
      
    ];
    return destination;
  }

  String packageType = "Packaging type";

  List<DropdownMenuItem<String>> get weightOfPackages {
    List<DropdownMenuItem<String>> destination = [
      const DropdownMenuItem(
          child: Text("KG"),
          value: "KG"),
      
    ];
    return destination;
  }

  String weightOfPackage = "KG";

  List<DropdownMenuItem<String>> get willingPay {
    List<DropdownMenuItem<String>> destination = [
      const DropdownMenuItem(child: Text("USD"), value: "USD"),
      const DropdownMenuItem(child: Text("BD"), value: "BD"),
    ];
    return destination;
  }

  String willing = "USD";

final TextEditingController pickup = TextEditingController(); 

final TextEditingController dateData= TextEditingController(); 

final TextEditingController timeData = TextEditingController(); 

final TextEditingController dropOff= TextEditingController(); 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 5.h,
        ),
        Container(
            width: 320.w,
            height: 35.h,
            child: CustomForm(
            
              hinttext: "Pick Up",
              radius: 5.r,
              textController: pickup,
            )),
        SizedBox(
          height: 5.h,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                 Container(width: 160.w, height: 45.h, child: _buildDatePicker()),
           
                  InkWell(
                    onTap: _showTimePicker,
                    child: Container(
                      alignment: Alignment.center,
                      width: 160.w, height: 45.h, child:_timeOfDay !=null?Text(_timeOfDay!.format(context).toString()): Text("Select Time"),)),
            ],
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Container(
            width: 320.w,
            height: 35.h,
            alignment: Alignment.center,
            child: CustomForm(
              hinttext: "Drop Off ",
              radius: 5.r,
              textController: dropOff,
            )),
        SizedBox(
          height: 5.h,
        ),
        Container(
          color: Colors.grey,
          height: 150,
          width: 320.w,
        ),
        SizedBox(
          height: 5.h,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                height: 35.h,
                width: 155.w,
                decoration: BoxDecoration(
                    border: Border.all(width: 1.w, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10.r)),
                child: DropdownButton(
                  underline: SizedBox(),
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  value: vehicle,
                  onChanged: (value) {},
                  items: vehicleItem,
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              InkWell(
                onTap: _deliveryTimePicker,
                child: Container(
                  alignment: Alignment.center,
                  height: 35.h,
                  width: 155.w,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.w, color: Colors.grey),
                      borderRadius: BorderRadius.circular(10.r)),
                  // ignore: unnecessary_null_comparison
                  child: delivaryTime !=null ? Text(delivaryTime!.format(context).toString()):  Text("Perferred delivery time" ,style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),)
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
           
              SizedBox(
                width: 5.w,
              ),
              Card(
                child: Container(
                  height: 35.h,
                  width: 80.w,
                  alignment: Alignment.center,
                  child: Text(
                    "willing to pay",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              Card(
                child: Container(
                  alignment: Alignment.center,
                  height: 30.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.w, color: Colors.grey),
                      borderRadius: BorderRadius.circular(10.r)),
                  child: DropdownButton(
                    underline: SizedBox(),
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    value: willing,
                    onChanged: (value) {},
                    items: willingPay,
                  ),
                ),
              ),
                Container(
            width: 150.w,
            height: 35.h,
            alignment: Alignment.center,
            child: CustomForm(
              hinttext: "What are you sending? ",
              radius: 5.r,
              textController: search,
            )),
            ],
          ),
        ),
         SizedBox(
          height: 5.h,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                height: 35.h,
                width: 155.w,
                decoration: BoxDecoration(
                    border: Border.all(width: 1.w, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10.r)),
                child: DropdownButton(
                  underline: SizedBox(),
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  value: typeGood,
                  onChanged: (value) {},
                  items: typeOfGoods,
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Container(
            width: 150.w,
            height: 35.h,
            alignment: Alignment.center,
            child: CustomForm(
              hinttext: "Approx value of the goods? ",
              radius: 5.r,
              textController: search,
            )),
            ],
          ),
        ),
       
          SizedBox(
          height: 5.h,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
           
                 Container(
                alignment: Alignment.center,
                height: 35.h,
                width: 140.w,
                decoration: BoxDecoration(
                    border: Border.all(width: 1.w, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10.r)),
                child: DropdownButton(
                  underline: SizedBox(),
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  value: packageType,
                  onChanged: (value) {},
                  items: packageTypes,
                ),
              ),
              Card(
                child: Container(
                  height: 35.h,
                  width: 100.w,
                  alignment: Alignment.center,
                  child: Text(
                    "Weight of package",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
              ),
              Card(
                child: Container(
                  alignment: Alignment.center,
                  height: 30.h,
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  width: 45.w,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.w, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5.r)),
                  child: DropdownButton(
                    underline: SizedBox(),
                    isExpanded: true,
                    style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    value: weightOfPackage,
                    onChanged: (value) {},
                    items: weightOfPackages,
                  ),
                ),
              ),
                
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Note",
              border: OutlineInputBorder(),
            ),
            maxLines: 3,
          ),
        ),
        SizedBox(
          height: 5.h,
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

   

  DateTime selectedDate = DateTime.now();


  late String date;

  late String weekDay;

  Widget _buildDatePicker() {
    return TextFormField(
        controller: dateData,
        readOnly: true,
        textAlign: TextAlign.center,
        decoration:  InputDecoration(
          contentPadding: EdgeInsets.all(8.0),
          suffixIcon:const Icon(
            Icons.date_range,
            color: Colors.black,
          ),
          hintText: "Select date",
          hintMaxLines: 1,
          hintStyle: TextStyle(fontSize: 15.0),
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
        ),
        onTap: () async {
          final pickedDate = await selectDate(
              context: context,
              initialDate: selectedDate,
              allowedDays: _allowedDays);
          if (pickedDate != null && pickedDate != selectedDate) {
            setState(() {
              selectedDate = pickedDate;
              dateData.text =
                  DateFormat('yyyy-MM-dd').format(selectedDate);
              print("thohid ${dateData.text}");
            });
          }
        });
  }

  bool _allowedDays(DateTime day) {
    if ((day.isBefore(DateTime.now()))) {
      return true;
    }
    return false;
  }

  selectDate(
      {required BuildContext context,
      required DateTime initialDate,
      required allowedDays}) async {
    final selected = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(2010),
      lastDate: DateTime(2025),
      selectableDayPredicate: allowedDays,
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(),
            ),
          ),
          child: child!,
        );
      },
    );
    return selected;
  }

  TimeOfDay? _timeOfDay;
  void _showTimePicker() async{
    showTimePicker(context: context, initialTime: TimeOfDay.now()).then((value) {
      setState(() {
        _timeOfDay = value!;
      });
    });
  }
    TimeOfDay? delivaryTime;
  void _deliveryTimePicker() async{
    showTimePicker(context: context, initialTime: TimeOfDay.now()).then((value) {
      setState(() {
        delivaryTime = value!;
      });
    });
  }
    
}

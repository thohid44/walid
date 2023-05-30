import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:triptask/Utils/colors.dart';
import 'package:triptask/Widget/customButtonOne.dart';
import 'package:triptask/pages/TripPages/views/trip_page.dart';

import '../controller/carry_package_controller.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
class CarryAPackage extends StatefulWidget {

  @override
  State<CarryAPackage> createState() => _CarryAPackageState();
}

class _CarryAPackageState extends State<CarryAPackage> {
  var controller = Get.put(CarryPackageController());

  final TextEditingController search = TextEditingController();

    final TextEditingController pickup = TextEditingController();

    final TextEditingController note = TextEditingController();

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

  String willpay = "USD";

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
              textController: search,
            )),
       
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
          //      child:  _buildDatePicker()
          child: SfDateRangePicker(
    selectableDayPredicate: (DateTime dateTime) {
      if (dateTime == DateTime(2021, 9, 5)) {
        return false;
      }
      return true;
    },
  ),

              ),
              SizedBox(
                width: 5.w,
              ),
              Container(
                alignment: Alignment.center,
                height: 35.h,
                width: 155.w,
                decoration: BoxDecoration(
                    border: Border.all(width: 1.w, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10.r)),
                
                
              ),
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
              hinttext: "Preferred Drop Off(Optional) ",
              radius: 5.r,
              textController: search,
            )),
        SizedBox(height: 5.h,), 
        Container(
          color: Colors.grey,
          height: 200,
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
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                  value: vehicle,
                  onChanged: (value) {},
                  items: vehicleItem,
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
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
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                  value: deliveryTime,
                  onChanged: (value) {},
                  items: deliveryTimes,
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
                  width: 90.w,
                  alignment: Alignment.center,
                  child: Text(
                    "Asking amount",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.normal,
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
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                    value: willpay,
                    onChanged: (value) {
                      willpay = value!; 
                      print(willpay); 
                    },
                    items: willingPay,
                  ),
                ),
              ),
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
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                  value: deliveryTime,
                  onChanged: (value) {},
                  items: deliveryTimes,
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
           
                 Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                height: 35.h,
                width: 320.w,
                decoration: BoxDecoration(
                    border: Border.all(width: 1.w, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10.r)),
                child: DropdownButton(
                  isExpanded: true,
                  underline: SizedBox(),
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                  value: packageType,
                  onChanged: (value) {
                    packageType = value!;
                    print(packageType);
                  },
                  items: packageTypes,
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
          child: TextFormField(
            controller: note,
            decoration: InputDecoration(
              hintText: "Note",
              border: OutlineInputBorder(),
            ),
            maxLines: 3,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        CustomButtonOne(
          title: "Sumbit",
          onTab: () {
            print(pickDate); 
            print(deliveryDate); 
          //  controller.carryPackage();
          },
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
final TextEditingController pickDate = TextEditingController(); 
final TextEditingController deliveryDate = TextEditingController(); 
  Widget _buildDatePicker() {
    return TextFormField(
        controller: pickDate,
        readOnly: true,
        textAlign: TextAlign.center,
        decoration:  const InputDecoration(
          contentPadding: EdgeInsets.all(8.0),
          suffixIcon: Icon(
            Icons.date_range,
            color: Colors.black,
          ),
          hintText: "Preferred delivery date",
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
              pickDate.text =
                  DateFormat('yyyy-MM-dd').format(selectedDate);
              print("thohid ${pickDate.text}");
            });
          }
        });
  }

Widget _buildPreperDeliveryDatePicker() {
    return TextFormField(
        controller: deliveryDate,
        readOnly: true,
        textAlign: TextAlign.center,
        decoration:  const InputDecoration(
          contentPadding: EdgeInsets.all(8.0),
          suffixIcon: Icon(
            Icons.date_range,
            color: Colors.black,
          ),
          hintText: "Perferred delivery date",
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
            
             deliveryDate.text =
                  DateFormat('yyyy-MM-dd').format(pickedDate);
              print("thohid ${deliveryDate.text}");
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
       DateTime? initialDate,
      required allowedDays}) async {
    final selected = await showDatePicker(
      context: context,
      initialDate: initialDate!,
      firstDate: DateTime(2010),
      lastDate: DateTime(2029),
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

 var pickupTime;

  void _showTimePicker() async{
    showTimePicker(context: context, initialTime: TimeOfDay.now()).then((value) {
      setState(() {
        print(value);
        pickupTime = value;
        print(pickupTime);
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

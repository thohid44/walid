import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String? title;
  Color? color;
  FontWeight? fontWeight;
  dynamic size = 0;
  CustomText(this.title, this.color, this.fontWeight, this.size); 
  @override
  Widget build(BuildContext context) {
    return Text(
      title!.toString(),
      style: TextStyle(color: color??Colors.black, fontWeight: fontWeight, fontSize: size),
    );
  }
}

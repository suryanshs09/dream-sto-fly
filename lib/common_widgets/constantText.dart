import 'package:flutter/material.dart';

class ConstantText{

  static Text constantText({required String text, bool bold = false}){
    return Text(text,style: TextStyle(color: Colors.black87,fontWeight: (bold)?FontWeight.bold:FontWeight.normal,fontSize: 14),);
  }

  static Text heading1({required String text, bool bold = false}){
    return Text(text,style: TextStyle(color: Colors.black87,fontWeight: (bold)?FontWeight.bold:FontWeight.normal,fontSize: 16),);
  }
  static Text heading2({required String text, bool bold = false}){
    return Text(text,style: TextStyle(color: Colors.black87,fontWeight: (bold)?FontWeight.bold:FontWeight.normal,fontSize: 14),);
  }
  static Text genericText({required String text, bool bold = false,double fontSize =12 }){
    return Text(text,textAlign: TextAlign.center,style: TextStyle(color: Colors.black87,fontWeight: (bold)?FontWeight.bold:FontWeight.normal,fontSize: fontSize),);
  }
}
import '/utils/dimentions.dart';
import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  bool bold;
  int maxLines;

  BigText(
      {super.key,
        this.bold= false,
      this.color = const Color(0xFFFFFFEE),
      required this.text,
      this.overflow = TextOverflow.ellipsis,
      this.size=0,this.maxLines=1});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
        fontSize: size==0? Dimensions.font24:size,
        color: color,
        fontFamily: 'lato',
        fontWeight:bold?FontWeight.bold: FontWeight.w400,


      ),
    );
  }
}
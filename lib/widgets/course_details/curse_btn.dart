import 'package:flutter/material.dart';

class CourseBtn extends StatelessWidget {
  const CourseBtn(
      {Key? key,
      required this.text,
      required this.color,
      required this.borderColor,
      required this.textColor})
      : super(key: key);

  final String text;
  final Color color;
  final Color textColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}

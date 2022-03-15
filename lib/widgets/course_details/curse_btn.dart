import 'package:flutter/material.dart';

class CourseBtn extends StatelessWidget {
  const CourseBtn({Key? key, required this.text, required this.color})
      : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Center(
        child: Text(text),
      ),
    );
  }
}

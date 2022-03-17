import 'package:flutter/material.dart';
import 'package:mahdinaghikhani/theme/constant.dart';

class TextDetailTitle extends StatelessWidget {
  const TextDetailTitle({Key? key, required this.about, required this.detail})
      : super(key: key);
  final String about;
  final String detail;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            about,
            style: const TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 14,
            ),
          ),
          const Spacer(),
          Text(detail,
              textAlign: TextAlign.right,
              style: const TextStyle(
                  fontSize: 14,
                  fontFamily: Constans.iranYekan,
                  color: lightblack)),
        ],
      ),
    );
  }
}

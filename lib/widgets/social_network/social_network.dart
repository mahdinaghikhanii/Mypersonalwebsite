import 'package:flutter/material.dart';
import 'package:mahdinaghikhani/theme/constant.dart';

class SocialNetwork extends StatelessWidget {
  const SocialNetwork(
      {Key? key, required this.logo, required this.text, required this.ontap})
      : super(key: key);
  final String text;
  final String logo;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Row(
        children: [
          Text(text),
          const SizedBox(
            width: 8,
          ),
          Container(
              width: 30,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: kblue, borderRadius: BorderRadius.circular(20)),
              child: Image.asset(logo))
        ],
      ),
    );
  }
}

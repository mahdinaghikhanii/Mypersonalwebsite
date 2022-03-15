// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:mahdinaghikhani/theme/constant.dart';

class NavigationBars extends StatelessWidget {
  const NavigationBars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              height: 50,
              width: 180,
              child: Center(
                  child: RichText(
                      text: const TextSpan(children: [
                const TextSpan(
                    text: "MAHD",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                const TextSpan(
                    text: 'i',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: kblue))
              ])))),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const _NavBarItem(title: "MahdiNaghikhani"),
              const SizedBox(
                width: 60,
              ),
              const _NavBarItem(title: "about"),
              const SizedBox(
                width: 60,
              ),
              Container(
                  width: 120,
                  height: 50,
                  decoration: BoxDecoration(
                      color: kblue, borderRadius: BorderRadius.circular(30)),
                  child: const Center(
                      child: Text(
                    // ignore: unnecessary_string_escapes
                    "Let\'s Talk",
                    style: TextStyle(
                      color: kwhite,
                      fontSize: 14,
                    ),
                  ))),
            ],
          )
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem({required this.title});
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(),
    );
  }
}

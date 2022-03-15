// ignore_for_file: unnecessary_const, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mahdinaghikhani/theme/constant.dart';
import 'package:url_launcher/url_launcher.dart';

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
              height: 70,
              width: 250,
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/logo/flutter.svg',
                    width: 40,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Center(
                      child: RichText(
                          text: const TextSpan(children: [
                    const TextSpan(
                        text: "Mahdi naghikhan",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    const TextSpan(
                        text: 'i',
                        style: TextStyle(
                            fontFamily: "IranYekan",
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: kblue))
                  ]))),
                ],
              )),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _NavBarItem(
                title: "Discourd",
              ),
              const SizedBox(
                width: 30,
              ),
              _NavBarItem(
                title: "Whatss app",
              ),
              const SizedBox(
                width: 30,
              ),
              _NavBarItem(title: "Telegeram"),
              const SizedBox(
                width: 30,
              ),
              InkWell(
                highlightColor: kblue,
                borderRadius: BorderRadius.circular(5),
                onTap: () async =>
                    await launch('https://github.com/mahdinaghikhanii'),
                child: ((Container(
                    width: 120,
                    height: 45,
                    decoration: BoxDecoration(
                        color: kblue, borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                        child: Text(
                      // ignore: unnecessary_string_escapes
                      "View Github",
                      style: TextStyle(
                        fontFamily: Constans.iranYekan,
                        color: kwhite,
                        fontSize: 14,
                      ),
                    ))))),
              ),
            ],
          )
        ],
      ),
    );
  }
}

// ignore: unused_element
class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem({required this.title});
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 14,
        color: Colors.black,
        fontFamily: Constans.iranYekan,
      ),
    );
  }
}

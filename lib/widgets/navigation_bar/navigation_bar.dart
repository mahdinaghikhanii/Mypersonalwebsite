// ignore_for_file: unnecessary_const, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mahdinaghikhani/generated/l10n.dart';
import 'package:mahdinaghikhani/theme/constant.dart';
import 'package:mahdinaghikhani/widgets/button_dropdown/button_dropdown.dart';

import 'package:url_launcher/url_launcher_string.dart';

class NavigationBars extends StatelessWidget {
  const NavigationBars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localtext = S.of(context);
    return SizedBox(
      //  height: 110,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              height: 70,
              width: 250,
              child: Row(
                children: [
                  /*  SvgPicture.asset(
                    'assets/logo/flutter.svg',
                    width: 40,
                  ),*/
                  const SizedBox(
                    width: 5,
                  ),
                  Center(
                      child: Text(localtext.home_mahdinaghkhani,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20))),
                  SizedBox(
                    width: 20,
                  ),
                  ButtonDropDown()
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
                onTap: () async => await launchUrlString(
                    'https://github.com/mahdinaghikhanii'),
                child: ((Container(
                    width: 60,
                    height: 45,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: SvgPicture.asset('assets/logo/github.svg'),
                    )))),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  const MobileNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textlocal = S.of(context);
    return SafeArea(
      child: SizedBox(
        height: 70,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    height: 70,
                    width: 250,
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/logo/flutter.svg',
                          width: 30,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Center(
                            child: Text(textlocal.home_mahdinaghkhani,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black))),
                      ],
                    )),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    InkWell(
                      highlightColor: kblue,
                      borderRadius: BorderRadius.circular(5),
                      onTap: () async => await launchUrlString(
                          'https://github.com/mahdinaghikhanii'),
                      child: ((Container(
                          width: 44,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: SvgPicture.asset('assets/logo/github.svg'),
                          )))),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
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
    return InkWell(
      highlightColor: kblue,
      borderRadius: BorderRadius.circular(5),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.black,
          fontFamily: Constans.iranYekan,
        ),
      ),
    );
  }
}

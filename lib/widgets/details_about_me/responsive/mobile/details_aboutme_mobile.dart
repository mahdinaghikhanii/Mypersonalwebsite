// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:mahdinaghikhani/theme/constant.dart';

class DetailsAboutMeMobile extends StatelessWidget {
  const DetailsAboutMeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Container(
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20)),
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        height: 199,
                        width: 235,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: mediomBlue,
                        ),
                        child: Image.asset(
                          'assets/img/mahdi.png',
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text("About",
                            style: TextStyle(
                                fontFamily: Constans.iranYekan,
                                fontWeight: FontWeight.w600,
                                fontSize: 30)),
                        const Text("Me",
                            // ignore: unnecessary_const
                            style: const TextStyle(
                                color: lightblack,
                                fontFamily: Constans.iranYekan,
                                fontWeight: FontWeight.w800,
                                fontSize: 30))
                      ],
                    )
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'mahdi an Expert Flutter Developer at your service.\nI am an expert flutter developer & I can definitely\nhelp you get your App up & running on the Appstore.\nI am dedicated, enthusiastic & focused on my work\nin order to satisfy you & fulfill your needs.',
                            style: TextStyle(
                                color: lightblack, fontSize: 13, height: 2),
                          )
                        ],
                      )
                    ]),
              ],
            )));
  }
}

// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:mahdinaghikhani/theme/constant.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../curse_btn.dart';

class MobileDetailsWelcome extends StatelessWidget {
  const MobileDetailsWelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              color: klightBlue, borderRadius: BorderRadius.circular(20)),
          width: size.width * 0.90,
          height: 300,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Hello I am Mahdi !',
                        style: TextStyle(
                            color: kblue,
                            fontWeight: FontWeight.w800,
                            height: 0.9,
                            fontSize: 20),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                            text: "I'm ",
                            style: TextStyle(
                                height: 0.9, fontSize: 28, color: lightblack)),
                        TextSpan(
                          text: "Flutter Developer",
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              height: 0.9,
                              fontSize: 28,
                              color: Colors.black),
                        )
                      ])),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'A freelance mobile app developer',
                        style:
                            TextStyle(fontSize: 18, height: 1.7, color: kblack),
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      Row(
                        children: [
                          CourseBtn(
                            text: "Hire me !",
                            color: kblue,
                            textColor: kwhite,
                            borderColor: kblue,
                            ontap: () async {},
                          ),
                          const SizedBox(
                            width: 18,
                          ),
                          CourseBtn(
                            text: "My Linkdin",
                            color: klightBlue,
                            borderColor: grey,
                            textColor: grey,
                            ontap: () async {
                              await launch("https://www.linkedin.com/feed/");
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

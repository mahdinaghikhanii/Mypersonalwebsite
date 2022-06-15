// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:mahdinaghikhani/mudole/extension.dart';
import 'package:mahdinaghikhani/theme/constant.dart';
import 'package:mahdinaghikhani/widgets/details_welcome/curse_btn.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DesktopCourseDetails extends StatelessWidget {
  const DesktopCourseDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              color: klightBlue, borderRadius: BorderRadius.circular(20)),
          width: context.withs * 0.99,
          height: 500,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Hello!',
                    style: TextStyle(
                        color: kblue,
                        fontWeight: FontWeight.w800,
                        height: 0.9,
                        fontSize: 25),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                        text: "I'm ",
                        style: TextStyle(
                            height: 0.9, fontSize: 50, color: lightblack)),
                    TextSpan(
                      text: "Flutter Developer",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          height: 0.9,
                          fontSize: 50,
                          color: Colors.black),
                    )
                  ])),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'A freelance mobile app developer',
                    style: TextStyle(fontSize: 25, height: 1.7, color: kblack),
                  ),
                  const SizedBox(
                    height: 30,
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
                        width: 20,
                      ),
                      CourseBtn(
                        text: "My Linkdin",
                        color: klightBlue,
                        borderColor: grey,
                        textColor: grey,
                        ontap: () async {
                          await launchUrlString(
                              "https://www.linkedin.com/feed/");
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
            Center(
              child: SizedBox(
                  height: 502,
                  width: 600,
                  child: Center(
                      child: Image.asset(
                    'assets/img/mahdi.png',
                    width: context.withs,
                    height: context.heights,
                    fit: BoxFit.fill,
                  ))),
            )
          ]),
        ),
      ),
    );
  }
}

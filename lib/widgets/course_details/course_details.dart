// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mahdinaghikhani/theme/constant.dart';
import 'package:mahdinaghikhani/widgets/course_details/curse_btn.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              color: klightBlue, borderRadius: BorderRadius.circular(20)),
          width: size.width * 0.99,
          height: 500,
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.all(90.0),
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
                      text: TextSpan(children: [
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
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CourseBtn(
                        text: "My Linkdin",
                        color: klightBlue,
                        borderColor: grey,
                        textColor: grey,
                      )
                    ],
                  )
                ],
              ),
            ),
            const Spacer(),
            Center(
              child: SizedBox(
                  height: 500,
                  width: 600,
                  child: Center(
                      child: Image.asset(
                    'assets/img/mahdi.png',
                    width: size.width,
                    height: size.height,
                    fit: BoxFit.fill,
                  ))),
            )
          ]),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mahdinaghikhani/theme/constant.dart';
import 'package:mahdinaghikhani/widgets/centered_view/centered_view.dart';
import 'package:mahdinaghikhani/widgets/course_details/curse_btn.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  const Text(
                    'Hello!',
                    style: TextStyle(
                        color: kblue,
                        fontWeight: FontWeight.w800,
                        height: 0.9,
                        fontSize: 30),
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
                    height: 30,
                  ),
                  const Text(
                    'A freelance mobile app developer',
                    style: TextStyle(fontSize: 25, height: 1.7, color: kblack),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      CourseBtn(
                        text: "Hire me",
                        color: kblue,
                      ),
                      CourseBtn(
                        text: "Hire me",
                        color: kblue,
                      )
                    ],
                  )
                ],
              ),
            ),
            Spacer(),
            Center(
              child: Container(
                  height: 480,
                  width: 590,
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

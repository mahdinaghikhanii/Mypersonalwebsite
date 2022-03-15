import 'package:flutter/material.dart';
import 'package:mahdinaghikhani/theme/constant.dart';
import 'package:mahdinaghikhani/widgets/centered_view/centered_view.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              color: klightBlue, borderRadius: BorderRadius.circular(20)),
          width: size.width * 0.99,
          height: 500,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                Text(
                  'Hello!',
                  style: TextStyle(
                      color: kblue,
                      fontWeight: FontWeight.w800,
                      height: 0.9,
                      fontSize: 40),
                ),
                SizedBox(
                  height: 30,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "I\'m ",
                      style: TextStyle(height: 0.9, fontSize: 50)),
                  const TextSpan(
                    text: "Flutter Developer",
                    style: TextStyle(
                        fontWeight: FontWeight.w800, height: 0.9, fontSize: 50),
                  )
                ])),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'dsajdhsa sdj shsj j dsjh sjdjs hdjs jshdj shjdsh jsdjs hjsh jsjd j,dsjdhsjdhsjdhsjdsdhsjdjsdhsjdhsj, djjs h jds jksj sj',
                  style: TextStyle(fontSize: 21, height: 1.7),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

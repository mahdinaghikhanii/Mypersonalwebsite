import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          const Text(
            "MY PERSONAL.\nWEBS ITE",
            style: TextStyle(
                fontWeight: FontWeight.w800, height: 0.9, fontSize: 80),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'dsajdhsa sdj shsj j dsjh sjdjs hdjs jshdj shjdsh jsdjs hjsh jsjd j,dsjdhsjdhsjdhsjdsdhsjdjsdhsjdhsj, djjs h jds jksj sj',
            style: TextStyle(fontSize: 21, height: 1.7),
          )
        ],
      ),
    );
  }
}

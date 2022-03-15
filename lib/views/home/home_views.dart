// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:mahdinaghikhani/widgets/centered_view/centered_view.dart';
import 'package:mahdinaghikhani/widgets/course_details/course_details.dart';
import 'package:mahdinaghikhani/widgets/navigation_bar/navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CenteredView(
        child: Column(
          children: <Widget>[
            const NavigationBars(),
            Expanded(
                child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [CourseDetails()],
            ))
          ],
        ),
      ),
    );
  }
}

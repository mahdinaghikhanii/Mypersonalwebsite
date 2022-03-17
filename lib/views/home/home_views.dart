// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:mahdinaghikhani/theme/constant.dart';
import 'package:mahdinaghikhani/widgets/centered_view/centered_view.dart';
import 'package:mahdinaghikhani/widgets/details_about_me/details_about_me.dart';
import 'package:mahdinaghikhani/widgets/fotter/fotter.dart';
import 'package:mahdinaghikhani/widgets/navigation_bar/navigation_bar.dart';
import '../../widgets/details_welcome/course_details.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kwhitemeloo,
      body: SizedBox(
        width: double.infinity,
        height: size.height,
        child: CenteredView(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const NavigationBars(),
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    CourseDetails(),
                    SizedBox(
                      height: 30,
                    ),
                    DetailsAboutMe(),
                    Footer(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

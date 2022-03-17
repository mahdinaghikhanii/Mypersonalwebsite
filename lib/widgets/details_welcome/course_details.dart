// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mahdinaghikhani/widgets/details_welcome/responsive/mobile/mobile_details_welcome.dart';
import 'package:mahdinaghikhani/widgets/details_welcome/responsive/tablet/details_welcome_tablet.dart';
import 'responsive/desktop/details_welcome_desktop.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final textTheme = Theme.of(context).textTheme;
    // ignore: unused_local_variable
    final size = MediaQuery.of(context).size;
    return LayoutBuilder(builder: ((context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopCourseDetails();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        //return TabletCurseDetails();
        return TabletDetailsWelcome();
      } else {
        return MobileDetailsWelcome();
      }
    }));
  }
}

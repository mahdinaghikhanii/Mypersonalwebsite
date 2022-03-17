import 'package:flutter/material.dart';
import 'package:mahdinaghikhani/widgets/details_about_me/responsive/mobile/details_aboutme_mobile.dart';
import 'package:mahdinaghikhani/widgets/details_about_me/responsive/tablet/details_aboutme_tablet.dart';
import 'responsive/desktop/details_aboutme_desktop.dart';

class DetailsAboutMe extends StatelessWidget {
  const DetailsAboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final textTheme = Theme.of(context).textTheme;
    // ignore: unused_local_variable
    final size = MediaQuery.of(context).size;
    return LayoutBuilder(builder: ((context, constraints) {
      if (constraints.maxWidth > 1200) {
        return const DetailsAboutMeDesktop();
      } else if (constraints.maxWidth > 800 && constraints.minWidth < 1200) {
        return const DetailsAboutMeTablet();
      } else {
        return const DetailsAboutMeMobile();
      }
    }));
  }
}

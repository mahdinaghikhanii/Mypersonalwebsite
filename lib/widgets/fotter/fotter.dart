import 'package:flutter/material.dart';
import 'package:mahdinaghikhani/widgets/fotter/desktop/fotter_desktop.dart';
import 'package:mahdinaghikhani/widgets/fotter/mobile/fotter_mobile.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      if (constraints.maxWidth > 1200) {
        return const FotterDesktop();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return const FotterDesktop();
      } else {
        return const FotterMobile();
      }
    }));
  }
}

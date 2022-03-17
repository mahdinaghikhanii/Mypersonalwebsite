import 'package:flutter/material.dart';
import 'package:mahdinaghikhani/widgets/responsive_layout/breakpoints.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {Key? key,
      required this.desktopBody,
      required this.mobileBody,
      required this.tabLetBody})
      : super(key: key);

  final Widget mobileBody;
  final Widget tabLetBody;
  final Widget desktopBody;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, dimens) {
        if (dimens.maxWidth < kTabletBreakPoint) {
          return mobileBody;
        } else if (dimens.maxWidth > kTabletBreakPoint &&
            dimens.maxWidth < kDeskTopBreakPoint) {
          return tabLetBody ?? mobileBody;
        } else {
          return desktopBody ?? mobileBody;
        }
      },
    );
  }
}

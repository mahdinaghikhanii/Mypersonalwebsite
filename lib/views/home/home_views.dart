import 'package:flutter/material.dart';
import 'package:mahdinaghikhani/widgets/navigation_bar/navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[NavigationBars()],
      ),
    );
  }
}

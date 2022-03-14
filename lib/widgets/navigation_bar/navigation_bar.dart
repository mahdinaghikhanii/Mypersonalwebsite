import 'package:flutter/material.dart';

class NavigationBars extends StatelessWidget {
  const NavigationBars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              height: 80,
              width: 150,
              child: Image.asset('assets/img/mahdi.jpg')),
          Row(
            mainAxisSize: MainAxisSize.min,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              _NavBarItem(title: "MahdiNaghikhani"),
              SizedBox(
                width: 60,
              ),
              _NavBarItem(title: "about")
            ],
          )
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem({required this.title});
  @override
  Widget build(BuildContext context) {
    return Text(title);
  }
}

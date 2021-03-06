import 'package:flutter/material.dart';
import 'package:mahdinaghikhani/mudole/extension.dart';
import 'package:mahdinaghikhani/theme/constant.dart';

class DetailsAboutMeDesktop extends StatelessWidget {
  const DetailsAboutMeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Center(
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20)),
                width: size.width * 0.99,
                height: 400,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          height: 400,
                          width: 600,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: mediomBlue,
                          ),
                          child: Image.asset(
                            'assets/img/imgaboutme.png',
                          )),
                      const SizedBox(
                        width: 40,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Text(context.localText.home_about_me,
                                style: const TextStyle(
                                    fontFamily: Constans.iranYekan,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 26)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            context.localText.home_detail_aboutme,
                            style: const TextStyle(
                                color: lightblack, fontSize: 20, height: 2),
                          )
                        ],
                      )
                    ]))));
  }
}

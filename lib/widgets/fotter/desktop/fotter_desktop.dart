import 'package:flutter/material.dart';
import 'package:mahdinaghikhani/theme/constant.dart';

class FotterDesktop extends StatelessWidget {
  const FotterDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 50, bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Do You have Any Project ? Let\'s Talk',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              width: 30,
            ),
            InkWell(
                onTap: () {},
                child: Container(
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: kblue),
                    borderRadius: BorderRadius.circular(20),
                    color: kblue,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_right_alt_outlined,
                      size: 40,
                      color: kwhite,
                    ),
                  ),
                ))
          ],
        ));
  }
}

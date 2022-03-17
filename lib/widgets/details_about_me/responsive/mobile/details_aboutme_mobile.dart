import 'package:flutter/material.dart';
import 'package:mahdinaghikhani/theme/constant.dart';
import 'package:mahdinaghikhani/widgets/text_detail_title/Text_detail_title.dart';

class DetailsAboutMeMobile extends StatelessWidget {
  const DetailsAboutMeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Container(
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20)),
            width: size.width * 0.70,
            height: size.height * 0.70,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        height: 210,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: mediomBlue,
                        ),
                        child: Image.asset(
                          'assets/img/mahdi.png',
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text("About",
                            style: TextStyle(
                                fontFamily: Constans.iranYekan,
                                fontWeight: FontWeight.w600,
                                fontSize: 30)),
                        const Text("Me",
                            // ignore: unnecessary_const
                            style: const TextStyle(
                                color: lightblack,
                                fontFamily: Constans.iranYekan,
                                fontWeight: FontWeight.w800,
                                fontSize: 30))
                      ],
                    )
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          const TextDetailTitle(
                            detail: 'Mahdi',
                            about: 'Name:',
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          const TextDetailTitle(
                            about: 'Family:',
                            detail: 'Naghkhani',
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          const TextDetailTitle(
                            about: 'Date of Birth:',
                            detail: '29 October 2000',
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          const TextDetailTitle(
                            about: 'Email:',
                            detail: 'Mahdinkh7@gmail.com',
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          const TextDetailTitle(
                            about: 'phone number:',
                            detail: '09339181455',
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          const TextDetailTitle(
                            about: 'Location:',
                            detail: 'Iran  rasht',
                          )
                        ],
                      )
                    ]),
              ],
            )));
  }
}

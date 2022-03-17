import 'package:flutter/material.dart';
import 'package:mahdinaghikhani/theme/constant.dart';
import 'package:mahdinaghikhani/widgets/text_detail_title/Text_detail_title.dart';

class DetailsAboutMeTablet extends StatelessWidget {
  const DetailsAboutMeTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                height: 336,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          height: 340,
                          width: 400,
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 2),
                            child: Text("About me",
                                style: TextStyle(
                                    fontFamily: Constans.iranYekan,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20)),
                          ),
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
                    ]))));
  }
}

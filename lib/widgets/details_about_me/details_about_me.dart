import 'package:flutter/material.dart';

import '../../theme/constant.dart';

class DetailsAboutMe extends StatelessWidget {
  const DetailsAboutMe({Key? key}) : super(key: key);

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
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 3),
                            child: Text("About me",
                                style: TextStyle(
                                    fontFamily: Constans.iranYekan,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 26)),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          const TextDetailRow(
                            detail: 'Mahdi',
                            about: 'Name:',
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          const TextDetailRow(
                            about: 'Family:',
                            detail: 'Naghkhani',
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          const TextDetailRow(
                            about: 'Date of Birth:',
                            detail: '29 October 2000',
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          const TextDetailRow(
                            about: 'Email:',
                            detail: 'Mahdinkh7@gmail.com',
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          const TextDetailRow(
                            about: 'phone number:',
                            detail: '09339181455',
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          const TextDetailRow(
                            about: 'Location:',
                            detail: 'Iran  rasht',
                          )
                        ],
                      )
                    ]))));
  }
}

class TextDetailRow extends StatelessWidget {
  const TextDetailRow({Key? key, required this.about, required this.detail})
      : super(key: key);
  final String about;
  final String detail;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            about,
            style: const TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 16,
            ),
          ),
          const Spacer(),
          Text(detail,
              textAlign: TextAlign.right,
              style: const TextStyle(
                  fontSize: 16,
                  fontFamily: Constans.iranYekan,
                  color: lightblack)),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../theme/constant.dart';

class DetailsAboutMe extends StatelessWidget {
  const DetailsAboutMe({Key? key}) : super(key: key);

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
                        width: 80,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Text(
                              "About me",
                              style: Theme.of(context).textTheme.headline5,
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          TextDetailRow(
                            detail: 'Mahdi',
                            about: 'Name:',
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(about),
        const SizedBox(
          width: 120,
        ),
        Text(detail)
      ],
    );
  }
}

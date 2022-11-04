import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../social_network/social_network.dart';

class FotterMobile extends StatelessWidget {
  const FotterMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  'Do You have Any Project ? Let\'s Talk',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SocialNetwork(
                  text: "Telegram",
                  logo: "assets/logo/tele.png",
                  ontap: () async {
                    await launchUrlString(
                        'http://flutterbooksample.com/book/1');
                  },
                ),
                const SizedBox(
                  width: 15,
                ),
                SocialNetwork(
                  text: "Twitter",
                  logo: "assets/logo/twitter.png",
                  ontap: () async {
                    await launchUrlString(
                        'https://twitter.com/mahdinaghikhani');
                  },
                ),
                const SizedBox(width: 15),
                SocialNetwork(
                  text: "Whatsapp",
                  logo: "assets/logo/whatsapp.png",
                  ontap: () async {
                    await launchUrlString('://flutterbooksample.com/book/1');
                  },
                )
              ],
            )
          ],
        ));
  }
}

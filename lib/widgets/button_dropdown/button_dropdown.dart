import 'package:flutter/material.dart';
import 'package:mahdinaghikhani/provider/language_provider.dart';
import 'package:provider/provider.dart';

class ButtonDropDown extends StatelessWidget {
  const ButtonDropDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map> myJson = [
      {'id': '1', 'name': 'English', 'ontap': 'en'},
      {'id': '2', 'name': 'فارسی', 'ontap': 'fa'}
    ];

    return DropdownButton(
        itemHeight: 10,
        hint: context.read<LanguageProvider>().featchlocal(),
        onChanged: (newValue) {},
        items: myJson.map((bankIteam) {
          return DropdownMenuItem(
              value: bankIteam['id'].toString(),
              onTap: () {
                (bankIteam['ontap']);
                context
                    .read<LanguageProvider>()
                    .setLanguage(bankIteam['ontap']);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    bankIteam['image'],
                    width: 25,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      bankIteam['name'],
                    ),
                  )
                ],
              ));
        }).toList());
  }
}

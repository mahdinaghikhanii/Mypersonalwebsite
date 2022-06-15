// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:mahdinaghikhani/provider/language_provider.dart';
import 'package:mahdinaghikhani/theme/constant.dart';
import 'package:provider/provider.dart';

class ButtonDropDown extends StatefulWidget {
  const ButtonDropDown({Key? key}) : super(key: key);

  @override
  State<ButtonDropDown> createState() => _ButtonDropDownState();
}

class _ButtonDropDownState extends State<ButtonDropDown> {
  List<String> items = ['English', 'Persian'];

  @override
  Widget build(BuildContext context) {
    final languageProvider = Provider.of<LanguageProvider>(context);
    String selectItem = context.watch<LanguageProvider>().language == "fa"
        ? items[0]
        : items[1];
    return Center(
      child: DropdownButton<String>(
          elevation: 1,
          isDense: false,
          focusColor: kwhitemeloo,
          dropdownColor: kwhitemeloo,
          value: selectItem,
          items: items
              .map((item) =>
                  DropdownMenuItem(value: item, child: Text(selectItem)))
              .toList(),
          onChanged: (item) {
            if (item == 'English') {
              languageProvider.setLanguage('en');
            }
            if (item == "Persian") {
              languageProvider.setLanguage('fa');
            }
          }),
    );
  }
}

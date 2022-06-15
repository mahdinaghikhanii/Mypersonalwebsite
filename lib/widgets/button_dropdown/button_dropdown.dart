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
  List<String> items = ['English', 'فارسی'];

  @override
  Widget build(BuildContext context) {
    final languageProvider = Provider.of<LanguageProvider>(context);
    String? selectItem = "English";
    return Center(
      child: SizedBox(
        width: 90,
        height: 40,
        child: DropdownButtonFormField<String>(
            elevation: 1,
            isDense: false,
            focusColor: kwhitemeloo,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black.withOpacity(0.6),
                fontFamily: languageProvider.language == 'en'
                    ? null
                    : Constans.iranYekan),
            // decoration: (),
            decoration: const InputDecoration.collapsed(hintText: ''),
            menuMaxHeight: 100,
            dropdownColor: kwhitemeloo,
            value: selectItem,
            items: items
                .map((item) =>
                    DropdownMenuItem<String>(value: item, child: Text(item)))
                .toList(),
            onChanged: (item) {
              setState(() {
                selectItem = item;
              });
              if (item == 'English') {
                languageProvider.setLanguage('en');
              }
              if (item == "فارسی") {
                languageProvider.setLanguage('fa');
              }
            }),
      ),
    );
  }
}

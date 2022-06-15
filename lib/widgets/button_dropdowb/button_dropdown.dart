import 'package:flutter/material.dart';

class ButtonDropDown extends StatelessWidget {
  const ButtonDropDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String selectedValue = "USA";
    return DropdownButton(
        items: dropdownItems, value: selectedValue, onChanged: (s) {});
  }
}

List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("فارسی"), value: "fa"),
    const DropdownMenuItem(child: Text("English"), value: "en"),
  ];
  return menuItems;
}

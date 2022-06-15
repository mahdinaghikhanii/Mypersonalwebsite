import 'package:flutter/material.dart';
import 'package:mahdinaghikhani/generated/l10n.dart';

extension ExtensionBuildContext on BuildContext {
  S get localText => S.of(this);
  double get withs => MediaQuery.of(this).size.width;
  double get heights => MediaQuery.of(this).size.height;
}

import 'package:eliud_core/style/_default/frontend/helper/dialog/dialog_field.dart';
import 'package:eliud_core/style/frontend/has_dialog_field.dart';
import 'package:eliud_core/style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MonaDialogFieldImpl implements HasDialogField {
  final Style _style;

  MonaDialogFieldImpl(this._style);

  @override
  Widget dialogField(BuildContext context,
      {InputDecoration? decoration,
      required ValueChanged<String> valueChanged,
      String? initialValue}) {
    return DialogField(
        decoration: decoration,
        valueChanged: valueChanged,
        initialValue: initialValue);
  }
}

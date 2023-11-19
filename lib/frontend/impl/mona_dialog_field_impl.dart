import 'package:eliud_core_model/model/app_model.dart';
import 'package:eliud_core_model/style/_default/frontend/helper/dialog/dialog_field.dart';
import 'package:eliud_core_model/style/frontend/has_dialog_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MonaDialogFieldImpl implements HasDialogField {
  MonaDialogFieldImpl();

  @override
  Widget dialogField(
    AppModel app,
    BuildContext context, {
    InputDecoration? decoration,
    required ValueChanged<String> valueChanged,
    String? initialValue,
    TextInputType? keyboardType,
    TextCapitalization? textCapitalization,
    List<TextInputFormatter>? inputFormatters,
    TextAlign? textAlign,
    TextAlignVertical? textAlignVertical,
    TextDirection? textDirection,
    bool? readOnly,
    bool? showCursor,
    bool? autocorrect,
    bool? enableSuggestions,
    int? maxLines,
    int? minLines,
    bool? expands,
    int? maxLength,
  }) {
    return DialogField(
      app: app,
      decoration: decoration,
      valueChanged: valueChanged,
      initialValue: initialValue,
      keyboardType: keyboardType,
      textCapitalization: textCapitalization,
      inputFormatters: inputFormatters,
      textAlign: textAlign,
      textAlignVertical: textAlignVertical,
      textDirection: textDirection,
      readOnly: readOnly,
      showCursor: showCursor,
      autocorrect: autocorrect,
      enableSuggestions: enableSuggestions,
      maxLines: maxLines,
      minLines: minLines,
      expands: expands,
      maxLength: maxLength,
    );
  }
}

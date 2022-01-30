import 'package:eliud_core/model/app_model.dart';
import 'package:eliud_core/style/frontend/has_text_form_field.dart';
import 'package:eliud_core/tools/etc.dart';
import 'package:flutter/material.dart';

import '../../styles/mona_style.dart';

class MonaTextFormFieldImpl implements HasTexFormField {
  final MonaStyle _monaStyle;

  MonaTextFormFieldImpl(this._monaStyle);

  @override
  Widget textFormField(AppModel app,
    BuildContext context, {
    required bool readOnly,
    String? initialValue,
    FormFieldValidator<String>? validator,
    TextInputType? keyboardType,
    IconData? icon,
    String? labelText,
    String? hintText,
    int? maxLines,
    ValueChanged<String>? onChanged,
    TextEditingController? textEditingController,
  }) {
    return TextFormField(
        style: TextStyle(
            color: RgbHelper.color(
                rgbo:
                    _monaStyle.monaStyleAttributesModel.formFieldTextColor)),
        readOnly: readOnly,
        onChanged: onChanged,
        controller: textEditingController,
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: RgbHelper.color(
                      rgbo: _monaStyle
                          .monaStyleAttributesModel.formFieldTextColor))),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: RgbHelper.color(
                      rgbo: _monaStyle
                          .monaStyleAttributesModel.formFieldFocusColor))),
          icon: icon == null
              ? null
              : Icon(icon,
                  color: RgbHelper.color(
                      rgbo: _monaStyle
                          .monaStyleAttributesModel.formFieldHeaderColor)),
          labelText: labelText,
        ),
        keyboardType: TextInputType.text,
        validator: validator,
        initialValue: initialValue);
  }

  @override
  Widget textField(AppModel app,BuildContext context,
      {required bool readOnly,
      String? initialValue,
      FormFieldValidator<String>? validator,
      TextInputType? keyboardType,
      IconData? icon,
      String? labelText,
      String? hintText,
      int? maxLines,
      ValueChanged<String>? onChanged,
      TextEditingController? textEditingController,
      TextAlign? textAlign,
      TextInputAction? textInputAction,
      ValueChanged<String>? onSubmitted,
      TextEditingController? controller,
      }) {
    return TextField(
      textAlign: TextAlign.left,
      textInputAction: TextInputAction.go,
      controller: controller,
      style:
        _monaStyle.frontEndStyle().textStyleStyle().styleText(app, context),
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle:
            _monaStyle.frontEndStyle().textStyleStyle().styleText(app, context),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        filled: true,
        contentPadding: EdgeInsets.only(left: 8),
        fillColor: Colors.grey,
      ),
    );
  }
}

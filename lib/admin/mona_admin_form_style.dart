import 'package:eliud_core/core/blocs/access/access_bloc.dart';
import 'package:eliud_core/model/background_model.dart';
import 'package:eliud_core/style/admin/admin_form_style.dart';
import 'package:eliud_core/tools/enums.dart';
import 'package:eliud_core/tools/etc.dart';
import 'package:flutter/material.dart';
import '../mona_style.dart';

class MonaAdminFormStyle implements AdminFormStyle {
  final MonaStyle _monaStyle;

  MonaAdminFormStyle(this._monaStyle);

  @override
  Widget groupTitle(BuildContext context, String title) {
    return Text(title,
        style: TextStyle(
            color: RgbHelper.color(
                rgbo:
                    _monaStyle.monaStyleAttributesModel.formGroupTitleColor),
            fontWeight: FontWeight.bold));
  }

  @override
  Widget radioListTile<T>(BuildContext context, T t, T? groupValue,
      String title, String subTitle, ValueChanged<T?>? valueChanged) {
    return RadioListTile(
        value: t,
        activeColor: RgbHelper.color(
            rgbo: _monaStyle.monaStyleAttributesModel.formFieldTextColor),
        groupValue: groupValue,
        title: Text(title,
            style: TextStyle(
                color: RgbHelper.color(
                    rgbo: _monaStyle
                        .monaStyleAttributesModel.formFieldTextColor))),
        subtitle: Text(subTitle,
            style: TextStyle(
                color: RgbHelper.color(
                    rgbo: _monaStyle
                        .monaStyleAttributesModel.formFieldTextColor))),
        onChanged: valueChanged);
  }

  @override
  Widget checkboxListTile(BuildContext context, String title, bool? value,
      ValueChanged<bool?>? onChanged) {
    return CheckboxListTile(
        title: Text(title,
            style: TextStyle(
                color: RgbHelper.color(
                    rgbo: _monaStyle
                        .monaStyleAttributesModel.formFieldTextColor))),
        value: value,
        onChanged: onChanged);
  }

  /*
   * This is the container for the entire form
   */
  @override
  Widget container(BuildContext context, Widget child, FormAction formAction) {
    return Container(
        color: ((formAction == FormAction.ShowData) ||
                (formAction == FormAction.ShowPreloadedData))
            ? Colors.transparent
            : null,
        decoration: ((formAction == FormAction.ShowData) ||
                (formAction == FormAction.ShowPreloadedData))
            ? null
            : BoxDecorationHelper.boxDecoration(AccessBloc.getState(context).getMember(),
                _monaStyle.monaStyleAttributesModel.formBackground),
        padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
        child: child);
  }

  @override
  PreferredSizeWidget appBarWithString(BuildContext context,
      {required String title,
      List<Widget>? actions,
      IconThemeData? iconTheme,
      BackgroundModel? backgroundOverride}) {
    return appBarWithWidget(context,
        title: Text(title,
            style: TextStyle(
                color: RgbHelper.color(
                    rgbo: _monaStyle
                        .monaStyleAttributesModel.appBarIconColor))),
        actions: actions,
        iconTheme: iconTheme,
        backgroundOverride: backgroundOverride);
  }

  PreferredSizeWidget appBarWithWidget(BuildContext context,
      {required Widget title,
      List<Widget>? actions,
      IconThemeData? iconTheme,
      BackgroundModel? backgroundOverride}) {
    var accessState = AccessBloc.getState(context);
    var background;
    if (backgroundOverride != null) {
      background = backgroundOverride;
    } else {
      background = _monaStyle.monaStyleAttributesModel.appBarBG;
    }
    return AppBar(
      title: title,
      actions: actions,
      iconTheme: iconTheme,
      flexibleSpace: Container(
          decoration:
              BoxDecorationHelper.boxDecoration(accessState.getMember(), background)),
    );
  }

  @override
  Widget button(BuildContext context,
      {Icon? icon, required String label, VoidCallback? onPressed}) {
    if (icon != null) {
      return ElevatedButton.icon(
        onPressed: onPressed,
        icon: icon,
        label: Text(label),
      );
    } else {
      return ElevatedButton(
        onPressed: onPressed,
        child: Text(label),
      );
    }
  }

  @override
  Widget textFormField(
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
  @override
  Widget divider(BuildContext context) {
    return Divider(
        height: 1.0,
        thickness: 1.0,
        color: RgbHelper.color(
            rgbo: _monaStyle.monaStyleAttributesModel.dividerColor));
  }
}

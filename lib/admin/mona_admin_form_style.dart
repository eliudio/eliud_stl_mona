import 'package:eliud_core/access/access_bloc.dart';
import 'package:eliud_core_helpers/etc/enums.dart';
import 'package:eliud_core_main/model/app_model.dart';
import 'package:eliud_core_main/model/background_model.dart';
import 'package:eliud_core_main/apis/style/admin/admin_form_style.dart';
import 'package:eliud_core_main/tools/etc/etc.dart';
import 'package:flutter/material.dart';

import '../styles/mona_style.dart';

class MonaAdminFormStyle implements AdminFormStyle {
  final MonaStyle _monaStyle;

  MonaAdminFormStyle(this._monaStyle);

  @override
  Widget groupTitle(AppModel app, BuildContext context, String title) {
    return Text(title,
        style: TextStyle(
            color: RgbHelper.color(
                rgbo: _monaStyle.monaStyleAttributesModel.formGroupTitleColor),
            fontWeight: FontWeight.bold));
  }

  @override
  Widget radioListTile<T>(
      AppModel app,
      BuildContext context,
      T t,
      T? groupValue,
      String title,
      String subTitle,
      ValueChanged<T?>? valueChanged) {
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
  Widget checkboxListTile(AppModel app, BuildContext context, String title,
      bool? value, ValueChanged<bool?>? onChanged) {
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
  Widget container(
      AppModel app, BuildContext context, Widget child, FormAction formAction) {
    var decoration = ((formAction == FormAction.showData) ||
            (formAction == FormAction.showPreloadedData))
        ? null
        : BoxDecorationHelper.boxDecoration(
            app,
            AccessBloc.getState(context).getMember(),
            _monaStyle.monaStyleAttributesModel.formBackground);
    return Container(
        clipBehavior: (decoration == null) ? Clip.none : Clip.hardEdge,
        color: ((formAction == FormAction.showData) ||
                (formAction == FormAction.showPreloadedData))
            ? Colors.transparent
            : null,
        decoration: decoration,
        padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
        child: child);
  }

  @override
  PreferredSizeWidget appBarWithString(AppModel app, BuildContext context,
      {required String title,
      List<Widget>? actions,
      IconThemeData? iconTheme,
      BackgroundModel? backgroundOverride}) {
    return appBarWithWidget(app, context,
        title: Text(title,
            style: TextStyle(
                color: RgbHelper.color(
                    rgbo:
                        _monaStyle.monaStyleAttributesModel.appBarIconColor))),
        actions: actions,
        iconTheme: iconTheme,
        backgroundOverride: backgroundOverride);
  }

  PreferredSizeWidget appBarWithWidget(AppModel app, BuildContext context,
      {required Widget title,
      List<Widget>? actions,
      IconThemeData? iconTheme,
      BackgroundModel? backgroundOverride}) {
    var accessState = AccessBloc.getState(context);
    BackgroundModel? background;
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
          clipBehavior: (background == null) ? Clip.none : Clip.hardEdge,
          decoration: BoxDecorationHelper.boxDecoration(
              app, accessState.getMember(), background)),
    );
  }

  @override
  Widget button(AppModel app, BuildContext context,
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
    AppModel app,
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
                rgbo: _monaStyle.monaStyleAttributesModel.formFieldTextColor)),
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
  Widget divider(AppModel app, BuildContext context) {
    return Divider(
        height: 1.0,
        thickness: 1.0,
        color: RgbHelper.color(
            rgbo: _monaStyle.monaStyleAttributesModel.dividerColor));
  }
}

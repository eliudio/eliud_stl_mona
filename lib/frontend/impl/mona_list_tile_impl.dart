import 'package:eliud_core_main/model/app_model.dart';
import 'package:eliud_core_main/apis/style/frontend/has_list_tile.dart';
import 'package:eliud_core_main/tools/etc/etc.dart';
import 'package:flutter/material.dart';

import '../../styles/mona_style.dart';

class MonaListTileImpl implements HasListTile {
  final MonaStyle _style;

  MonaListTileImpl(this._style);

  @override
  Widget getListTile(AppModel app, BuildContext context,
      {Key? key,
      GestureTapCallback? onTap,
      Widget? leading,
      Widget? trailing,
      Widget? title,
      Widget? subtitle,
      bool? isThreeLine}) {
    return ListTile(
      key: key,
      onTap: onTap,
      isThreeLine: isThreeLine ?? false,
      leading: leading,
      trailing: trailing,
      title: title,
      subtitle: subtitle,
/*      selectedColor: RgbHelper.color(
          rgbo: _style.monaStyleAttributesModel.listTileColor),
      iconColor: RgbHelper.color(
          rgbo: _style.monaStyleAttributesModel.listTileColor),
      focusColor: RgbHelper.color(
          rgbo: _style.monaStyleAttributesModel.listTileColor),
        splashColor: RgbHelper.color(
            rgbo: _style.monaStyleAttributesModel.listTileColor),
      textColor: RgbHelper.color(
          rgbo: _style.monaStyleAttributesModel.listTileColor),
        selectedTileColor: RgbHelper.color(
            rgbo: _style.monaStyleAttributesModel.listTileColor),*/
      tileColor:
          RgbHelper.color(rgbo: _style.monaStyleAttributesModel.listTileColor),
    );
  }

  @override
  Widget radioListTile<T>(
      AppModel app,
      BuildContext context,
      T t,
      T? groupValue,
      String title,
      String? subTitle,
      ValueChanged<T?>? valueChanged) {
    return RadioListTile(
        value: t,
        groupValue: groupValue,
        title: _style.frontEndStyle().textStyle().text(app, context, title),
        subtitle: subTitle != null ? Text(subTitle) : null,
        onChanged: valueChanged);
  }

  @override
  Widget checkboxListTile(AppModel app, BuildContext context, String title,
      bool? value, ValueChanged<bool?>? onChanged) {
    return CheckboxListTile(
        title: _style.frontEndStyle().textStyle().text(app, context, title),
        value: value,
        onChanged: onChanged);
  }
}

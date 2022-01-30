import 'package:eliud_core/model/app_model.dart';
import 'package:eliud_core/model/icon_model.dart';
import 'package:eliud_core/style/frontend/has_icon.dart';
import 'package:eliud_core/tools/etc.dart';
import 'package:flutter/material.dart';

import '../../styles/mona_style.dart';

class MonaIconImpl implements HasIcon {
  final MonaStyle _monaStyle;

  MonaIconImpl(this._monaStyle);

  @override
  Widget h1Icon(AppModel app,BuildContext context,
      {required IconModel icon, String? semanticLabel}) {
    var style = FontTools.textStyle(_monaStyle.monaStyleAttributesModel.h1);
    return IconHelper.getIconFromModelWithFlutterColor(
        iconModel: icon,
        color: style != null ? style.color : null,
        semanticLabel: semanticLabel);
  }

  @override
  Widget h2Icon(AppModel app,BuildContext context,
      {required IconModel icon, String? semanticLabel}) {
    var style = FontTools.textStyle(_monaStyle.monaStyleAttributesModel.h2);
    return IconHelper.getIconFromModelWithFlutterColor(
        iconModel: icon,
        color: style != null ? style.color : null,
        semanticLabel: semanticLabel);
  }

  @override
  Widget h3Icon(AppModel app,BuildContext context,
      {required IconModel icon, String? semanticLabel}) {
    var style = FontTools.textStyle(_monaStyle.monaStyleAttributesModel.h3);
    return IconHelper.getIconFromModelWithFlutterColor(
        iconModel: icon,
        color: style != null ? style.color : null,
        semanticLabel: semanticLabel);
  }

  @override
  Widget h4Icon(AppModel app,BuildContext context,
      {required IconModel icon, String? semanticLabel}) {
    var style = FontTools.textStyle(_monaStyle.monaStyleAttributesModel.h4);
    return IconHelper.getIconFromModelWithFlutterColor(
        iconModel: icon,
        color: style != null ? style.color : null,
        semanticLabel: semanticLabel);
  }

  @override
  Widget h5Icon(AppModel app,BuildContext context,
      {required IconModel icon, String? semanticLabel}) {
    var style = FontTools.textStyle(_monaStyle.monaStyleAttributesModel.h5);
    return IconHelper.getIconFromModelWithFlutterColor(
        iconModel: icon,
        color: style != null ? style.color : null,
        semanticLabel: semanticLabel);
  }

  @override
  Widget h1Icon2(AppModel app,BuildContext context,
      {required IconData iconData, String? semanticLabel}) {
    var style = FontTools.textStyle(_monaStyle.monaStyleAttributesModel.h1);
    return IconHelper.getIcon(
        iconData: iconData,
        color: style != null ? style.color : null,
        semanticLabel: semanticLabel);
  }

  @override
  Widget h2Icon2(AppModel app,BuildContext context,
      {required IconData iconData, String? semanticLabel}) {
    var style = FontTools.textStyle(_monaStyle.monaStyleAttributesModel.h2);
    return IconHelper.getIcon(
        iconData: iconData,
        color: style != null ? style.color : null,
        semanticLabel: semanticLabel);
  }

  @override
  Widget h3Icon2(AppModel app,BuildContext context,
      {required IconData iconData, String? semanticLabel}) {
    var style = FontTools.textStyle(_monaStyle.monaStyleAttributesModel.h3);
    return IconHelper.getIcon(
        iconData: iconData,
        color: style != null ? style.color : null,
        semanticLabel: semanticLabel);
  }

  @override
  Widget h4Icon2(AppModel app,BuildContext context,
      {required IconData iconData, String? semanticLabel}) {
    var style = FontTools.textStyle(_monaStyle.monaStyleAttributesModel.h4);
    return IconHelper.getIcon(
        iconData: iconData,
        color: style != null ? style.color : null,
        semanticLabel: semanticLabel);
  }

  @override
  Widget h5Icon2(AppModel app,BuildContext context,
      {required IconData iconData, String? semanticLabel}) {
    var style = FontTools.textStyle(_monaStyle.monaStyleAttributesModel.h5);
    return IconHelper.getIcon(
        iconData: iconData,
        color: style != null ? style.color : null,
        semanticLabel: semanticLabel);
  }
}

import 'package:eliud_core_model/model/app_model.dart';
import 'package:eliud_core_model/style/frontend/has_style.dart';
import 'package:eliud_stl_mona/tools/font_tools.dart';
import 'package:flutter/material.dart';

import '../../styles/mona_style.dart';

class MonaStyleImpl implements HasStyle {
  final MonaStyle _monaStyle;

  MonaStyleImpl(this._monaStyle);

  @override
  TextStyle? styleInputDecorationLabel(AppModel app, BuildContext context) {
    return FontTools.textStyle(
        _monaStyle.monaStyleAttributesModel.textFieldHeader);
  }

  @override
  TextStyle? styleText(AppModel app, BuildContext context) {
    return FontTools.textStyle(_monaStyle.monaStyleAttributesModel.fontText);
  }

  @override
  TextStyle? styleSmallText(AppModel app, BuildContext context) {
    return FontTools.textStyle(
        _monaStyle.monaStyleAttributesModel.fontSmallText);
  }

  @override
  TextStyle? styleHighLight1(AppModel app, BuildContext context) {
    return FontTools.textStyle(
        _monaStyle.monaStyleAttributesModel.fontHighlight1);
  }

  @override
  TextStyle? styleHighLight2(AppModel app, BuildContext context) {
    return FontTools.textStyle(
        _monaStyle.monaStyleAttributesModel.fontHighlight2);
  }

  @override
  TextStyle? styleH1(AppModel app, BuildContext context) {
    return FontTools.textStyle(_monaStyle.monaStyleAttributesModel.h1);
  }

  @override
  TextStyle? styleH2(AppModel app, BuildContext context) {
    return FontTools.textStyle(_monaStyle.monaStyleAttributesModel.h2);
  }

  @override
  TextStyle? styleH3(AppModel app, BuildContext context) {
    return FontTools.textStyle(_monaStyle.monaStyleAttributesModel.h3);
  }

  @override
  TextStyle? styleH4(AppModel app, BuildContext context) {
    return FontTools.textStyle(_monaStyle.monaStyleAttributesModel.h4);
  }

  @override
  TextStyle? styleH5(AppModel app, BuildContext context) {
    return FontTools.textStyle(_monaStyle.monaStyleAttributesModel.h5);
  }
}

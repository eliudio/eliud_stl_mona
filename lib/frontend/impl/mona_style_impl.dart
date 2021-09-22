import 'package:eliud_core/model/icon_model.dart';
import 'package:eliud_core/style/frontend/has_style.dart';
import 'package:eliud_core/tools/etc.dart';
import 'package:flutter/material.dart';

import '../../mona_style.dart';

class MonaStyleImpl implements HasStyle {
  final MonaStyle _monaStyle;

  MonaStyleImpl(this._monaStyle);

  TextStyle? inputDecorationLabelStyle(BuildContext context) {
    return FontTools.textStyle(_monaStyle.monaStyleAttributesModel.fontText);
  }

  @override
  TextStyle? styleText(BuildContext context) {
    return FontTools.textStyle(_monaStyle.monaStyleAttributesModel.fontText);
  }

  @override
  TextStyle? styleSmallText(BuildContext context) {
    return FontTools.textStyle(_monaStyle.monaStyleAttributesModel.fontSmallText);
  }

  @override
  TextStyle? styleHighLight1(BuildContext context) {
    return FontTools.textStyle(
        _monaStyle.monaStyleAttributesModel.fontHighlight1);
  }

  @override
  TextStyle? styleHighLight2(BuildContext context) {
    return FontTools.textStyle(
        _monaStyle.monaStyleAttributesModel.fontHighlight2);
  }

  @override
  TextStyle? styleH1(BuildContext context) {
    return FontTools.textStyle(_monaStyle.monaStyleAttributesModel.h1);
  }

  @override
  TextStyle? styleH2(BuildContext context) {
    return FontTools.textStyle(_monaStyle.monaStyleAttributesModel.h2);
  }

  @override
  TextStyle? styleH3(BuildContext context) {
    return FontTools.textStyle(_monaStyle.monaStyleAttributesModel.h3);
  }

  @override
  TextStyle? styleH4(BuildContext context) {
    return FontTools.textStyle(_monaStyle.monaStyleAttributesModel.h4);
  }

  @override
  TextStyle? styleH5(BuildContext context) {
    return FontTools.textStyle(_monaStyle.monaStyleAttributesModel.h5);
  }
}

import 'package:eliud_core/model/icon_model.dart';
import 'package:eliud_core/style/frontend/has_text.dart';
import 'package:eliud_core/tools/etc.dart';
import 'package:flutter/material.dart';

import '../../mona_style.dart';

class MonaTextImpl
    implements HasText {
  final MonaStyle _monaStyle;

  MonaTextImpl(this._monaStyle);

  @override
  Widget text(BuildContext context, String data, {TextAlign? textAlign, int? maxLines, bool? softWrap}) {
    return Text(data,
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: softWrap,
        style: FontTools.textStyle(
            _monaStyle.monaStyleAttributesModel.fontText));
  }

  @override
  Widget highLight1(BuildContext context, String data, {TextAlign? textAlign, int? maxLines, bool? softWrap }) {
    return Text(data,
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: softWrap,
        style: FontTools.textStyle(
            _monaStyle.monaStyleAttributesModel.fontHighlight1));
  }

  @override
  Widget highLight2(BuildContext context, String data, {TextAlign? textAlign, int? maxLines, bool? softWrap }) {
    return Text(data,
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: softWrap,
        style: FontTools.textStyle(
            _monaStyle.monaStyleAttributesModel.fontHighlight2));
  }

  @override
  Widget h1(BuildContext context, String data, {TextAlign? textAlign, int? maxLines, bool? softWrap }) {
    return Text(data,
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: softWrap,
        style: FontTools.textStyle(
            _monaStyle.monaStyleAttributesModel.h1));
  }

  @override
  Widget h2(BuildContext context, String data, {TextAlign? textAlign, int? maxLines, bool? softWrap }) {
    return Text(data,
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: softWrap,
        style: FontTools.textStyle(
            _monaStyle.monaStyleAttributesModel.h2));
  }

  @override
  Widget h3(BuildContext context, String data, {TextAlign? textAlign, int? maxLines, bool? softWrap }) {
    return Text(data,
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: softWrap,
        style: FontTools.textStyle(
            _monaStyle.monaStyleAttributesModel.h3));
  }

  @override
  Widget h4(BuildContext context, String data, {TextAlign? textAlign, int? maxLines, bool? softWrap }) {
    return Text(data,
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: softWrap,
        style: FontTools.textStyle(
            _monaStyle.monaStyleAttributesModel.h4));
  }

  @override
  Widget h5(BuildContext context, String data, {TextAlign? textAlign, int? maxLines, bool? softWrap }) {
    return Text(data,
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: softWrap,
        style: FontTools.textStyle(
            _monaStyle.monaStyleAttributesModel.h5));
  }

}

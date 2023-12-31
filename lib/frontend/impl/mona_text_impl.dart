import 'package:eliud_core_main/model/app_model.dart';
import 'package:eliud_core_main/apis/style/frontend/has_style.dart';
import 'package:eliud_core_main/apis/style/frontend/has_text.dart';
import 'package:flutter/material.dart';

class MonaTextImpl implements HasText {
  MonaTextImpl();

  @override
  Widget smallText(AppModel app, BuildContext context, String data,
      {TextAlign? textAlign, int? maxLines, bool? softWrap}) {
    return Text(data,
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: softWrap,
        style: styleSmallText(app, context));
  }

  @override
  Widget text(AppModel app, BuildContext context, String data,
      {TextAlign? textAlign, int? maxLines, bool? softWrap}) {
    return Text(data,
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: softWrap,
        style: styleText(app, context));
  }

  @override
  Widget highLight1(AppModel app, BuildContext context, String data,
      {TextAlign? textAlign, int? maxLines, bool? softWrap}) {
    return Text(data,
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: softWrap,
        style: styleHighLight1(app, context));
  }

  @override
  Widget highLight2(AppModel app, BuildContext context, String data,
      {TextAlign? textAlign, int? maxLines, bool? softWrap}) {
    return Text(data,
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: softWrap,
        style: styleHighLight2(app, context));
  }

  @override
  Widget h1(AppModel app, BuildContext context, String data,
      {TextAlign? textAlign, int? maxLines, bool? softWrap}) {
    return Text(data,
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: softWrap,
        style: styleH1(app, context));
  }

  @override
  Widget h2(AppModel app, BuildContext context, String data,
      {TextAlign? textAlign, int? maxLines, bool? softWrap}) {
    return Text(data,
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: softWrap,
        style: styleH2(app, context));
  }

  @override
  Widget h3(AppModel app, BuildContext context, String data,
      {TextAlign? textAlign, int? maxLines, bool? softWrap}) {
    return Text(data,
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: softWrap,
        style: styleH3(app, context));
  }

  @override
  Widget h4(AppModel app, BuildContext context, String data,
      {TextAlign? textAlign, int? maxLines, bool? softWrap}) {
    return Text(data,
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: softWrap,
        style: styleH4(app, context));
  }

  @override
  Widget h5(AppModel app, BuildContext context, String data,
      {TextAlign? textAlign, int? maxLines, bool? softWrap}) {
    return Text(data,
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: softWrap,
        style: styleH5(app, context));
  }

  @override
  Widget inputDecorationLabel(AppModel app, BuildContext context, String data,
      {TextAlign? textAlign, int? maxLines, bool? softWrap}) {
    return Text(data,
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: softWrap,
        style: styleInputDecorationLabel(app, context));
  }
}

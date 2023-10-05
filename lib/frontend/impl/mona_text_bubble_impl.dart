import 'package:eliud_core/model/app_model.dart';
import 'package:eliud_core/style/frontend/has_page_route_builder.dart';
import 'package:eliud_core/style/frontend/has_tabs.dart';
import 'package:eliud_core/style/frontend/has_text_bubble.dart';
import 'package:eliud_core/style/style.dart';
import 'package:eliud_core/tools/etc.dart';
import 'package:eliud_core/tools/router_builders.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorful_tab/flutter_colorful_tab.dart';

import '../../styles/mona_style.dart';
import '../../widgets/text_bubble.dart';

class MonaTextBubbleImpl implements HasTextBubble {
  final MonaStyle _monaStyle;

  MonaTextBubbleImpl(this._monaStyle);

  @override
  Widget textBubble(AppModel app, BuildContext context,
      {bool isSender = true,
      required String text,
      String? time,
      bool tail = true,
      bool sent = false,
      bool delivered = false,
      bool seen = false}) {
    return TextBubble1(
        isSender: isSender,
        text: text,
        time: time,
        tail: tail,
        color: RgbHelper.color(
            rgbo: _monaStyle.monaStyleAttributesModel.textBubbleBackgroundColor),
        sent: sent,
        delivered: delivered,
        seen: seen,
        textStyle: _monaStyle
            .frontEndStyle()
            .textStyleStyle()
            .styleText(app, context)!,
        timeTextStyle: _monaStyle
            .frontEndStyle()
            .textStyleStyle()
            .styleSmallText(app, context)!);
  }

  @override
  Widget widgetBubble(AppModel app, BuildContext context,
      {bool isSender = true,
      required Widget widget,
      Widget? timeWidget,
      bool tail = true,
      bool sent = false,
      bool delivered = false,
      bool seen = false}) {
    return TextBubble(
      isSender: isSender,
      widget: widget,
      timeWidget: timeWidget,
      color: RgbHelper.color(
          rgbo: _monaStyle.monaStyleAttributesModel.textBubbleBackgroundColor),
      tail: tail,
      sent: sent,
      delivered: delivered,
      seen: seen,
    );
  }
}

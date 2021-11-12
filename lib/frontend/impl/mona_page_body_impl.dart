import 'package:eliud_core/model/background_model.dart';
import 'package:eliud_core/model/grid_view_model.dart';
import 'package:eliud_core/style/_default/frontend/helper/page_body_helper.dart';
import 'package:eliud_core/style/frontend/has_page_body.dart';
import 'package:eliud_core/tools/etc.dart';
import 'package:eliud_core/tools/grid_view_helper.dart';
import 'package:flutter/material.dart';

import '../../mona_style.dart';

class MonaPageBodyImpl implements HasPageBody {
  final MonaStyle _monaStyle;

  MonaPageBodyImpl(this._monaStyle);

  @override
  Widget pageBody(BuildContext context,
      {BackgroundModel? backgroundOverride,
      required List<Widget> components,
      Layout? layout,
      GridViewModel? gridView}) {
    return PageBodyHelper(_monaStyle.frontEndStyle()).pageBody(context,
        components: components,
        layout: layout,
        gridView: gridView,
        background: backgroundOverride == null ? _monaStyle.monaStyleAttributesModel.appBackground : backgroundOverride);
  }
}

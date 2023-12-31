import 'package:eliud_core_main/model/app_model.dart';
import 'package:eliud_core_main/model/background_model.dart';
import 'package:eliud_core_main/apis/style/_default/frontend/helper/page_body_helper.dart';
import 'package:eliud_core_main/apis/style/frontend/has_page_body.dart';
import 'package:eliud_core_main/model/grid_view_model.dart';
import 'package:flutter/material.dart';

import '../../styles/mona_style.dart';

class MonaPageBodyImpl implements HasPageBody {
  final MonaStyle _monaStyle;

  MonaPageBodyImpl(this._monaStyle);

  @override
  Widget pageBody(AppModel app, BuildContext context,
      {BackgroundModel? backgroundOverride,
      required List<Widget> components,
      Layout? layout,
      GridViewModel? gridView}) {
    return PageBodyHelper(_monaStyle.frontEndStyle()).pageBody(app, context,
        components: components,
        layout: layout,
        gridView: gridView,
        background: backgroundOverride ??
            _monaStyle.monaStyleAttributesModel.appBackground);
  }
}

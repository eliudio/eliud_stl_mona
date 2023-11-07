import 'package:eliud_core/model/app_model.dart';
import 'package:eliud_core/style/frontend/has_divider.dart';
import 'package:eliud_core/tools/etc.dart';
import 'package:flutter/material.dart';

import '../../styles/mona_style.dart';

class MonaDividerImpl implements HasDivider {
  final MonaStyle _monaStyle;

  MonaDividerImpl(this._monaStyle);

  @override
  Widget divider(AppModel app, BuildContext context) {
    return Divider(
        height: 1.0,
        thickness: 1.0,
        color: RgbHelper.color(
            rgbo: _monaStyle.monaStyleAttributesModel.dividerColor));
  }

  @override
  Widget verticalDivider(AppModel app, BuildContext context, double height) {
    return Container(
      color: Colors.red,
      height: height,
      width: 1,
    );
  }
}

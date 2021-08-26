import 'package:eliud_core/model/icon_model.dart';
import 'package:eliud_core/style/frontend/has_divider.dart';
import 'package:eliud_core/tools/etc.dart';
import 'package:flutter/material.dart';

import '../../mona_style.dart';

class MonaDividerImpl
    implements HasDivider {
  final MonaStyle _monaStyle;

  MonaDividerImpl(this._monaStyle);

  @override
  Widget divider(BuildContext context) {
    return Divider(
        height: 1.0,
        thickness: 1.0,
        color: RgbHelper.color(
            rgbo: _monaStyle.monaStyleAttributesModel.dividerColor));
  }
}

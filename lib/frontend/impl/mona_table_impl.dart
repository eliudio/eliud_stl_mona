import 'package:eliud_core_main/model/app_model.dart';
import 'package:eliud_core_main/apis/style/frontend/has_table.dart';
import 'package:eliud_core_main/tools/etc/etc.dart';
import 'package:flutter/material.dart';

import '../../styles/mona_style.dart';

class MonaTableImpl implements HasTable {
  final MonaStyle _monaStyle;

  MonaTableImpl(this._monaStyle);

  @override
  Widget table(AppModel app, BuildContext context,
      {required List<TableRow> children}) {
    return Table(
      defaultColumnWidth: IntrinsicColumnWidth(),
      border: TableBorder.symmetric(
          inside: BorderSide(
              color: RgbHelper.color(
                  rgbo: _monaStyle.monaStyleAttributesModel.dividerColor))),
      children: children,
    );
  }
}

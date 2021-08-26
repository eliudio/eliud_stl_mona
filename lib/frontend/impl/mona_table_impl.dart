import 'package:eliud_core/model/icon_model.dart';
import 'package:eliud_core/style/frontend/has_table.dart';
import 'package:eliud_core/tools/etc.dart';
import 'package:flutter/material.dart';

import '../../mona_style.dart';

class MonaTableImpl
    implements HasTable {
  final MonaStyle _monaStyle;

  MonaTableImpl(this._monaStyle);

  @override
  Widget table(BuildContext context, {required List<TableRow> children}) {
    return Table(
      defaultColumnWidth: IntrinsicColumnWidth(),
      border: TableBorder.symmetric(inside: BorderSide(color: RgbHelper.color(rgbo: _monaStyle.monaStyleAttributesModel.dividerColor))),
      children: children,
    );
  }

}

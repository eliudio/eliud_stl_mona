import 'package:eliud_core/style/frontend/has_list_tile.dart';
import 'package:eliud_core/style/style.dart';
import 'package:flutter/material.dart';

class MonaListTileImpl implements HasListTile {
  final Style _sStyle;

  MonaListTileImpl(this._sStyle);

  @override
  Widget getListTile(BuildContext context, {Widget? leading, Widget? title, Widget? subtitle, bool? isThreeLine}) {
    return ListTile(
      isThreeLine: isThreeLine ?? false,
      leading: leading,
      title: title,
      subtitle: subtitle,
    );
  }
}

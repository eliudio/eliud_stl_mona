import 'package:eliud_core/model/rgb_model.dart';
import 'package:eliud_core/style/frontend/has_menu.dart';
import 'package:eliud_core/style/frontend/types.dart';
import 'package:eliud_core/tools/etc.dart';
import 'package:flutter/material.dart';

import '../../mona_style.dart';

class MonaMenuImpl implements HasMenu {
  final MonaStyle _monaStyle;

  MonaMenuImpl(this._monaStyle);

  @override
  Future<void> openMenu(BuildContext context,
      {required RelativeRect position,
      required List<AbstractMenuItemAttributes> menuItems,
      RgbModel? popupMenuBackgroundColorOverride}) async {
    var popupMenuBackgroundColor;
    if (popupMenuBackgroundColorOverride == null) {
      popupMenuBackgroundColor =
          _monaStyle.monaStyleAttributesModel.backgroundColorHomeMenu;
    } else {
      popupMenuBackgroundColor = popupMenuBackgroundColorOverride;
    }
    var popupMenuItems = <PopupMenuItem<int>>[];
    var i = 0;
    menuItems.forEach((element) {
      var label = element.label ?? '?';
      var p = PopupMenuItem<int>(
          value: i,
          child: element.isActive
              ? _monaStyle.frontEndStyle().textStyle().h3(context, label)
              : _monaStyle.frontEndStyle().textStyle().h4(context, label));
      popupMenuItems.add(p);
      i++;
    });

    final result = await showMenu<int>(
        context: context,
        position: position,
        items: popupMenuItems,
        elevation: 8.0,
        color: RgbHelper.color(rgbo: popupMenuBackgroundColor));
    if (result != null) {
      var item = menuItems[result];
      if (item is MenuItemAttributes) {
        item.onTap();
      } else if (item is MenuItemWithMenuItems) {
        await openMenu(context,
            position: position,
            menuItems: item.items,
            popupMenuBackgroundColorOverride: popupMenuBackgroundColorOverride);
      }
    }
  }
}

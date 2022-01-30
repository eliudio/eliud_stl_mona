import 'package:eliud_core/model/app_model.dart';
import 'package:eliud_core/model/rgb_model.dart';
import 'package:eliud_core/style/_default/frontend/helper/menu_helper.dart';
import 'package:eliud_core/style/frontend/has_menu.dart';
import 'package:eliud_core/style/frontend/types.dart';
import 'package:eliud_core/tools/etc.dart';
import 'package:flutter/material.dart';

import '../../styles/mona_style.dart';

class MonaMenuImpl implements HasMenu {
  final MonaStyle _monaStyle;

  MonaMenuImpl(this._monaStyle);

  @override
  Future<void> openMenu(AppModel app,BuildContext context,
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
    return MenuHelper(_monaStyle.frontEndStyle()).openMenu(app, context, position: position, menuItems: menuItems, popupMenuBackgroundColor:  popupMenuBackgroundColor);
  }
}

import 'package:eliud_core_model/model/app_model.dart';
import 'package:eliud_core_model/model/background_model.dart';
import 'package:eliud_core_model/model/member_model.dart';
import 'package:eliud_core_model/model/rgb_model.dart';
import 'package:eliud_core_model/style/frontend/has_bottom_navigation_bar.dart';
import 'package:eliud_core_model/style/frontend/types.dart';
import 'package:eliud_core_model/tools/etc/etc.dart';
import 'package:eliud_stl_mona/tools/font_tools.dart';
import 'package:flutter/material.dart';

import '../../styles/mona_style.dart';

class MonaBottomNavigationBarImpl implements HasBottomNavigationBar {
  final MonaStyle _monaStyle;

  MonaBottomNavigationBarImpl(this._monaStyle);

  Widget getIconExcl(
      AppModel app, BuildContext context, AbstractMenuItemAttributes item) {
    if (item.icon != null) {
      return item.isActive
          ? _monaStyle
              .frontEndStyle()
              .iconStyle()
              .h3Icon(app, context, icon: item.icon!)
          : _monaStyle
              .frontEndStyle()
              .iconStyle()
              .h4Icon(app, context, icon: item.icon!);
    } else {
      Color? color;
      TextStyle? style;
      if (item.isActive) {
        style = FontTools.textStyle(_monaStyle.monaStyleAttributesModel.h3);
      } else {
        style = FontTools.textStyle(_monaStyle.monaStyleAttributesModel.h4);
      }
      color = style?.color;
      return Icon(Icons.circle, color: color);
    }
  }

  @override
  Widget bottomNavigationBar(
    AppModel app,
    BuildContext context, {
    required MemberModel? member,
    BackgroundModel? backgroundOverride,
    RgbModel? popupMenuBackgroundColorOverride,
    required List<AbstractMenuItemAttributes> items,
    Key? key,
  }) {
    var background = backgroundOverride ??=
        _monaStyle.monaStyleAttributesModel.bottomNavigationBarBG;
    var selectedRgbColor = _monaStyle.monaStyleAttributesModel.h3!.color;
    var selectedColor = selectedRgbColor == null
        ? Colors.black
        : RgbHelper.color(rgbo: selectedRgbColor);

    var rgbColor = _monaStyle.monaStyleAttributesModel.h4!.color;
    var color =
        rgbColor == null ? Colors.black : RgbHelper.color(rgbo: rgbColor);

    int? selected; // must have 1 selected
    for (int i = 0; i < items.length; i++) {
      if (items[i].isActive) {
        selected = i;
        break;
      }
    }
    return Container(
        clipBehavior:
            BoxDecorationHelper.determineClipBehaviour(app, member, background),
        margin: BoxDecorationHelper.determineMargin(app, member, background),
        padding: BoxDecorationHelper.determinePadding(app, member, background),
        decoration: BoxDecorationHelper.boxDecoration(app, member, background),
        child: Theme(
            data: Theme.of(context).copyWith(
                textTheme: Theme.of(context).textTheme.copyWith(
                      bodyMedium: FontTools.textStyle(
                          _monaStyle.monaStyleAttributesModel.h4),
                    )), // sets the inactive color of the `BottomNavigationBar`
            child: BottomNavigationBar(
                key: key,
                elevation: 0,
                selectedFontSize: 16,
                unselectedFontSize: 14,
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.transparent,
                onTap: (item) {
                  var theItem = items[item];
                  if (theItem is MenuItemAttributes) {
                    theItem.onTap();
                  } else if (theItem is MenuItemWithMenuItems) {
                    _monaStyle.frontEndStyle().menuStyle().openMenu(
                        app, context,
                        position:
                            RelativeRect.fromLTRB(1000.0, 1000.0, 0.0, 0.0),
                        menuItems: theItem.items,
                        popupMenuBackgroundColorOverride:
                            popupMenuBackgroundColorOverride);
                  }
                },
                currentIndex: selected ?? 0,
                fixedColor: selected == null ? color : selectedColor,
                unselectedItemColor: color,
                items: items.map((item) {
                  return BottomNavigationBarItem(
                    label: item.label,
                    icon: getIconExcl(app, context, item),
                  );
                }).toList())));
  }
}

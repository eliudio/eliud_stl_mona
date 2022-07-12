import 'package:eliud_core/core/blocs/access/access_bloc.dart';
import 'package:eliud_core/model/app_model.dart';
import 'package:eliud_core/model/background_model.dart';
import 'package:eliud_core/model/member_model.dart';
import 'package:eliud_core/model/rgb_model.dart';
import 'package:eliud_core/style/frontend/has_bottom_navigation_bar.dart';
import 'package:eliud_core/style/frontend/types.dart';
import 'package:eliud_core/tools/etc.dart';
import 'package:eliud_stl_mona/tools/font_tools.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      var color;
      var style;
      if (item.isActive) {
        style = FontTools.textStyle(_monaStyle.monaStyleAttributesModel.h3);
      } else {
        style = FontTools.textStyle(_monaStyle.monaStyleAttributesModel.h4);
      }
      color = style != null ? style.color : null;
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
    var selectedColor = selectedRgbColor == null ? Colors.teal : RgbHelper.color(rgbo: selectedRgbColor);

    var rgbColor = _monaStyle.monaStyleAttributesModel.fontText!.color;
    var color = rgbColor == null ? Colors.black : RgbHelper.color(rgbo: rgbColor);

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
                      bodyText2: FontTools.textStyle(
                          _monaStyle.monaStyleAttributesModel.h3),
                    )), // sets the inactive color of the `BottomNavigationBar`
            child: BottomNavigationBar(
                key: key,
                elevation: 0,
                selectedFontSize: 14,
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

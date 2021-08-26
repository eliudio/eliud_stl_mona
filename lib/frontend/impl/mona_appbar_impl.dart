import 'package:eliud_core/core/access/bloc/access_bloc.dart';
import 'package:eliud_core/default_style/frontend/helper/appbar_helper.dart';
import 'package:eliud_core/default_style/frontend/impl/default_menu_impl.dart';
import 'package:eliud_core/model/app_bar_model.dart';
import 'package:eliud_core/model/background_model.dart';
import 'package:eliud_core/model/rgb_model.dart';
import 'package:eliud_core/style/frontend/has_appbar.dart';
import 'package:eliud_core/style/frontend/types.dart';
import 'package:eliud_core/style/tools/colors.dart';
import 'package:eliud_core/tools/etc.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../mona_style.dart';
import 'mona_menu_impl.dart';

class MonaAppBarImpl implements HasAppBar {
  final MonaStyle _monaStyle;

  MonaAppBarImpl(this._monaStyle);

  @override
  PreferredSizeWidget appBar(BuildContext context,
      {required AppbarHeaderAttributes headerAttributes,
      required String pageName,
      List<AbstractMenuItemAttributes>? items,
      BackgroundModel? backgroundOverride,
      RgbModel? menuBackgroundColorOverride,
      RgbModel? selectedIconColorOverride,
      RgbModel? iconColorOverride,
      VoidCallback? openDrawer,
      Key? key}) {
    var background =
        backgroundOverride ?? _monaStyle.monaStyleAttributesModel.appBarBG;
    var iconColor = iconColorOverride ??
        _monaStyle.monaStyleAttributesModel.appBarIconColor;
    var selectedIconColor = selectedIconColorOverride ??
        _monaStyle.monaStyleAttributesModel.appBarSelectedIconColor;
    var menuBackgroundColor = menuBackgroundColorOverride ??
        _monaStyle.monaStyleAttributesModel.appBarMenuBackgroundColor;

    var appBarHelper = AppBarHelper(_monaStyle.frontEndStyle(), MonaMenuImpl(_monaStyle));
    var _title = appBarHelper.title(context, headerAttributes, pageName);

    var iconThemeData = IconThemeData(color: RgbHelper.color(rgbo: iconColor));

    // add menu items
    List<Widget>? buttons;
    if (items != null) {
      buttons = items
          .map((item) => appBarHelper.button(
              context, item, menuBackgroundColor, selectedIconColor, iconColor))
          .toList();
    } else {
      buttons = [];
    }

    // add profilePhoto
    var member = AccessBloc.member(context);
    if (member != null) {
      buttons.add(_monaStyle
          .frontEndStyle()
          .profilePhotoStyle()
          .getProfilePhotoButtonFromMember(context,
              member: member,
              radius: 20,
              iconColor: EliudColors.white,
              onPressed: openDrawer));
    }

    var state = AccessBloc.getState(context);
    return AppBar(
        key: key,
        iconTheme: iconThemeData,
        title: _title,
        actions: buttons,
        flexibleSpace: Container(
            decoration: BoxDecorationHelper.boxDecoration(state, background)));
  }
/*

  Widget title(BuildContext context, AppbarHeaderAttributes headerAttributes,
      String _pageName) {
    switch (headerAttributes.header) {
      case HeaderSelection.Title:
        if (headerAttributes.title != null) {
          return constructTitle(
              context,
              _monaStyle
                  .frontEndStyle()
                  .textStyle()
                  .h1(context, headerAttributes.title!),
              null);
        }
        break;
      case HeaderSelection.Image:
        if ((headerAttributes.memberMediumModel != null) &&
            (headerAttributes.memberMediumModel!.url != null)) {
          return constructTitle(
              context,
              FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: headerAttributes.memberMediumModel!.url!,
                height: kToolbarHeight,
              ),
              null);
        }
        break;
      case HeaderSelection.Icon:
        if (headerAttributes.icon != null) {
          var icon =
              IconHelper.getIconFromModel(iconModel: headerAttributes.icon);
          if (icon != null) {
            return constructTitle(context, icon, _pageName);
          }
        }
        break;
    }
    return pageName(context, _pageName);
  }

  Widget pageName(BuildContext context, String pageName) {
    return _monaStyle.frontEndStyle().textStyle().h1(context, pageName);
  }

  Widget constructTitle(BuildContext context, Widget widget, String? _pageName) {
    return Row(
        children: [widget, Container(width: 20), if (_pageName != null) pageName(context, _pageName)]);
  }

  Widget button(
    BuildContext context,
    AbstractMenuItemAttributes item,
    RgbModel? menuBackgroundColor,
    RgbModel? selectedIconColor,
    RgbModel? iconColor,
  ) {
    var _color = item.isActive
        ? RgbHelper.color(rgbo: selectedIconColor)
        : RgbHelper.color(rgbo: iconColor);

    var _rgbcolor = item.isActive ? selectedIconColor : iconColor;
    if (item is MenuItemAttributes) {
      if (item.icon != null) {
        return IconButton(
            icon: IconHelper.getIconFromModel(iconModel: item.icon)!,
            color: _color,
            onPressed: item.onTap);
      } else if (item.imageURL != null) {
        return IconButton(
            icon: Image.network(item.imageURL!),
            color: RgbHelper.color(rgbo: iconColor),
            onPressed: item.onTap);
      } else {
        return Center(
            child: _monaStyle.frontEndStyle().buttonStyle().button(
                  context,
                  label: item.label == null ? '?' : item.label!,
                  onPressed: item.onTap,
                ));
      }
    } else if (item is MenuItemWithMenuItems) {
      var icon =
          IconHelper.getIconFromModel(iconModel: item.icon, color: _rgbcolor);
      var text = _monaStyle.frontEndStyle().textStyle().text(context, (item.label!));
      var popupMenu = PopupMenuButton<int>(
          icon: icon,
          child: icon == null ? text : null,
          onSelected: (int result) {
            var thisItem = item.items[result];
            if (thisItem is MenuItemWithMenuItems) {
              EliudMenuImpl(_monaStyle).openMenu(context,
                  position: RelativeRect.fromLTRB(1000.0, 0.0, 0.0, 0.0),
                  menuItems: thisItem.items,
                  popupMenuBackgroundColorOverride: menuBackgroundColor);
            } else if (thisItem is MenuItemAttributes) {
              thisItem.onTap();
            }
          },
          itemBuilder: (BuildContext context) {
            var entries = <PopupMenuEntry<int>>[];
            var index = 0;
            item.items.forEach((thisItem) {
              var style = thisItem.isActive
                  ? _monaStyle
                      .frontEndStyle()
                      .textStyleStyle()
                      .styleH3(context)
                  : _monaStyle
                      .frontEndStyle()
                      .textStyleStyle()
                      .styleH4(context);
              var label = thisItem.label!;
              var menuItem = PopupMenuItem<int>(
                value: index,
                child: _monaStyle.frontEndStyle().textStyle().text(context, label),
                textStyle: style,
              );
              entries.add(menuItem);
              index++;
            });

            return entries;
          });

      return Theme(
          data: Theme.of(context).copyWith(
            cardColor: RgbHelper.color(rgbo: menuBackgroundColor),
          ),
          child: popupMenu);
    } else {
      throw Exception("item $item not supported");
    }
  }
*/
}

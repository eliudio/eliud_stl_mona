import 'package:eliud_core/model/app_model.dart';
import 'package:eliud_core/model/background_model.dart';
import 'package:eliud_core/model/member_model.dart';
import 'package:eliud_core/model/rgb_model.dart';
import 'package:eliud_core/style/frontend/has_drawer.dart';
import 'package:eliud_core/style/frontend/types.dart';
import 'package:eliud_core/tools/etc.dart';
import 'package:flutter/material.dart';

import '../../styles/mona_style.dart';

class MonaDrawerImpl implements HasDrawer {
  final MonaStyle _monaStyle;

  MonaDrawerImpl(this._monaStyle);

  Widget _constructHeaderContainer(
      AppModel app,
      BuildContext context,
      String text,
      double? height,
      MemberModel? member,
      BackgroundModel? background) {
    var boxDecoration =
        BoxDecorationHelper.boxDecoration(app, member, background);
    if (boxDecoration != null) {
      var padding =
          BoxDecorationHelper.determinePadding(app, member, background);
      var child = Center(
          child: _monaStyle.frontEndStyle().textStyle().h3(app, context, text));
      if (padding == null) {
        return Container(
            clipBehavior: Clip.none,
            height: height,
            child: DrawerHeader(
                child: child,
                margin: BoxDecorationHelper.determineMargin(
                    app, member, background),
                decoration: boxDecoration));
      } else {
        return Container(
            clipBehavior: Clip.none,
            height: height,
            child: DrawerHeader(
                child: child,
                margin: BoxDecorationHelper.determineMargin(
                    app, member, background),
                padding: padding,
                decoration: boxDecoration));
      }
    } else {
      return Container();
    }
  }

  @override
  Drawer drawer(AppModel app, BuildContext context,
      {required DrawerType drawerType,
      required MemberModel? member,
      DrawerHeader1Attributes? header1,
      DrawerHeader2Attributes? header2,
      BackgroundModel? backgroundOverride,
      RgbModel? popupMenuBackgroundColorOverride,
      required List<AbstractMenuItemAttributes> items,
      Key? key}) {
    //var theState = AccessBloc.getState(context);
    var widgets = <Widget>[];
    BackgroundModel? background;
    if (header1 != null) {
      var background = header1.backgroundOverride;
      if (background == null) {
        if (drawerType == DrawerType.left) {
          background = _monaStyle.monaStyleAttributesModel.drawerHeaderBG;
        } else {
          background =
              _monaStyle.monaStyleAttributesModel.profileDrawerHeaderBG;
        }
      }
      widgets.add(_constructHeaderContainer(app, context, header1.text,
          header1.height == 0 ? null : header1.height, member, background));
    } else {
      if (drawerType == DrawerType.left) {
        background = _monaStyle.monaStyleAttributesModel.drawerHeaderBG;
      } else {
        background = _monaStyle.monaStyleAttributesModel.profileDrawerHeaderBG;
      }
      if (background != null) {
        widgets.add(_constructHeaderContainer(
            app, context, "", null, member, background));
      }
    }

    for (var item in items) {
      var style = item.isActive
          ? _monaStyle.frontEndStyle().textStyleStyle().styleH3(app, context)
          : _monaStyle.frontEndStyle().textStyleStyle().styleH4(app, context);

      var theIcon = item.icon == null
          ? null
          : IconHelper.getIconFromModelWithFlutterColor(
              iconModel: item.icon, color: style!.color);
      var theText = item.isActive
          ? _monaStyle
              .frontEndStyle()
              .textStyle()
              .h3(app, context, item.label!, textAlign: TextAlign.center)
          : _monaStyle
              .frontEndStyle()
              .textStyle()
              .h4(app, context, item.label!, textAlign: TextAlign.center);
      widgets.add(ListTile(
          leading: theIcon,
          title: theText,
          onTap: () {
            if (item is MenuItemAttributes) {
              item.onTap();
            } else if (item is MenuItemWithMenuItems) {
              var theMenuItemWithMenuItems = item;
              _monaStyle.frontEndStyle().menuStyle().openMenu(app, context,
                  position: RelativeRect.fromLTRB(1000.0, 1000.0, 0.0, 0.0),
                  menuItems: theMenuItemWithMenuItems.items,
                  popupMenuBackgroundColorOverride:
                      popupMenuBackgroundColorOverride);
            }
          }));
    }

    var background2 = backgroundOverride;
    if (background2 == null) {
      if (drawerType == DrawerType.left) {
        background2 = _monaStyle.monaStyleAttributesModel.drawerBG;
      } else {
        background2 = _monaStyle.monaStyleAttributesModel.profileDrawerBG;
      }
    }

    return Drawer(
        key: key,
        child: Container(
            clipBehavior: BoxDecorationHelper.determineClipBehaviour(
                app, member, background2),
            decoration:
                BoxDecorationHelper.boxDecoration(app, member, background2),
            margin:
                BoxDecorationHelper.determineMargin(app, member, background2),
            padding:
                BoxDecorationHelper.determinePadding(app, member, background2),
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: widgets,
            )));
  }
}

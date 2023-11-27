import 'package:eliud_core_main/model/app_model.dart';
import 'package:eliud_core_main/model/member_model.dart';
import 'package:eliud_core_main/apis/style/admin/admin_list_style.dart';
import 'package:eliud_core_main/tools/etc/etc.dart';
import 'package:flutter/material.dart';

import '../frontend/impl/delayed_circular_progress_indicator.dart';
import '../styles/mona_style.dart';

class MonaAdminListStyle extends AdminListStyle {
  final MonaStyle _monaStyle;

  MonaAdminListStyle(this._monaStyle);

  @override
  Widget floatingActionButton(
      AppModel app, BuildContext context, String heroTag, Widget child,
      {VoidCallback? onPressed}) {
    return FloatingActionButton(
        heroTag: heroTag,
        foregroundColor: RgbHelper.color(
            rgbo: _monaStyle
                .monaStyleAttributesModel.floatingButtonForegroundColor),
        backgroundColor: RgbHelper.color(
            rgbo: _monaStyle
                .monaStyleAttributesModel.floatingButtonBackgroundColor),
        child: child,
        onPressed: onPressed);
  }

  @override
  Widget divider(AppModel app, BuildContext context) {
    return Divider(
        height: 1.0,
        thickness: 1.0,
        color: RgbHelper.color(
            rgbo: _monaStyle.monaStyleAttributesModel.dividerColor));
  }

  @override
  BoxDecoration? boxDecorator(
      AppModel app, BuildContext context, MemberModel? member) {
    return BoxDecorationHelper.boxDecoration(
        app, member, _monaStyle.monaStyleAttributesModel.listBackground);
  }

  @override
  Widget listItem(AppModel app, BuildContext context, String text) {
    return Text(
      text,
      style: TextStyle(
          color: RgbHelper.color(
              rgbo: _monaStyle.monaStyleAttributesModel.listTextItemColor)),
    );
  }

  @override
  Widget progressIndicator(AppModel app, BuildContext context,
      {Animation<Color>? valueColor}) {
    return Center(child: DelayedCircularProgressIndicator());
  }
}

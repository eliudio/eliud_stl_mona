import 'package:eliud_core/core/blocs/access/access_bloc.dart';
import 'package:eliud_core/model/app_model.dart';
import 'package:eliud_core/style/frontend/has_button.dart';
import 'package:eliud_core/style/frontend/has_dialog.dart';
import 'package:eliud_core/style/style_family.dart';
import 'package:eliud_stl_mona/model/abstract_repository_singleton.dart';
import 'package:eliud_stl_mona/widgets/update_style_widget.dart';
import 'package:flutter/widgets.dart';

import '../frontend/mona_frontend_style.dart';
import 'package:eliud_core/style/style.dart';
import '../admin/mona_admin_form_style.dart';
import '../admin/mona_admin_list_style.dart';
import '../model/mona_style_attributes_model.dart';

/*
 * We should consider to put more in the style API. For example we could include the appBar, the bottom navigation bar, the drawer, popup menu, ...
 */
class MonaStyle extends Style {
  final MonaStyleAttributesModel monaStyleAttributesModel;

  late MonaAdminFormStyle _adminFormStyle;
  late MonaAdminListStyle _adminListStyle;
  late MonaFrontEndStyle _frontEndFormStyle;

  MonaStyle(StyleFamily family, String styleName, AllowedUpdates allowedUpdates, this.monaStyleAttributesModel)
      : super(
          family,
          styleName,
    allowedUpdates,
        ) {
    _adminFormStyle = MonaAdminFormStyle(this);
    _adminListStyle = MonaAdminListStyle(this);
    _frontEndFormStyle = MonaFrontEndStyle(this);
  }

  @override
  MonaAdminFormStyle adminFormStyle() => _adminFormStyle;
  @override
  MonaAdminListStyle adminListStyle() => _adminListStyle;
  @override
  MonaFrontEndStyle frontEndStyle() => _frontEndFormStyle;

  Future<MonaStyle?> copy(AppModel app, String newName) async {
    var newModel = monaStyleAttributesModel.copyWith(documentID: newName);
    await monaStyleAttributesRepository(appId: app.documentID)!.add(newModel);
    return MonaStyle(styleFamily, newName, AllowedUpdates.allAllowed(), newModel);
  }

  bool update(AppModel app, BuildContext context) {
    var member = AccessBloc.member(context);
    if (member != null) {
      openFlexibleDialog(app, context, app.documentID + '/_updatestyle',
          title: 'Update style',
          child: UpdateStyleWidget(app: app,
            value: monaStyleAttributesModel,
            memberId: member.documentID,),
          buttons: [
            dialogButton(app, context,
                label: 'Cancel', onPressed: () => Navigator.of(context).pop()),
            dialogButton(app, context, label: 'Save', onPressed: () {
              monaStyleAttributesRepository(appId: app.documentID)!.update(
                  monaStyleAttributesModel);
              Navigator.of(context).pop();
            })
          ]);
    }
    return false;
  }

  @override
  List<Object?> get props =>
      [styleFamily, styleName, allowedUpdates, monaStyleAttributesModel];

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MonaStyle &&
          runtimeType == other.runtimeType &&
          styleFamily == other.styleFamily &&
          styleName == other.styleName &&
          monaStyleAttributesModel == other.monaStyleAttributesModel &&
          allowedUpdates == other.allowedUpdates;
}

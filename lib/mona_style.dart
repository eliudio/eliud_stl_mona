import 'package:eliud_core/core/blocs/access/access_bloc.dart';
import 'package:eliud_core/style/frontend/has_dialog.dart';
import 'package:eliud_core/style/style_family.dart';
import 'package:eliud_core/style/style_registry.dart';
import 'package:eliud_core/tools/action/action_model.dart';
import 'package:eliud_core/tools/enums.dart';
import 'package:flutter/widgets.dart';

import 'frontend/mona_frontend_style.dart';
import 'package:eliud_core/model/abstract_repository_singleton.dart';
import 'package:eliud_core/model/background_model.dart';
import 'package:eliud_core/model/decoration_color_model.dart';
import 'package:eliud_core/style/admin/admin_form_style.dart';
import 'package:eliud_core/style/admin/admin_list_style.dart';
import 'package:eliud_core/style/frontend/frontend_style.dart';
import 'package:eliud_core/style/style.dart';
import 'package:eliud_core/style/tools/backgrounds.dart';
import 'admin/mona_admin_form_style.dart';
import 'admin/mona_admin_list_style.dart';
import 'model/mona_style_attributes_form.dart';
import 'model/mona_style_attributes_model.dart';
import 'mona_style_family.dart';

/*
 * We should consider to put more in the style API. For example we could include the appBar, the bottom navigation bar, the drawer, popup menu, ...
 */
class MonaStyle extends Style {
  final MonaStyleAttributesModel monaStyleAttributesModel;

  late MonaAdminFormStyle _adminFormStyle;
  late MonaAdminListStyle _adminListStyle;
  late MonaFrontEndStyle _frontEndFormStyle;

  MonaStyle(StyleFamily family, String styleName, this.monaStyleAttributesModel)
      : super(
          family,
          styleName,
          AllowedUpdates.allAllowed(),
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

  MonaStyle? copy(String newName) => MonaStyle(styleFamily, newName,
      monaStyleAttributesModel.copyWith(documentID: newName));

  bool update(BuildContext context) {
    var appId = AccessBloc.currentAppId(context);
    if (appId != null) {
      openComplexDialog(context,
          appId + '/_updatestyle',
          title: 'Confirm',
          child: MonaStyleAttributesForm(
              formAction: FormAction.ShowPreloadedData,
              value: monaStyleAttributesModel,
              submitAction: FunctionToRun(appId, actionToRun: () {
                print("aaa");
              }
              )
          )
      );
    } else {
      openErrorDialog(context, appId + '/_error', title: 'Error', errorMessage: 'No app available');
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

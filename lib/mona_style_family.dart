import 'dart:async';

import 'package:eliud_core/core/blocs/access/access_bloc.dart';
import 'package:eliud_core/model/app_model.dart';
import 'package:eliud_core/model/background_model.dart';
import 'package:eliud_core/model/member_model.dart';
import 'package:eliud_core/model/rgb_model.dart';
import 'package:eliud_core/style/admin/admin_form_style.dart';
import 'package:eliud_core/style/admin/admin_list_style.dart';
import 'package:eliud_core/style/frontend/frontend_style.dart';
import 'package:eliud_core/style/style.dart';
import 'package:eliud_core/style/style_family.dart';
import '../tools/font_tools.dart';
import 'package:eliud_stl_mona/model/abstract_repository_singleton.dart';
import 'package:flutter/widgets.dart';

import 'model/mona_style_attributes_model.dart';
import 'styles/mona_eliud_style.dart';
import 'styles/mona_incidamus_style.dart';
import 'styles/mona_juuwle_style.dart';
import 'styles/mona_minkey_style.dart';
import 'styles/mona_style.dart';

class MonaStyleFamily extends StyleFamily {
  static final String monaStyleFamilyName = 'monastyle';
  static final String eliudStyleName = 'eliud';
  static final String incidamusStyleName = 'incidamus';
  static final String juuwleStyleName = 'juuwle';
  static final String minkeyStyleName = 'minkey';

  static MonaStyleFamily? _instance;

  // map appId -> subscription
  Map<String, StreamSubscription?> _monaStyleAttributessListSubscription = {};

  // map appId -> styles
  Map<String, MonaStyle> _monaStyles = {};

  void listen(String appId, String styleName) {
    // todo: listen to the app, if the style changes, then re-listen to the style
    _monaStyleAttributessListSubscription[appId]?.cancel();
    _monaStyleAttributessListSubscription[appId] =
        monaStyleAttributesRepository(appId: appId)!.listenTo(styleName,
            (value) {
      if (value != null) {
        _monaStyles[appId] = MonaStyle(this, styleName, value);
        // todo: when the style changes: add an event to reload the page
      }
    });
  }

  static MonaStyleFamily instance() {
    if (_instance == null) {
      _instance = MonaStyleFamily._();
    }
    return _instance!;
  }

  Future<void> addApp(MemberModel? currentMember, AppModel app) async {
    if (app.styleFamily == monaStyleFamilyName) {
      var appId = app.documentID!;
      var styleName = app.styleName;
      if (styleName != null) {
        if (_monaStyles[appId] == null) {
          var monaStyleAttributesModel =
              await monaStyleAttributesRepository(appId: appId)!.get(styleName);
          if (monaStyleAttributesModel != null) {
            _monaStyles[appId] =
                MonaStyle(this, app.styleName!, monaStyleAttributesModel);
          } else {
            // if the member is the owner then add the style if one of the defaults
            if ((currentMember != null) &&
                (app.ownerID == currentMember.documentID)) {
              if (styleName == eliudStyleName) await createEliudStyle(appId);
              else if (styleName == incidamusStyleName) await createIncidamusStyle(appId);
              else if (styleName == juuwleStyleName) await createJuuwleStyle(appId);
              else if (styleName == minkeyStyleName) await createMinkeyStyle(appId);
            } else {
              throw Exception(
                  "Style with name " + styleName + " not found for app " +
                      appId);
            }
          }
        }

        // listen, but wait for the first listen to finish and the styles to be loaded so that when a style is retrieved (through method style) then it's available.
        listen(appId, styleName);
/*
      }
*/
      } else {
        throw Exception("styleName is null for for app " + appId);
      }
    }
  }

  Future<void> createEliudStyle(String appId) async {
    if (await monaStyleAttributesRepository(appId: appId)!
        .get(eliudStyleName) ==
        null) {
      await monaStyleAttributesRepository(appId: appId)!.add(
          await MonaEliudStyle.defaultStyleAttributesModel(
              appId, eliudStyleName));
    }
  }

  Future<void> createIncidamusStyle(String appId) async {
    if (await monaStyleAttributesRepository(appId: appId)!
            .get(incidamusStyleName) ==
        null) {
      await monaStyleAttributesRepository(appId: appId)!.add(
          await MonaIncidamusStyle.defaultStyleAttributesModel(
              appId, incidamusStyleName));
    }
  }

  Future<void> createJuuwleStyle(String appId) async {
    if (await monaStyleAttributesRepository(appId: appId)!
            .get(juuwleStyleName) ==
        null) {
      await monaStyleAttributesRepository(appId: appId)!.add(
          await MonaJuuwleStyle.defaultStyleAttributesModel(
              appId, juuwleStyleName));
    }
  }

  Future<void> createMinkeyStyle(String appId) async {
    if (await monaStyleAttributesRepository(appId: appId)!
            .get(minkeyStyleName) ==
        null) {
      await monaStyleAttributesRepository(appId: appId)!.add(
          await MonaMinkeyStyle.defaultStyleAttributesModel(
              appId, minkeyStyleName));
    }
  }

  MonaStyleFamily._() : super(monaStyleFamilyName, true);

  Future<Style?> defaultNew(String appId, String newName) async => MonaStyle(
      this,
      newName,
      await MonaEliudStyle.defaultStyleAttributesModel(appId, newName));

  @override
  Style? style(AppModel currentApp, String styleName) {
    var appId = currentApp.documentID!;
    var style = _monaStyles[appId];
    if ((style == null) || (style.styleName != styleName)) {
      return null;
    }
    return style;
  }

  // TODO: make this a future, query the collection
  Map<String, Style> allStylesMap(AppModel app) {
    return {};
  }
}

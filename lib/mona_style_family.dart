import 'dart:async';
import 'package:eliud_core/model/app_model.dart';
import 'package:eliud_core/model/member_model.dart';
import 'package:eliud_core/style/style.dart';
import 'package:eliud_core/style/style_family.dart';
import 'package:eliud_stl_mona/model/abstract_repository_singleton.dart';
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

  // map appId -> subscription to mona attributes model
  Map<String, StreamSubscription?> _monaStyleAttributessListSubscription = {};

  // map appId -> styles
  Map<String, MonaStyle> _monaStyles = {};

  // currentStyleTrigger is used to inform client of a change to the current style (and refresh)
  CurrentStyleTrigger? currentStyleTrigger;

  Future<MonaStyle?> listenToCurrentStyle(AppModel app, String styleName) async {
    var appId = app.documentID!;
    final completer = Completer<MonaStyle?>();
    _monaStyleAttributessListSubscription[appId]?.cancel();
    _monaStyleAttributessListSubscription[appId] =
        monaStyleAttributesRepository(appId: appId)!.listenTo(styleName,
            (value) {
      if (value != null) {
        var newStyle = MonaStyle(this, styleName, value);;
        _monaStyles[appId] = newStyle;
        if (completer.isCompleted) {
          currentStyleTrigger!();
        } else {
          completer.complete(newStyle);
        }
      } else {
        completer.complete();
      }
    });
    return await completer.future;
  }

  StreamSubscription<dynamic> listenToStyles(
      String appId, StylesTrigger stylesTrigger) {
    var stream =
        monaStyleAttributesRepository(appId: appId)!.listenWithDetails((list) {
      var mappedToStylesTriggers = list.map((value) {
        return MonaStyle(this, value!.documentID!, value);
      });
      stylesTrigger(mappedToStylesTriggers.toList());
      return mappedToStylesTriggers;
    });
    return stream;
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
        if ((_monaStyles[appId] == null) || (_monaStyles[appId]!.monaStyleAttributesModel.documentID != styleName)) {
          var monaStyle = await listenToCurrentStyle(app, styleName);
          if (monaStyle != null) {
            var monaStyleAttributesModel = monaStyle.monaStyleAttributesModel;
            _monaStyles[appId] =
                MonaStyle(this, app.styleName!, monaStyleAttributesModel);
          } else {
            // if the member is the owner then add the style if one of the defaults
            if ((currentMember != null) &&
                (app.ownerID == currentMember.documentID)) {
              var newStyle;
              if (styleName == eliudStyleName)
                newStyle = await createEliudStyle(appId);
              else if (styleName == incidamusStyleName)
                newStyle = await createIncidamusStyle(appId);
              else if (styleName == juuwleStyleName)
                newStyle = await createJuuwleStyle(appId);
              else if (styleName == minkeyStyleName)
                newStyle = await createMinkeyStyle(appId);
              if (newStyle != null) {
                _monaStyles[appId] = newStyle;
              }
            } else {
              throw Exception("Style with name " +
                  styleName +
                  " not found for app " +
                  appId);
            }
          }
        }

        // listen, but wait for the first listen to finish and the styles to be loaded so that when a style is retrieved (through method style) then it's available.
        //listenToCurrentApp(app, styleName);
/*
      }
*/
      } else {
        throw Exception("styleName is null for for app " + appId);
      }
    }
  }

  Future<MonaStyle?> createEliudStyle(String appId) async {
/*
    if (await monaStyleAttributesRepository(appId: appId)!
            .get(eliudStyleName) ==
        null) {
*/
      var monaStyleAttributes = await monaStyleAttributesRepository(appId: appId)!.add(
          await MonaEliudStyle.defaultStyleAttributesModel(
              appId, eliudStyleName));
      var monaStyle = MonaStyle(this, monaStyleAttributes.documentID!, monaStyleAttributes);
      return monaStyle;
/*
    } else {
      return null;
    }
*/
  }

  Future<MonaStyle?> createIncidamusStyle(String appId) async {
/*
    if (await monaStyleAttributesRepository(appId: appId)!
            .get(incidamusStyleName) ==
        null) {
*/
      var monaStyleAttributes = await monaStyleAttributesRepository(appId: appId)!.add(
          await MonaIncidamusStyle.defaultStyleAttributesModel(
              appId, incidamusStyleName));
      var monaStyle = MonaStyle(this, monaStyleAttributes.documentID!, monaStyleAttributes);
      return monaStyle;
/*
    } else {
      return null;
    }
*/
  }

  Future<MonaStyle?> createJuuwleStyle(String appId) async {
/*
    if (await monaStyleAttributesRepository(appId: appId)!
            .get(juuwleStyleName) ==
        null) {
*/
      var monaStyleAttributes = await monaStyleAttributesRepository(appId: appId)!.add(
          await MonaJuuwleStyle.defaultStyleAttributesModel(
              appId, juuwleStyleName));
      var monaStyle = MonaStyle(this, monaStyleAttributes.documentID!, monaStyleAttributes);
      return monaStyle;
/*
    } else {
      return null;
    }
*/
  }

  Future<MonaStyle?> createMinkeyStyle(String appId) async {
/*
    if (await monaStyleAttributesRepository(appId: appId)!
            .get(minkeyStyleName) ==
        null) {
*/
      var monaStyleAttributes = await monaStyleAttributesRepository(appId: appId)!.add(
          await MonaMinkeyStyle.defaultStyleAttributesModel(
              appId, minkeyStyleName));
      var monaStyle = MonaStyle(this, monaStyleAttributes.documentID!, monaStyleAttributes);
      return monaStyle;
/*
    } else {
      return null;
    }
*/
  }

  MonaStyleFamily._() : super(monaStyleFamilyName, true, true);

  Future<Style?> defaultNew(String appId, String newName) async => MonaStyle(
      this,
      newName,
      await MonaEliudStyle.defaultStyleAttributesModel(appId, newName));

  @override
  Future<void> installDefaults(AppModel app) async {
    var appId = app.documentID!;
    await createEliudStyle(appId);
    await createIncidamusStyle(appId);
    await createJuuwleStyle(appId);
    await createMinkeyStyle(appId);
  }

  Future<List<Style>> allStyles(AppModel app) async {
    return (await monaStyleAttributesRepository(appId: app.documentID!)!
            .valuesListWithDetails())
        .map((monaStyleAttributesModel) {
      return MonaStyle(this, monaStyleAttributesModel!.documentID!,
          monaStyleAttributesModel);
    }).toList();
  }

  @override
  Style? getStyle(AppModel currentApp, String styleName) {
    var appId = currentApp.documentID!;
    var style = _monaStyles[appId];
    if ((style == null) || (style.styleName != styleName)) {
      return null;
    }
    return style;
  }

  @override
  void delete(AppModel app, Style style) {
    if (style is MonaStyle) {
      monaStyleAttributesRepository(appId: app.documentID!)!.delete(
          style.monaStyleAttributesModel);
    } else {
      throw Exception("Style is not a mona style");
    }
  }

  @override
  void update(AppModel app, Style style) {
    if (style is MonaStyle) {
      var currentStyle = getStyle(app, style.styleName);
      if ((currentStyle != null) && (currentStyle == style) && (currentStyleTrigger != null)) {
        monaStyleAttributesRepository(appId: app.documentID!)!.update(
            style.monaStyleAttributesModel).then((value) {
        });
      } else {
        monaStyleAttributesRepository(appId: app.documentID!)!.update(
            style.monaStyleAttributesModel);
      }
    } else {
      throw Exception("Style is not a mona style");
    }
  }

  @override
  void subscribeForChange(CurrentStyleTrigger? newCurrentStyleTrigger) {
    currentStyleTrigger = newCurrentStyleTrigger;
  }
}

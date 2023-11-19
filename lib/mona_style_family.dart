import 'dart:async';

import 'package:eliud_core_model/model/app_model.dart';
import 'package:eliud_core_model/model/member_model.dart';
import 'package:eliud_core_model/style/style.dart';
import 'package:eliud_core_model/style/style_family.dart';
import 'package:eliud_stl_mona/model/abstract_repository_singleton.dart';
import 'package:eliud_stl_mona/styles/mona_johan_style.dart';
import 'package:eliud_stl_mona/styles/mona_thomas_style.dart';

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
  static final String johanStyleName = 'johan';
  static final String thomasStyleName = 'thomas';
  static final String minkeyStyleName = 'minkey';

  static MonaStyleFamily? _instance;

  // map appId -> subscription to mona attributes model
  final Map<String, StreamSubscription?> _monaStyleAttributessListSubscription =
      {};

  // map appId -> styles
  final Map<String, MonaStyle> _monaStyles = {};

  // currentStyleTrigger is used to inform client of a change to the current style (and refresh)
  final List<CurrentStyleTrigger> triggers = [];

  Future<MonaStyle?> listenToCurrentStyle(
      AppModel app, String styleName) async {
    var appId = app.documentID;
    if (styleName == eliudStyleName) {
      _monaStyles[appId] = await createEliudStyle(appId);
      return _monaStyles[appId];
    }
    if (styleName == incidamusStyleName) {
      _monaStyles[appId] = await createIncidamusStyle(appId);
      return _monaStyles[appId];
    }
    if (styleName == johanStyleName) {
      _monaStyles[appId] = await createJohanStyle(appId);
      return _monaStyles[appId];
    }

    if (styleName == thomasStyleName) {
      _monaStyles[appId] = await createThomasStyle(appId);
      return _monaStyles[appId];
    }

    if (styleName == juuwleStyleName) {
      _monaStyles[appId] = await createJuuwleStyle(appId);
      return _monaStyles[appId];
    }
    if (styleName == minkeyStyleName) {
      _monaStyles[appId] = await createMinkeyStyle(appId);
      return _monaStyles[appId];
    }

    final completer = Completer<MonaStyle?>();
    _monaStyleAttributessListSubscription[appId]?.cancel();
    _monaStyleAttributessListSubscription[appId] =
        monaStyleAttributesRepository(appId: appId)!.listenTo(styleName,
            (value) {
      if (value != null) {
        var newStyle =
            MonaStyle(this, styleName, AllowedUpdates.allAllowed(), value);
        _monaStyles[appId] = newStyle;
        if (completer.isCompleted) {
          for (var trigger in triggers) {
            trigger();
          }
        } else {
          completer.complete(newStyle);
        }
      } else {
        completer.complete();
      }
    });
    return await completer.future;
  }

  @override
  StreamSubscription<dynamic> listenToStyles(
      String appId, StylesTrigger stylesTrigger) {
    var stream =
        monaStyleAttributesRepository(appId: appId)!.listenWithDetails((list) {
      var mappedToStylesTriggers = list.map((value) {
        return MonaStyle(
            this, value!.documentID, AllowedUpdates.allAllowed(), value);
      });
      var theList = mappedToStylesTriggers.toList();
      addTheFourDefaults(appId, theList);
      stylesTrigger(theList);
      return mappedToStylesTriggers;
    });
    return stream;
  }

  static MonaStyleFamily instance() {
    _instance ??= MonaStyleFamily._();
    return _instance!;
  }

  @override
  Future<void> addApp(MemberModel? currentMember, AppModel app) async {
    if (app.styleFamily == monaStyleFamilyName) {
      var appId = app.documentID;
      var styleName = app.styleName;
      if (styleName != null) {
        if ((_monaStyles[appId] == null) ||
            (_monaStyles[appId]!.monaStyleAttributesModel.documentID !=
                styleName)) {
          var monaStyle = await listenToCurrentStyle(app, styleName);
          if (monaStyle != null) {
            _monaStyles[appId] = monaStyle;
          } else {
            print("Style with name $styleName not found for app $appId");
          }
        }
      } else {
        throw Exception("styleName is null for for app $appId");
      }
    }
  }

  Future<MonaStyle> createEliudStyle(String appId) async {
    return MonaStyle(
        this,
        eliudStyleName,
        AllowedUpdates.readOnly(),
        await MonaEliudStyle.defaultStyleAttributesModel(
            appId, eliudStyleName));
  }

  Future<MonaStyle> createIncidamusStyle(String appId) async {
    return MonaStyle(
        this,
        incidamusStyleName,
        AllowedUpdates.readOnly(),
        await MonaIncidamusStyle.defaultStyleAttributesModel(
            appId, incidamusStyleName));
  }

  Future<MonaStyle> createJohanStyle(String appId) async {
    return MonaStyle(
        this,
        johanStyleName,
        AllowedUpdates.readOnly(),
        await MonaJohanStyle.defaultStyleAttributesModel(
            appId, johanStyleName));
  }

  Future<MonaStyle> createThomasStyle(String appId) async {
    return MonaStyle(
        this,
        thomasStyleName,
        AllowedUpdates.readOnly(),
        await MonaThomasStyle.defaultStyleAttributesModel(
            appId, thomasStyleName));
  }

  Future<MonaStyle> createJuuwleStyle(String appId) async {
    return MonaStyle(
        this,
        juuwleStyleName,
        AllowedUpdates.readOnly(),
        await MonaJuuwleStyle.defaultStyleAttributesModel(
            appId, juuwleStyleName));
  }

  Future<MonaStyle> createMinkeyStyle(String appId) async {
    return MonaStyle(
        this,
        minkeyStyleName,
        AllowedUpdates.readOnly(),
        await MonaMinkeyStyle.defaultStyleAttributesModel(
            appId, minkeyStyleName));
  }

  Future<void> addTheFourDefaults(String appId, List<Style> allStyles) async {
    allStyles.add(await createEliudStyle(appId));
    allStyles.add(await createIncidamusStyle(appId));
    allStyles.add(await createJuuwleStyle(appId));
    allStyles.add(await createMinkeyStyle(appId));
    allStyles.add(await createJohanStyle(appId));
    allStyles.add(await createThomasStyle(appId));
  }

  MonaStyleFamily._() : super(monaStyleFamilyName, true);

  @override
  Future<Style?> defaultNew(String appId, String newName) async => MonaStyle(
      this,
      newName,
      AllowedUpdates.allAllowed(),
      await MonaEliudStyle.defaultStyleAttributesModel(appId, newName));

  Future<List<Style>> allStyles(AppModel app) async {
    var appId = app.documentID;
    var allStyles = (await monaStyleAttributesRepository(appId: appId)!
            .valuesListWithDetails())
        .map((monaStyleAttributesModel) {
      return MonaStyle(this, monaStyleAttributesModel!.documentID,
          AllowedUpdates.allAllowed(), monaStyleAttributesModel);
    }).toList();

    // add the read-only default styles
    addTheFourDefaults(appId, allStyles);
    return allStyles;
  }

  @override
  Style? getStyle(AppModel currentApp, String styleName) {
    return getMonaStyle(currentApp, styleName);
  }

  MonaStyle? getMonaStyle(AppModel currentApp, String styleName) {
    var appId = currentApp.documentID;
    var style = _monaStyles[appId];
    if ((style == null) || (style.styleName != styleName)) {
      return null;
    }
    return style;
  }

  @override
  Future<void> delete(AppModel app, Style style) {
    if (style is MonaStyle) {
      return monaStyleAttributesRepository(appId: app.documentID)!
          .delete(style.monaStyleAttributesModel);
    } else {
      throw Exception("Style is not a mona style");
    }
  }

  @override
  Future<void> update(AppModel app, Style style) {
    if (style is MonaStyle) {
      var currentStyle = getStyle(app, style.styleName);
      if ((currentStyle != null) && (currentStyle == style)) {
        return monaStyleAttributesRepository(appId: app.documentID)!
            .update(style.monaStyleAttributesModel)
            .then((value) {});
      } else {
        return monaStyleAttributesRepository(appId: app.documentID)!
            .update(style.monaStyleAttributesModel);
      }
    } else {
      throw Exception("Style is not a mona style");
    }
  }

  @override
  Future<Style> newStyle(AppModel app, String newName) async {
    var newModel = await MonaMinkeyStyle.defaultStyleAttributesModel(
        app.documentID, newName);
    await monaStyleAttributesRepository(appId: app.documentID)!.add(newModel);
    return MonaStyle(this, newName, AllowedUpdates.allAllowed(), newModel);
  }

  @override
  void subscribeForChange(CurrentStyleTrigger currentStyleTrigger) {
    if (!triggers.contains(currentStyleTrigger)) {
      triggers.add(currentStyleTrigger);
    }
  }
}

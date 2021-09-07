import 'package:eliud_core/model/background_model.dart';
import 'package:eliud_core/model/rgb_model.dart';
import 'package:eliud_core/style/admin/admin_form_style.dart';
import 'package:eliud_core/style/admin/admin_list_style.dart';
import 'package:eliud_core/style/frontend/frontend_style.dart';
import 'package:eliud_core/style/style.dart';
import 'package:eliud_core/style/style_family.dart';
import 'package:eliud_core/style/tools/colors.dart';
import 'package:eliud_core/style/tools/font_tools.dart';
import 'package:flutter/widgets.dart';

import 'model/mona_style_attributes_model.dart';
import 'mona_eliud_style.dart';
import 'mona_incidamus_style.dart';
import 'mona_juuwle_style.dart';
import 'mona_minkey_style.dart';
import 'mona_style.dart';

class MonaStyleFamily extends StyleFamily {
  static final String monaStyleFamilyName = 'MonaStyle';

  static MonaStyleFamily? _instance;

  static MonaStyleFamily instance() {
    if (_instance == null) {
      _instance = MonaStyleFamily._();
      _instance!.registerAll([
        MonaStyle(
            _instance!, 'Eliud', MonaEliudStyle.styleAttributesModel('eliud')),
        MonaStyle(_instance!, 'Incidamus',
            MonaIncidamusStyle.styleAttributesModel('incidamus')),
        MonaStyle(_instance!, 'Juuwle',
            MonaJuuwleStyle.styleAttributesModel('juuwle')),
        MonaStyle(_instance!, 'Minkey',
            MonaMinkeyStyle.styleAttributesModel('minkey')),
      ]);
    }
    return _instance!;
  }

  MonaStyleFamily._() : super(monaStyleFamilyName, true);

  Style? defaultNew(String newName) =>
      MonaStyle(this, newName, MonaEliudStyle.styleAttributesModel(newName));

  @override
  StyleFamily copyWithNewStyles(Map<String, Style>? styles) {
    var newFamily = MonaStyleFamily._();
    if (styles != null) {
      newFamily.registerMap(styles);
    }
    return newFamily;
  }
}

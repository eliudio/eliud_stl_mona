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

class MonaStyleFamily extends StyleFamily {
  static final String monaStyleFamilyName = 'MonaStyle';

  static final MonaStyleFamily instance = MonaStyleFamily._();

  MonaStyleFamily._() : super(monaStyleFamilyName) {
    register(MonaEliudStyle(this));
    register(MonaIncidamusStyle(this));
    register(MonaJuuwleStyle(this));
    register(MonaMinkeyStyle(this));
  }

  /*
   * A StyleFamily can implement the widgetToUpdateStyle. If so, the eliud_decor_style
   * will allow to create / update the style
   */
  @override
  Widget? widgetToUpdateStyle(BuildContext context, Style style,) => null;
}
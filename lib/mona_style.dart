import 'package:eliud_core/style/style_registry.dart';

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
import 'instances/mona_eliud_style.dart';
import 'instances/mona_incidamus_style.dart';
import 'instances/mona_juuwle_style.dart';
import 'instances/mona_minkey_style.dart';
import 'model/mona_style_attributes_model.dart';

/*
 * We should consider to put more in the style API. For example we could include the appBar, the bottom navigation bar, the drawer, popup menu, ...
 */
class MonaStyle extends Style {
  static final String FAMILY_NAME = 'MonaStyle';
  final MonaStyleAttributesModel monaStyleAttributesModel;

  late AdminFormStyle _adminFormStyle;
  late AdminListStyle _adminListStyle;
  late FrontEndStyle _frontEndFormStyle;

  MonaStyle(String styleName, this.monaStyleAttributesModel) : super(FAMILY_NAME, styleName, ) {
    _adminFormStyle = MonaAdminFormStyle(this);
    _adminListStyle = MonaAdminListStyle(this);
    _frontEndFormStyle = MonaFrontEndStyle(this);
  }

  @override
  AdminFormStyle adminFormStyle() => _adminFormStyle;
  @override
  AdminListStyle adminListStyle() => _adminListStyle;
  @override
  FrontEndStyle frontEndStyle() => _frontEndFormStyle;
/*

  static String key(String styleName) => eliudFamilyName + '-' + styleName;

  static Future<MonaStyle> get(String styleName) async {
    var styleAttributesModel = await eliudStyleAttributesRepository()!.get(key(styleName));
    if (styleAttributesModel != null) {
      return MonaStyle(styleName, styleAttributesModel);
    } else {
      throw Exception('Can not find monaStyleAttributesModel with name $styleName');
    }
  }

*/
  static void registerAll() {
    StyleRegistry.registry().registerStyle(MonaEliudStyle());
    StyleRegistry.registry().registerStyle(MonaIncidamusStyle());
    StyleRegistry.registry().registerStyle(MonaJuuwleStyle());
    StyleRegistry.registry().registerStyle(MonaMinkeyStyle());
  }
}

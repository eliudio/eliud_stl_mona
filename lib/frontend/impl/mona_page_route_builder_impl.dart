import 'package:eliud_core/model/app_model.dart';
import 'package:eliud_core/style/frontend/has_page_route_builder.dart';
import 'package:eliud_core/style/frontend/has_tabs.dart';
import 'package:eliud_core/style/style.dart';
import 'package:eliud_core/tools/router_builders.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorful_tab/flutter_colorful_tab.dart';

import '../../styles/mona_style.dart';

class MonaPageRouteBuilderImpl
    implements HasPageRouteBuilder {
  final MonaStyle _monaStyle;

  MonaPageRouteBuilderImpl(this._monaStyle);

  @override
  PageRouteBuilder pageRoute(String name, Map<String, dynamic>? parameters, Widget page) {
    var milliseconds = _monaStyle.monaStyleAttributesModel.routeAnimationDuration ?? 1000;
    switch (_monaStyle.monaStyleAttributesModel.routeBuilder) {
      case PageTransitionAnimation.SlideRightToLeft:
        return RightToLeftRoute(name: name, parameters: parameters, page: page, milliseconds: milliseconds);
      case PageTransitionAnimation.SlideBottomToTop:
        return BottomToTopRoute(name: name, parameters: parameters, page: page, milliseconds: milliseconds);
      case PageTransitionAnimation.ScaleRoute:
        return ScaleRoute(name: name, parameters: parameters, page: page, milliseconds: milliseconds);
      case PageTransitionAnimation.RotationRoute:
        return RotationRoute(name: name, parameters: parameters, page: page, milliseconds: milliseconds);
      case PageTransitionAnimation.FadeRoute:
        return FadeRoute(name: name, parameters: parameters, page: page, milliseconds: milliseconds);
    }
    // default
    return FadeRoute(name: name, parameters: parameters, page: page, milliseconds: milliseconds);
  }
}


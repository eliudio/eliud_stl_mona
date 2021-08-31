import 'package:eliud_core/core/access/bloc/access_bloc.dart';
import 'package:eliud_core/model/app_bar_model.dart';
import 'package:eliud_core/model/background_model.dart';
import 'package:eliud_core/model/rgb_model.dart';
import 'package:eliud_core/style/frontend/has_app.dart';
import 'package:eliud_core/tools/etc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../mona_style.dart';
import 'mona_menu_impl.dart';

class MonaAppImpl implements HasApp {
  final MonaStyle _monaStyle;

  MonaAppImpl(this._monaStyle);

    @override
  Widget app({Key? key, GlobalKey<NavigatorState>? navigatorKey, GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey, String? initialRoute, RouteFactory? onGenerateRoute, RouteFactory? onUnknownRoute, required String title}) {
    return MaterialApp(
      key: key,
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      scaffoldMessengerKey: scaffoldMessengerKey,
      initialRoute: initialRoute,
      onGenerateRoute: onGenerateRoute,
      onUnknownRoute: onUnknownRoute,
      title: title,
    );

  // on apple we would possibly use:
/*
    return CupertinoApp(
    localizationsDelegates: [
    DefaultMaterialLocalizations.delegate,
    DefaultCupertinoLocalizations.delegate,
    DefaultWidgetsLocalizations.delegate,
  ],
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      initialRoute: initialRoute,
      onGenerateRoute: onGenerateRoute,
      onUnknownRoute: onUnknownRoute,
      title: title,
    );
*/
  }

}

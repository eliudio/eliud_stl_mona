import 'package:eliud_core_model/style/frontend/has_app.dart';
import 'package:flutter/material.dart';

class MonaAppImpl implements HasApp {
//  final MonaStyle _monaStyle;

  MonaAppImpl();

  @override
  Widget app(
      {Key? key,
      GlobalKey<NavigatorState>? navigatorKey,
      GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey,
      String? initialRoute,
      RouteFactory? onGenerateRoute,
      RouteFactory? onUnknownRoute,
      required String title}) {
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

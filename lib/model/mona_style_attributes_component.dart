/*
       _ _           _ 
      | (_)         | |
   ___| |_ _   _  __| |
  / _ \ | | | | |/ _` |
 |  __/ | | |_| | (_| |
  \___|_|_|\__,_|\__,_|
                       
 
 mona_style_attributes_component.dart
                       
 This code is generated. This is read only. Don't touch!

*/


import 'package:eliud_stl_mona/model/mona_style_attributes_component_bloc.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_component_event.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_model.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_repository.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_component_state.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eliud_core/style/style_registry.dart';
import 'abstract_repository_singleton.dart';
import 'package:eliud_core/core/widgets/alert_widget.dart';
import 'package:eliud_core/tools/main_abstract_repository_singleton.dart';
import 'package:eliud_core/model/app_model.dart';

abstract class AbstractMonaStyleAttributesComponent extends StatelessWidget {
  static String componentName = "monaStyleAttributess";
  final AppModel app;
  final String monaStyleAttributesId;

  AbstractMonaStyleAttributesComponent({Key? key, required this.app, required this.monaStyleAttributesId}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MonaStyleAttributesComponentBloc> (
          create: (context) => MonaStyleAttributesComponentBloc(
            monaStyleAttributesRepository: monaStyleAttributesRepository(appId: app.documentID!)!)
        ..add(FetchMonaStyleAttributesComponent(id: monaStyleAttributesId)),
      child: _monaStyleAttributesBlockBuilder(context),
    );
  }

  Widget _monaStyleAttributesBlockBuilder(BuildContext context) {
    return BlocBuilder<MonaStyleAttributesComponentBloc, MonaStyleAttributesComponentState>(builder: (context, state) {
      if (state is MonaStyleAttributesComponentLoaded) {
        if (state.value == null) {
          return AlertWidget(app: app, title: "Error", content: 'No MonaStyleAttributes defined');
        } else {
          return yourWidget(context, state.value);
        }
      } else if (state is MonaStyleAttributesComponentPermissionDenied) {
        return Icon(
          Icons.highlight_off,
          color: Colors.red,
          size: 30.0,
        );
      } else if (state is MonaStyleAttributesComponentError) {
        return AlertWidget(app: app, title: 'Error', content: state.message);
      } else {
        return Center(
          child: StyleRegistry.registry().styleWithApp(app).frontEndStyle().progressIndicatorStyle().progressIndicator(app, context),
        );
      }
    });
  }

  Widget yourWidget(BuildContext context, MonaStyleAttributesModel value);
}


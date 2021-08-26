/*
       _ _           _ 
      | (_)         | |
   ___| |_ _   _  __| |
  / _ \ | | | | |/ _` |
 |  __/ | | |_| | (_| |
  \___|_|_|\__,_|\__,_|
                       
 
 mona_style_attributes_component_bloc.dart
                       
 This code is generated. This is read only. Don't touch!

*/

import 'dart:async';
import 'package:bloc/bloc.dart';

import 'package:eliud_stl_mona/model/mona_style_attributes_model.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_component_event.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_component_state.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_repository.dart';
import 'package:flutter/services.dart';


class MonaStyleAttributesComponentBloc extends Bloc<MonaStyleAttributesComponentEvent, MonaStyleAttributesComponentState> {
  final MonaStyleAttributesRepository? monaStyleAttributesRepository;

  MonaStyleAttributesComponentBloc({ this.monaStyleAttributesRepository }): super(MonaStyleAttributesComponentUninitialized());
  @override
  Stream<MonaStyleAttributesComponentState> mapEventToState(MonaStyleAttributesComponentEvent event) async* {
    final currentState = state;
    if (event is FetchMonaStyleAttributesComponent) {
      try {
        if (currentState is MonaStyleAttributesComponentUninitialized) {
          bool permissionDenied = false;
          final model = await monaStyleAttributesRepository!.get(event.id, onError: (error) {
            // Unfortunatly the below is currently the only way we know how to identify if a document is read protected
            if ((error is PlatformException) &&  (error.message!.startsWith("PERMISSION_DENIED"))) {
              permissionDenied = true;
            }
          });
          if (permissionDenied) {
            yield MonaStyleAttributesComponentPermissionDenied();
          } else {
            if (model != null) {
              yield MonaStyleAttributesComponentLoaded(value: model);
            } else {
              String? id = event.id;
              yield MonaStyleAttributesComponentError(
                  message: "MonaStyleAttributes with id = '$id' not found");
            }
          }
          return;
        }
      } catch (_) {
        yield MonaStyleAttributesComponentError(message: "Unknown error whilst retrieving MonaStyleAttributes");
      }
    }
  }

  @override
  Future<void> close() {
    return super.close();
  }

}


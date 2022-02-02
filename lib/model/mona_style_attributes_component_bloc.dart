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
  StreamSubscription? _monaStyleAttributesSubscription;

  Stream<MonaStyleAttributesComponentState> _mapLoadMonaStyleAttributesComponentUpdateToState(String documentId) async* {
    _monaStyleAttributesSubscription?.cancel();
    _monaStyleAttributesSubscription = monaStyleAttributesRepository!.listenTo(documentId, (value) {
      if (value != null) add(MonaStyleAttributesComponentUpdated(value: value));
    });
  }

  MonaStyleAttributesComponentBloc({ this.monaStyleAttributesRepository }): super(MonaStyleAttributesComponentUninitialized());

  @override
  Stream<MonaStyleAttributesComponentState> mapEventToState(MonaStyleAttributesComponentEvent event) async* {
    final currentState = state;
    if (event is FetchMonaStyleAttributesComponent) {
      yield* _mapLoadMonaStyleAttributesComponentUpdateToState(event.id!);
    } else if (event is MonaStyleAttributesComponentUpdated) {
      yield MonaStyleAttributesComponentLoaded(value: event.value);
    }
  }

  @override
  Future<void> close() {
    _monaStyleAttributesSubscription?.cancel();
    return super.close();
  }

}


/*
       _ _           _ 
      | (_)         | |
   ___| |_ _   _  __| |
  / _ \ | | | | |/ _` |
 |  __/ | | |_| | (_| |
  \___|_|_|\__,_|\__,_|
                       
 
 mona_style_attributes_component_state.dart
                       
 This code is generated. This is read only. Don't touch!

*/

import 'package:equatable/equatable.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_model.dart';

abstract class MonaStyleAttributesComponentState extends Equatable {
  const MonaStyleAttributesComponentState();

  @override
  List<Object?> get props => [];
}

class MonaStyleAttributesComponentUninitialized extends MonaStyleAttributesComponentState {}

class MonaStyleAttributesComponentError extends MonaStyleAttributesComponentState {
  final String? message;
  MonaStyleAttributesComponentError({ this.message });
}

class MonaStyleAttributesComponentPermissionDenied extends MonaStyleAttributesComponentState {
  MonaStyleAttributesComponentPermissionDenied();
}

class MonaStyleAttributesComponentLoaded extends MonaStyleAttributesComponentState {
  final MonaStyleAttributesModel? value;

  const MonaStyleAttributesComponentLoaded({ this.value });

  MonaStyleAttributesComponentLoaded copyWith({ MonaStyleAttributesModel? copyThis }) {
    return MonaStyleAttributesComponentLoaded(value: copyThis ?? this.value);
  }

  @override
  List<Object?> get props => [value];

  @override
  String toString() => 'MonaStyleAttributesComponentLoaded { value: $value }';
}


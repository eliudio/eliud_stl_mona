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

/* 
 * MonaStyleAttributesComponentState is the base class for state for MonaStyleAttributesComponentBloc
 */
abstract class MonaStyleAttributesComponentState extends Equatable {
  const MonaStyleAttributesComponentState();

  @override
  List<Object?> get props => [];
}

/* 
 * MonaStyleAttributesComponentUninitialized is the uninitialized state of the MonaStyleAttributesComponentBloc 
 */
class MonaStyleAttributesComponentUninitialized extends MonaStyleAttributesComponentState {}

/* 
 * MonaStyleAttributesComponentError is the error state of the MonaStyleAttributesComponentBloc 
 */
class MonaStyleAttributesComponentError extends MonaStyleAttributesComponentState {
  final String? message;
  MonaStyleAttributesComponentError({ this.message });
}

/* 
 * MonaStyleAttributesComponentPermissionDenied is to indicate permission denied state of the MonaStyleAttributesComponentBloc 
 */
class MonaStyleAttributesComponentPermissionDenied extends MonaStyleAttributesComponentState {
  MonaStyleAttributesComponentPermissionDenied();
}

/* 
 * MonaStyleAttributesComponentLoaded is used to set the state of the MonaStyleAttributesComponentBloc to the loaded state
 */
class MonaStyleAttributesComponentLoaded extends MonaStyleAttributesComponentState {
  final MonaStyleAttributesModel value;

  /* 
   * construct MonaStyleAttributesComponentLoaded
   */
  const MonaStyleAttributesComponentLoaded({ required this.value });

  /* 
   * copy method
   */
  MonaStyleAttributesComponentLoaded copyWith({ MonaStyleAttributesModel? copyThis }) {
    return MonaStyleAttributesComponentLoaded(value: copyThis ?? this.value);
  }

  @override
  List<Object?> get props => [value];

  @override
  String toString() => 'MonaStyleAttributesComponentLoaded { value: $value }';
}


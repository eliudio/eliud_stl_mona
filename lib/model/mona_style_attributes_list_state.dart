/*
       _ _           _ 
      | (_)         | |
   ___| |_ _   _  __| |
  / _ \ | | | | |/ _` |
 |  __/ | | |_| | (_| |
  \___|_|_|\__,_|\__,_|
                       
 
 mona_style_attributes_list_state.dart
                       
 This code is generated. This is read only. Don't touch!

*/

import 'package:equatable/equatable.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_model.dart';

abstract class MonaStyleAttributesListState extends Equatable {
  const MonaStyleAttributesListState();

  @override
  List<Object?> get props => [];
}

class MonaStyleAttributesListLoading extends MonaStyleAttributesListState {}

class MonaStyleAttributesListLoaded extends MonaStyleAttributesListState {
  final List<MonaStyleAttributesModel?>? values;
  final bool? mightHaveMore;

  const MonaStyleAttributesListLoaded({this.mightHaveMore, this.values = const []});

  @override
  List<Object?> get props => [ values, mightHaveMore ];

  @override
  String toString() => 'MonaStyleAttributesListLoaded { values: $values }';
}

class MonaStyleAttributesNotLoaded extends MonaStyleAttributesListState {}


/*
       _ _           _ 
      | (_)         | |
   ___| |_ _   _  __| |
  / _ \ | | | | |/ _` |
 |  __/ | | |_| | (_| |
  \___|_|_|\__,_|\__,_|
                       
 
 mona_style_attributes_list_event.dart
                       
 This code is generated. This is read only. Don't touch!

*/

import 'package:equatable/equatable.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_model.dart';

abstract class MonaStyleAttributesListEvent extends Equatable {
  const MonaStyleAttributesListEvent();
  @override
  List<Object?> get props => [];
}

class LoadMonaStyleAttributesList extends MonaStyleAttributesListEvent {}

class NewPage extends MonaStyleAttributesListEvent {}

class AddMonaStyleAttributesList extends MonaStyleAttributesListEvent {
  final MonaStyleAttributesModel? value;

  const AddMonaStyleAttributesList({ this.value });

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'AddMonaStyleAttributesList{ value: $value }';
}

class UpdateMonaStyleAttributesList extends MonaStyleAttributesListEvent {
  final MonaStyleAttributesModel? value;

  const UpdateMonaStyleAttributesList({ this.value });

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'UpdateMonaStyleAttributesList{ value: $value }';
}

class DeleteMonaStyleAttributesList extends MonaStyleAttributesListEvent {
  final MonaStyleAttributesModel? value;

  const DeleteMonaStyleAttributesList({ this.value });

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'DeleteMonaStyleAttributesList{ value: $value }';
}

class MonaStyleAttributesListUpdated extends MonaStyleAttributesListEvent {
  final List<MonaStyleAttributesModel?>? value;
  final bool? mightHaveMore;

  const MonaStyleAttributesListUpdated({ this.value, this.mightHaveMore });

  @override
  List<Object?> get props => [ value, mightHaveMore ];

  @override
  String toString() => 'MonaStyleAttributesListUpdated{ value: $value, mightHaveMore: $mightHaveMore }';
}


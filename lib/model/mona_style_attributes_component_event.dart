/*
       _ _           _ 
      | (_)         | |
   ___| |_ _   _  __| |
  / _ \ | | | | |/ _` |
 |  __/ | | |_| | (_| |
  \___|_|_|\__,_|\__,_|
                       
 
 mona_style_attributes_component_event.dart
                       
 This code is generated. This is read only. Don't touch!

*/

import 'package:equatable/equatable.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_model.dart';

abstract class MonaStyleAttributesComponentEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchMonaStyleAttributesComponent extends MonaStyleAttributesComponentEvent {
  final String? id;

  FetchMonaStyleAttributesComponent({ this.id });
}

class MonaStyleAttributesComponentUpdated extends MonaStyleAttributesComponentEvent {
  final MonaStyleAttributesModel value;

  MonaStyleAttributesComponentUpdated({ required this.value });
}



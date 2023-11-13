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

/*
 * MonaStyleAttributesComponentEvent is the base class for events to be used with constructing a MonaStyleAttributesComponentBloc 
 */
abstract class MonaStyleAttributesComponentEvent extends Equatable {
  @override
  List<Object> get props => [];
}

/*
 * FetchMonaStyleAttributesComponent is the event to instruct the bloc to fetch the component
 */
class FetchMonaStyleAttributesComponent
    extends MonaStyleAttributesComponentEvent {
  final String? id;

  /*
   * Construct the FetchMonaStyleAttributesComponent
   */
  FetchMonaStyleAttributesComponent({this.id});
}

/*
 * MonaStyleAttributesComponentUpdated is the event to inform the bloc that a component has been updated
 */
class MonaStyleAttributesComponentUpdated
    extends MonaStyleAttributesComponentEvent {
  final MonaStyleAttributesModel value;

  /*
   * Construct the MonaStyleAttributesComponentUpdated
   */
  MonaStyleAttributesComponentUpdated({required this.value});
}

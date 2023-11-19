/*
       _ _           _ 
      | (_)         | |
   ___| |_ _   _  __| |
  / _ \ | | | | |/ _` |
 |  __/ | | |_| | (_| |
  \___|_|_|\__,_|\__,_|
                       
 
 model/component_registry.dart
                       
 This code is generated. This is read only. Don't touch!

*/


import '../model/internal_component.dart';
import 'package:eliud_core_model/tools/component/component_spec.dart';
import 'abstract_repository_singleton.dart';
import 'package:eliud_core_model/tools/component/component_constructor.dart';
import 'package:eliud_core_model/apis/apis.dart';

import 'package:eliud_stl_mona/model/internal_component.dart';




/* 
 * Component registry contains a list of components
 */
class ComponentRegistry {

  /* 
   * Initialise the component registry
   */
  init() {
    Apis.apis().getRegistryApi().addInternalComponents('eliud_stl_mona', ["monaStyleAttributess", ]);

    Apis.apis().getRegistryApi().register(componentName: "eliud_stl_mona_internalWidgets", componentConstructor: ListComponentFactory());
    Apis.apis().getRegistryApi().addComponentSpec('eliud_stl_mona', 'mona-style', [
    ]);
      Apis.apis().getRegistryApi().registerRetrieveRepository('eliud_stl_mona', 'monaStyleAttributess', ({String? appId}) => monaStyleAttributesRepository(appId: appId)!);
  }

}



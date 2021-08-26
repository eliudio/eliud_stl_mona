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
import 'package:eliud_core/core/registry.dart';

import 'package:eliud_stl_mona/model/internal_component.dart';




class ComponentRegistry {

  void init() {
    Registry.registry()!.addInternalComponents('eliud_stl_mona', ["monaStyleAttributess", ]);

    Registry.registry()!.register(componentName: "eliud_stl_mona_internalWidgets", componentConstructor: ListComponentFactory());

  }
}



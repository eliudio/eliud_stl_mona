/*
       _ _           _ 
      | (_)         | |
   ___| |_ _   _  __| |
  / _ \ | | | | |/ _` |
 |  __/ | | |_| | (_| |
  \___|_|_|\__,_|\__,_|
                       
 
 model/repository_singleton.dart
                       
 This code is generated. This is read only. Don't touch!

*/

import 'abstract_repository_singleton.dart';
import 'package:eliud_core/tools/main_abstract_repository_singleton.dart';
import 'dart:collection';
import '../model/mona_style_attributes_firestore.dart';
import '../model/mona_style_attributes_repository.dart';
import '../model/mona_style_attributes_cache.dart';

class RepositorySingleton extends AbstractRepositorySingleton {
  final _monaStyleAttributesRepository =
      HashMap<String, MonaStyleAttributesRepository>();

  @override
  MonaStyleAttributesRepository? monaStyleAttributesRepository(String? appId) {
    if ((appId != null) && (_monaStyleAttributesRepository[appId] == null)) {
      _monaStyleAttributesRepository[appId] = MonaStyleAttributesCache(
          MonaStyleAttributesFirestore(
              () => appRepository()!
                  .getSubCollection(appId, 'monastyleattributes'),
              appId));
    }
    return _monaStyleAttributesRepository[appId];
  }
}

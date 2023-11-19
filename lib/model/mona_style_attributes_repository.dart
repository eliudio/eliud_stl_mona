/*
       _ _           _ 
      | (_)         | |
   ___| |_ _   _  __| |
  / _ \ | | | | |/ _` |
 |  __/ | | |_| | (_| |
  \___|_|_|\__,_|\__,_|
                       
 
 mona_style_attributes_repository.dart
                       
 This code is generated. This is read only. Don't touch!

*/

import 'package:eliud_stl_mona/model/mona_style_attributes_repository.dart';


import 'package:eliud_core_model/model/repository_export.dart';
import 'package:eliud_core_model/model/abstract_repository_singleton.dart';
import 'package:eliud_core_model/tools/main_abstract_repository_singleton.dart';
import 'package:eliud_stl_mona/model/abstract_repository_singleton.dart';
import 'package:eliud_stl_mona/model/repository_export.dart';
import 'package:eliud_core_model/model/model_export.dart';
import '../tools/bespoke_models.dart';
import 'package:eliud_stl_mona/model/model_export.dart';
import 'package:eliud_core_model/model/entity_export.dart';
import '../tools/bespoke_entities.dart';
import 'package:eliud_stl_mona/model/entity_export.dart';


import 'dart:async';
import 'package:eliud_core_model/tools/query/query_tools.dart';
import 'package:eliud_core_model/tools/common_tools.dart';
import 'package:eliud_core_model/tools/base/repository_base.dart';

typedef MonaStyleAttributesModelTrigger(List<MonaStyleAttributesModel?> list);
typedef MonaStyleAttributesChanged(MonaStyleAttributesModel? value);
typedef MonaStyleAttributesErrorHandler = Function(dynamic o, dynamic e);

abstract class MonaStyleAttributesRepository extends RepositoryBase<MonaStyleAttributesModel, MonaStyleAttributesEntity> {
  Future<MonaStyleAttributesEntity> addEntity(String documentID, MonaStyleAttributesEntity value);
  Future<MonaStyleAttributesEntity> updateEntity(String documentID, MonaStyleAttributesEntity value);
  Future<MonaStyleAttributesModel> add(MonaStyleAttributesModel value);
  Future<void> delete(MonaStyleAttributesModel value);
  Future<MonaStyleAttributesModel?> get(String? id, { Function(Exception)? onError });
  Future<MonaStyleAttributesModel> update(MonaStyleAttributesModel value);

  Stream<List<MonaStyleAttributesModel?>> values({String? orderBy, bool? descending, Object? startAfter, int? limit, SetLastDoc? setLastDoc, int? privilegeLevel, EliudQuery? eliudQuery });
  Stream<List<MonaStyleAttributesModel?>> valuesWithDetails({String? orderBy, bool? descending, Object? startAfter, int? limit, SetLastDoc? setLastDoc, int? privilegeLevel, EliudQuery? eliudQuery });
  Future<List<MonaStyleAttributesModel?>> valuesList({String? orderBy, bool? descending, Object? startAfter, int? limit, SetLastDoc? setLastDoc, int? privilegeLevel, EliudQuery? eliudQuery });
  Future<List<MonaStyleAttributesModel?>> valuesListWithDetails({String? orderBy, bool? descending, Object? startAfter, int? limit, SetLastDoc? setLastDoc, int? privilegeLevel, EliudQuery? eliudQuery });

  StreamSubscription<List<MonaStyleAttributesModel?>> listen(MonaStyleAttributesModelTrigger trigger, {String? orderBy, bool? descending, Object? startAfter, int? limit, int? privilegeLevel, EliudQuery? eliudQuery });
  StreamSubscription<List<MonaStyleAttributesModel?>> listenWithDetails(MonaStyleAttributesModelTrigger trigger, {String? orderBy, bool? descending, Object? startAfter, int? limit, int? privilegeLevel, EliudQuery? eliudQuery });
  StreamSubscription<MonaStyleAttributesModel?> listenTo(String documentId, MonaStyleAttributesChanged changed, {MonaStyleAttributesErrorHandler? errorHandler});
  void flush();
  
  String? timeStampToString(dynamic timeStamp);

  dynamic getSubCollection(String documentId, String name);
  Future<MonaStyleAttributesModel?> changeValue(String documentId, String fieldName, num changeByThisValue);

  Future<void> deleteAll();
}



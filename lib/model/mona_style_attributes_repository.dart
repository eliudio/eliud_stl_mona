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

import 'package:eliud_stl_mona/model/model_export.dart';
import 'package:eliud_stl_mona/model/entity_export.dart';

import 'dart:async';
import 'package:eliud_core/tools/query/query_tools.dart';
import 'package:eliud_core/tools/common_tools.dart';
import 'package:eliud_core/core/base/repository_base.dart';

typedef MonaStyleAttributesModelTrigger = Function(
    List<MonaStyleAttributesModel?> list);
typedef MonaStyleAttributesChanged = Function(MonaStyleAttributesModel? value);
typedef MonaStyleAttributesErrorHandler = Function(dynamic o, dynamic e);

abstract class MonaStyleAttributesRepository extends RepositoryBase<
    MonaStyleAttributesModel, MonaStyleAttributesEntity> {
  @override
  Future<MonaStyleAttributesEntity> addEntity(
      String documentID, MonaStyleAttributesEntity value);
  @override
  Future<MonaStyleAttributesEntity> updateEntity(
      String documentID, MonaStyleAttributesEntity value);
  @override
  Future<MonaStyleAttributesModel> add(MonaStyleAttributesModel value);
  @override
  Future<void> delete(MonaStyleAttributesModel value);
  @override
  Future<MonaStyleAttributesModel?> get(String? id,
      {Function(Exception)? onError});
  @override
  Future<MonaStyleAttributesModel> update(MonaStyleAttributesModel value);

  @override
  Stream<List<MonaStyleAttributesModel?>> values(
      {String? orderBy,
      bool? descending,
      Object? startAfter,
      int? limit,
      SetLastDoc? setLastDoc,
      int? privilegeLevel,
      EliudQuery? eliudQuery});
  @override
  Stream<List<MonaStyleAttributesModel?>> valuesWithDetails(
      {String? orderBy,
      bool? descending,
      Object? startAfter,
      int? limit,
      SetLastDoc? setLastDoc,
      int? privilegeLevel,
      EliudQuery? eliudQuery});
  @override
  Future<List<MonaStyleAttributesModel?>> valuesList(
      {String? orderBy,
      bool? descending,
      Object? startAfter,
      int? limit,
      SetLastDoc? setLastDoc,
      int? privilegeLevel,
      EliudQuery? eliudQuery});
  @override
  Future<List<MonaStyleAttributesModel?>> valuesListWithDetails(
      {String? orderBy,
      bool? descending,
      Object? startAfter,
      int? limit,
      SetLastDoc? setLastDoc,
      int? privilegeLevel,
      EliudQuery? eliudQuery});

  @override
  StreamSubscription<List<MonaStyleAttributesModel?>> listen(
      MonaStyleAttributesModelTrigger trigger,
      {String? orderBy,
      bool? descending,
      Object? startAfter,
      int? limit,
      int? privilegeLevel,
      EliudQuery? eliudQuery});
  @override
  StreamSubscription<List<MonaStyleAttributesModel?>> listenWithDetails(
      MonaStyleAttributesModelTrigger trigger,
      {String? orderBy,
      bool? descending,
      Object? startAfter,
      int? limit,
      int? privilegeLevel,
      EliudQuery? eliudQuery});
  @override
  StreamSubscription<MonaStyleAttributesModel?> listenTo(
      String documentId, MonaStyleAttributesChanged changed,
      {MonaStyleAttributesErrorHandler? errorHandler});
  @override
  void flush();

  @override
  String? timeStampToString(dynamic timeStamp);

  @override
  dynamic getSubCollection(String documentId, String name);
  @override
  Future<MonaStyleAttributesModel?> changeValue(
      String documentId, String fieldName, num changeByThisValue);

  @override
  Future<void> deleteAll();
}

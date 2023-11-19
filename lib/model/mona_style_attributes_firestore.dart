/*
       _ _           _ 
      | (_)         | |
   ___| |_ _   _  __| |
  / _ \ | | | | |/ _` |
 |  __/ | | |_| | (_| |
  \___|_|_|\__,_|\__,_|
                       
 
 mona_style_attributes_firestore.dart
                       
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
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eliud_core_model/tools/query/query_tools.dart';
import 'package:eliud_core_model/tools/firestore/firestore_tools.dart';
import 'package:eliud_core_model/tools/common_tools.dart';

/* 
 * MonaStyleAttributesFirestore is the firestore implementation of MonaStyleAttributesRepository
 */
class MonaStyleAttributesFirestore implements MonaStyleAttributesRepository {
  /* 
   * transform a map into an entity
   */
  @override
  MonaStyleAttributesEntity? fromMap(Object? o, {Map<String, String>? newDocumentIds}) {
    return MonaStyleAttributesEntity.fromMap(o, newDocumentIds: newDocumentIds);
  }

  /* 
   * add an entity to the repository
   */
  Future<MonaStyleAttributesEntity> addEntity(String documentID, MonaStyleAttributesEntity value) {
    return monaStyleAttributesCollection.doc(documentID).set(value.toDocument()).then((_) => value);
  }

  /* 
   * Update an entity
   */
  Future<MonaStyleAttributesEntity> updateEntity(String documentID, MonaStyleAttributesEntity value) {
    return monaStyleAttributesCollection.doc(documentID).update(value.toDocument()).then((_) => value);
  }

  /* 
   * Add a model to the repository
   */
  Future<MonaStyleAttributesModel> add(MonaStyleAttributesModel value) {
    return monaStyleAttributesCollection.doc(value.documentID).set(value.toEntity(appId: appId).toDocument()).then((_) => value);
  }

  /* 
   * Delete a model
   */
  Future<void> delete(MonaStyleAttributesModel value) {
    return monaStyleAttributesCollection.doc(value.documentID).delete();
  }

  /* 
   * Update a model
   */
  Future<MonaStyleAttributesModel> update(MonaStyleAttributesModel value) {
    return monaStyleAttributesCollection.doc(value.documentID).update(value.toEntity(appId: appId).toDocument()).then((_) => value);
  }

  Future<MonaStyleAttributesModel?> _populateDoc(DocumentSnapshot value) async {
    return MonaStyleAttributesModel.fromEntity(value.id, MonaStyleAttributesEntity.fromMap(value.data()));
  }

  Future<MonaStyleAttributesModel?> _populateDocPlus(DocumentSnapshot value) async {
    return MonaStyleAttributesModel.fromEntityPlus(value.id, MonaStyleAttributesEntity.fromMap(value.data()), appId: appId);  }

  /* 
   * Retrieve an entity from the repository with id
   */
  Future<MonaStyleAttributesEntity?> getEntity(String? id, {Function(Exception)? onError}) async {
    try {
      var collection = monaStyleAttributesCollection.doc(id);
      var doc = await collection.get();
      return MonaStyleAttributesEntity.fromMap(doc.data());
    } on Exception catch(e) {
      if (onError != null) {
        onError(e);
      } else {
        print("Error whilst retrieving MonaStyleAttributes with id $id");
        print("Exceptoin: $e");
      }
    };
  }

  /* 
   * Retrieve an model from the repository with id
   */
  Future<MonaStyleAttributesModel?> get(String? id, {Function(Exception)? onError}) async {
    try {
      var collection = monaStyleAttributesCollection.doc(id);
      var doc = await collection.get();
      return await _populateDocPlus(doc);
    } on Exception catch(e) {
      if (onError != null) {
        onError(e);
      } else {
        print("Error whilst retrieving MonaStyleAttributes with id $id");
        print("Exceptoin: $e");
      }
    };
  }

  /* 
   * Listen to the repository using a query. Retrieve models
   */
  StreamSubscription<List<MonaStyleAttributesModel?>> listen(MonaStyleAttributesModelTrigger trigger, {String? orderBy, bool? descending, Object? startAfter, int? limit, int? privilegeLevel, EliudQuery? eliudQuery}) {
    Stream<List<MonaStyleAttributesModel?>> stream;
    stream = getQuery(getCollection(), orderBy: orderBy,  descending: descending,  startAfter: startAfter as DocumentSnapshot?,  limit: limit, privilegeLevel: privilegeLevel, eliudQuery: eliudQuery, appId: appId)!.snapshots()
//  see comment listen(...) above
//  stream = getQuery(monaStyleAttributesCollection, orderBy: orderBy,  descending: descending,  startAfter: startAfter as DocumentSnapshot?,  limit: limit, privilegeLevel: privilegeLevel, eliudQuery: eliudQuery, appId: appId)!.snapshots()
        .asyncMap((data) async {
      return await Future.wait(data.docs.map((doc) =>  _populateDoc(doc)).toList());
    });

    return stream.listen((listOfMonaStyleAttributesModels) {
      trigger(listOfMonaStyleAttributesModels);
    });
  }

  /* 
   * Listen to the repository using a query. Retrieve models and linked models
   */
  StreamSubscription<List<MonaStyleAttributesModel?>> listenWithDetails(MonaStyleAttributesModelTrigger trigger, {String? orderBy, bool? descending, Object? startAfter, int? limit, int? privilegeLevel, EliudQuery? eliudQuery}) {
    Stream<List<MonaStyleAttributesModel?>> stream;
    stream = getQuery(getCollection(), orderBy: orderBy,  descending: descending,  startAfter: startAfter as DocumentSnapshot?,  limit: limit, privilegeLevel: privilegeLevel, eliudQuery: eliudQuery, appId: appId)!.snapshots()
//  see comment listen(...) above
//  stream = getQuery(monaStyleAttributesCollection, orderBy: orderBy,  descending: descending,  startAfter: startAfter as DocumentSnapshot?,  limit: limit, privilegeLevel: privilegeLevel, eliudQuery: eliudQuery, appId: appId)!.snapshots()
        .asyncMap((data) async {
      return await Future.wait(data.docs.map((doc) =>  _populateDocPlus(doc)).toList());
    });

    return stream.listen((listOfMonaStyleAttributesModels) {
      trigger(listOfMonaStyleAttributesModels);
    });
  }

  /* 
   * Listen to 1 document in the repository
   */
  @override
  StreamSubscription<MonaStyleAttributesModel?> listenTo(String documentId, MonaStyleAttributesChanged changed, {MonaStyleAttributesErrorHandler? errorHandler}) {
    var stream = monaStyleAttributesCollection.doc(documentId)
        .snapshots()
        .asyncMap((data) {
      return _populateDocPlus(data);
    });
    var theStream = stream.listen((value) {
      changed(value);
    });
    theStream.onError((theException, theStacktrace) {
      if (errorHandler != null) {
        errorHandler(theException, theStacktrace);
      }
    });
    return theStream;
  }

  /* 
   * Retrieve values/models from the repository
   */
  Stream<List<MonaStyleAttributesModel?>> values({String? orderBy, bool? descending, Object? startAfter, int? limit, SetLastDoc? setLastDoc, int? privilegeLevel, EliudQuery? eliudQuery }) {
    DocumentSnapshot? lastDoc;
    Stream<List<MonaStyleAttributesModel?>> _values = getQuery(monaStyleAttributesCollection, orderBy: orderBy,  descending: descending,  startAfter: startAfter as DocumentSnapshot?, limit: limit, privilegeLevel: privilegeLevel, eliudQuery: eliudQuery, appId: appId)!.snapshots().asyncMap((snapshot) {
      return Future.wait(snapshot.docs.map((doc) {
        lastDoc = doc;
        return _populateDoc(doc);
      }).toList());
    });
    if ((setLastDoc != null) && (lastDoc != null)) setLastDoc(lastDoc);
    return _values;
  }

  /* 
   * Retrieve values/models, including linked models, from the repository
   */
  Stream<List<MonaStyleAttributesModel?>> valuesWithDetails({String? orderBy, bool? descending, Object? startAfter, int? limit, SetLastDoc? setLastDoc, int? privilegeLevel, EliudQuery? eliudQuery }) {
    DocumentSnapshot? lastDoc;
    Stream<List<MonaStyleAttributesModel?>> _values = getQuery(monaStyleAttributesCollection, orderBy: orderBy,  descending: descending,  startAfter: startAfter as DocumentSnapshot?, limit: limit, privilegeLevel: privilegeLevel, eliudQuery: eliudQuery, appId: appId)!.snapshots().asyncMap((snapshot) {
      return Future.wait(snapshot.docs.map((doc) {
        lastDoc = doc;
        return _populateDocPlus(doc);
      }).toList());
    });
    if ((setLastDoc != null) && (lastDoc != null)) setLastDoc(lastDoc);
    return _values;
  }

  /* 
   * Retrieve values/models from the repository
   */
  Future<List<MonaStyleAttributesModel?>> valuesList({String? orderBy, bool? descending, Object? startAfter, int? limit, SetLastDoc? setLastDoc, int? privilegeLevel, EliudQuery? eliudQuery }) async {
    DocumentSnapshot? lastDoc;
    List<MonaStyleAttributesModel?> _values = await getQuery(monaStyleAttributesCollection, orderBy: orderBy,  descending: descending,  startAfter: startAfter as DocumentSnapshot?,  limit: limit, privilegeLevel: privilegeLevel, eliudQuery: eliudQuery, appId: appId)!.get().then((value) {
      var list = value.docs;
      return Future.wait(list.map((doc) {
        lastDoc = doc;
        return _populateDoc(doc);
      }).toList());
    });
    if ((setLastDoc != null) && (lastDoc != null)) setLastDoc(lastDoc);
    return _values;
  }

  /* 
   * Retrieve values/models, including linked models, from the repository
   */
  Future<List<MonaStyleAttributesModel?>> valuesListWithDetails({String? orderBy, bool? descending, Object? startAfter, int? limit, SetLastDoc? setLastDoc, int? privilegeLevel, EliudQuery? eliudQuery }) async {
    DocumentSnapshot? lastDoc;
    List<MonaStyleAttributesModel?> _values = await getQuery(monaStyleAttributesCollection, orderBy: orderBy,  descending: descending,  startAfter: startAfter as DocumentSnapshot?,  limit: limit, privilegeLevel: privilegeLevel, eliudQuery: eliudQuery, appId: appId)!.get().then((value) {
      var list = value.docs;
      return Future.wait(list.map((doc) {
        lastDoc = doc;
        return _populateDocPlus(doc);
      }).toList());
    });
    if ((setLastDoc != null) && (lastDoc != null)) setLastDoc(lastDoc);
    return _values;
  }

  /* 
   * Flush the repository
   */
  void flush() {}

  /* 
   * Delete all entries in the repository
   */
  Future<void> deleteAll() {
    return monaStyleAttributesCollection.get().then((snapshot) {
      for (DocumentSnapshot ds in snapshot.docs){
        ds.reference.delete();
      }
    });
  }

  /* 
   * Retrieve the subcollection of this repository
   */
  dynamic getSubCollection(String documentId, String name) {
    return monaStyleAttributesCollection.doc(documentId).collection(name);
  }

  /* 
   * Retrieve a timestamp
   */
  String? timeStampToString(dynamic timeStamp) {
    return firestoreTimeStampToString(timeStamp);
  } 

  /* 
   * change 1 a fieldvalue for 1 document  
   */
  Future<MonaStyleAttributesModel?> changeValue(String documentId, String fieldName, num changeByThisValue) {
    var change = FieldValue.increment(changeByThisValue);
    return monaStyleAttributesCollection.doc(documentId).update({fieldName: change}).then((v) => get(documentId));
  }


  final String appId;
  MonaStyleAttributesFirestore(this.getCollection, this.appId): monaStyleAttributesCollection = getCollection();

  final CollectionReference monaStyleAttributesCollection;
  final GetCollection getCollection;
}


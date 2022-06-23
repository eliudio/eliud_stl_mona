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


import 'package:eliud_core/model/repository_export.dart';
import 'package:eliud_core/model/abstract_repository_singleton.dart';
import 'package:eliud_core/tools/main_abstract_repository_singleton.dart';
import 'package:eliud_stl_mona/model/abstract_repository_singleton.dart';
import 'package:eliud_stl_mona/model/repository_export.dart';
import 'package:eliud_core/model/model_export.dart';
import '../tools/bespoke_models.dart';
import 'package:eliud_stl_mona/model/model_export.dart';
import 'package:eliud_core/model/entity_export.dart';
import '../tools/bespoke_entities.dart';
import 'package:eliud_stl_mona/model/entity_export.dart';


import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eliud_core/tools/query/query_tools.dart';
import 'package:eliud_core/tools/firestore/firestore_tools.dart';
import 'package:eliud_core/tools/common_tools.dart';

class MonaStyleAttributesFirestore implements MonaStyleAttributesRepository {
  @override
  MonaStyleAttributesEntity? fromMap(Object? o) {
    return MonaStyleAttributesEntity.fromMap(o);
  }

  Future<MonaStyleAttributesEntity> addEntity(String documentID, MonaStyleAttributesEntity value) {
    return MonaStyleAttributesCollection.doc(documentID).set(value.toDocument()).then((_) => value);
  }

  Future<MonaStyleAttributesEntity> updateEntity(String documentID, MonaStyleAttributesEntity value) {
    return MonaStyleAttributesCollection.doc(documentID).update(value.toDocument()).then((_) => value);
  }

  Future<MonaStyleAttributesModel> add(MonaStyleAttributesModel value) {
    return MonaStyleAttributesCollection.doc(value.documentID).set(value.toEntity(appId: appId).toDocument()).then((_) => value);
  }

  Future<void> delete(MonaStyleAttributesModel value) {
    return MonaStyleAttributesCollection.doc(value.documentID).delete();
  }

  Future<MonaStyleAttributesModel> update(MonaStyleAttributesModel value) {
    return MonaStyleAttributesCollection.doc(value.documentID).update(value.toEntity(appId: appId).toDocument()).then((_) => value);
  }

  Future<MonaStyleAttributesModel?> _populateDoc(DocumentSnapshot value) async {
    return MonaStyleAttributesModel.fromEntity(value.id, MonaStyleAttributesEntity.fromMap(value.data()));
  }

  Future<MonaStyleAttributesModel?> _populateDocPlus(DocumentSnapshot value) async {
    return MonaStyleAttributesModel.fromEntityPlus(value.id, MonaStyleAttributesEntity.fromMap(value.data()), appId: appId);  }

  Future<MonaStyleAttributesEntity?> getEntity(String? id, {Function(Exception)? onError}) async {
    try {
      var collection = MonaStyleAttributesCollection.doc(id);
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

  Future<MonaStyleAttributesModel?> get(String? id, {Function(Exception)? onError}) async {
    try {
      var collection = MonaStyleAttributesCollection.doc(id);
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

  StreamSubscription<List<MonaStyleAttributesModel?>> listen(MonaStyleAttributesModelTrigger trigger, {String? orderBy, bool? descending, Object? startAfter, int? limit, int? privilegeLevel, EliudQuery? eliudQuery}) {
    Stream<List<MonaStyleAttributesModel?>> stream;
    stream = getQuery(getCollection(), orderBy: orderBy,  descending: descending,  startAfter: startAfter as DocumentSnapshot?,  limit: limit, privilegeLevel: privilegeLevel, eliudQuery: eliudQuery, appId: appId)!.snapshots()
//  see comment listen(...) above
//  stream = getQuery(MonaStyleAttributesCollection, orderBy: orderBy,  descending: descending,  startAfter: startAfter as DocumentSnapshot?,  limit: limit, privilegeLevel: privilegeLevel, eliudQuery: eliudQuery, appId: appId)!.snapshots()
        .asyncMap((data) async {
      return await Future.wait(data.docs.map((doc) =>  _populateDoc(doc)).toList());
    });

    return stream.listen((listOfMonaStyleAttributesModels) {
      trigger(listOfMonaStyleAttributesModels);
    });
  }

  StreamSubscription<List<MonaStyleAttributesModel?>> listenWithDetails(MonaStyleAttributesModelTrigger trigger, {String? orderBy, bool? descending, Object? startAfter, int? limit, int? privilegeLevel, EliudQuery? eliudQuery}) {
    Stream<List<MonaStyleAttributesModel?>> stream;
    stream = getQuery(getCollection(), orderBy: orderBy,  descending: descending,  startAfter: startAfter as DocumentSnapshot?,  limit: limit, privilegeLevel: privilegeLevel, eliudQuery: eliudQuery, appId: appId)!.snapshots()
//  see comment listen(...) above
//  stream = getQuery(MonaStyleAttributesCollection, orderBy: orderBy,  descending: descending,  startAfter: startAfter as DocumentSnapshot?,  limit: limit, privilegeLevel: privilegeLevel, eliudQuery: eliudQuery, appId: appId)!.snapshots()
        .asyncMap((data) async {
      return await Future.wait(data.docs.map((doc) =>  _populateDocPlus(doc)).toList());
    });

    return stream.listen((listOfMonaStyleAttributesModels) {
      trigger(listOfMonaStyleAttributesModels);
    });
  }

  @override
  StreamSubscription<MonaStyleAttributesModel?> listenTo(String documentId, MonaStyleAttributesChanged changed) {
    var stream = MonaStyleAttributesCollection.doc(documentId)
        .snapshots()
        .asyncMap((data) {
      return _populateDocPlus(data);
    });
    return stream.listen((value) {
      changed(value);
    });
  }

  Stream<List<MonaStyleAttributesModel?>> values({String? orderBy, bool? descending, Object? startAfter, int? limit, SetLastDoc? setLastDoc, int? privilegeLevel, EliudQuery? eliudQuery }) {
    DocumentSnapshot? lastDoc;
    Stream<List<MonaStyleAttributesModel?>> _values = getQuery(MonaStyleAttributesCollection, orderBy: orderBy,  descending: descending,  startAfter: startAfter as DocumentSnapshot?, limit: limit, privilegeLevel: privilegeLevel, eliudQuery: eliudQuery, appId: appId)!.snapshots().asyncMap((snapshot) {
      return Future.wait(snapshot.docs.map((doc) {
        lastDoc = doc;
        return _populateDoc(doc);
      }).toList());
    });
    if ((setLastDoc != null) && (lastDoc != null)) setLastDoc(lastDoc);
    return _values;
  }

  Stream<List<MonaStyleAttributesModel?>> valuesWithDetails({String? orderBy, bool? descending, Object? startAfter, int? limit, SetLastDoc? setLastDoc, int? privilegeLevel, EliudQuery? eliudQuery }) {
    DocumentSnapshot? lastDoc;
    Stream<List<MonaStyleAttributesModel?>> _values = getQuery(MonaStyleAttributesCollection, orderBy: orderBy,  descending: descending,  startAfter: startAfter as DocumentSnapshot?, limit: limit, privilegeLevel: privilegeLevel, eliudQuery: eliudQuery, appId: appId)!.snapshots().asyncMap((snapshot) {
      return Future.wait(snapshot.docs.map((doc) {
        lastDoc = doc;
        return _populateDocPlus(doc);
      }).toList());
    });
    if ((setLastDoc != null) && (lastDoc != null)) setLastDoc(lastDoc);
    return _values;
  }

  Future<List<MonaStyleAttributesModel?>> valuesList({String? orderBy, bool? descending, Object? startAfter, int? limit, SetLastDoc? setLastDoc, int? privilegeLevel, EliudQuery? eliudQuery }) async {
    DocumentSnapshot? lastDoc;
    List<MonaStyleAttributesModel?> _values = await getQuery(MonaStyleAttributesCollection, orderBy: orderBy,  descending: descending,  startAfter: startAfter as DocumentSnapshot?,  limit: limit, privilegeLevel: privilegeLevel, eliudQuery: eliudQuery, appId: appId)!.get().then((value) {
      var list = value.docs;
      return Future.wait(list.map((doc) {
        lastDoc = doc;
        return _populateDoc(doc);
      }).toList());
    });
    if ((setLastDoc != null) && (lastDoc != null)) setLastDoc(lastDoc);
    return _values;
  }

  Future<List<MonaStyleAttributesModel?>> valuesListWithDetails({String? orderBy, bool? descending, Object? startAfter, int? limit, SetLastDoc? setLastDoc, int? privilegeLevel, EliudQuery? eliudQuery }) async {
    DocumentSnapshot? lastDoc;
    List<MonaStyleAttributesModel?> _values = await getQuery(MonaStyleAttributesCollection, orderBy: orderBy,  descending: descending,  startAfter: startAfter as DocumentSnapshot?,  limit: limit, privilegeLevel: privilegeLevel, eliudQuery: eliudQuery, appId: appId)!.get().then((value) {
      var list = value.docs;
      return Future.wait(list.map((doc) {
        lastDoc = doc;
        return _populateDocPlus(doc);
      }).toList());
    });
    if ((setLastDoc != null) && (lastDoc != null)) setLastDoc(lastDoc);
    return _values;
  }

  void flush() {}

  Future<void> deleteAll() {
    return MonaStyleAttributesCollection.get().then((snapshot) {
      for (DocumentSnapshot ds in snapshot.docs){
        ds.reference.delete();
      }
    });
  }

  dynamic getSubCollection(String documentId, String name) {
    return MonaStyleAttributesCollection.doc(documentId).collection(name);
  }

  String? timeStampToString(dynamic timeStamp) {
    return firestoreTimeStampToString(timeStamp);
  } 

  Future<MonaStyleAttributesModel?> changeValue(String documentId, String fieldName, num changeByThisValue) {
    var change = FieldValue.increment(changeByThisValue);
    return MonaStyleAttributesCollection.doc(documentId).update({fieldName: change}).then((v) => get(documentId));
  }


  final String appId;
  MonaStyleAttributesFirestore(this.getCollection, this.appId): MonaStyleAttributesCollection = getCollection();

  final CollectionReference MonaStyleAttributesCollection;
  final GetCollection getCollection;
}


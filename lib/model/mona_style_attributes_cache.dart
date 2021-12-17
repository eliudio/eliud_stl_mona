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

import 'dart:async';
import 'package:eliud_core/tools/query/query_tools.dart';
import 'package:eliud_core/tools/common_tools.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_model.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_repository.dart';

import 'package:eliud_core/model/repository_export.dart';
import 'package:eliud_core/model/abstract_repository_singleton.dart';
import 'package:eliud_core/tools/main_abstract_repository_singleton.dart';
import 'package:eliud_stl_mona/model/abstract_repository_singleton.dart';
import 'package:eliud_stl_mona/model/repository_export.dart';
import 'package:eliud_core/model/cache_export.dart';
import 'package:eliud_stl_mona/model/cache_export.dart';
import 'package:eliud_core/model/model_export.dart';
import '../tools/bespoke_models.dart';
import 'package:eliud_stl_mona/model/model_export.dart';
import 'package:eliud_core/model/entity_export.dart';
import '../tools/bespoke_entities.dart';
import 'package:eliud_stl_mona/model/entity_export.dart';

class MonaStyleAttributesCache implements MonaStyleAttributesRepository {

  final MonaStyleAttributesRepository reference;
  final Map<String?, MonaStyleAttributesModel?> fullCache = Map();

  MonaStyleAttributesCache(this.reference);

  Future<MonaStyleAttributesModel> add(MonaStyleAttributesModel value) {
    return reference.add(value).then((newValue) {
      fullCache[value.documentID] = newValue;
      return newValue;
    });
  }

  Future<void> delete(MonaStyleAttributesModel value){
    fullCache.remove(value.documentID);
    reference.delete(value);
    return Future.value();
  }

  Future<MonaStyleAttributesModel?> get(String? id, {Function(Exception)? onError}) async {
    var value = fullCache[id];
    if (value != null) return refreshRelations(value);
    value = await reference.get(id, onError: onError);
    fullCache[id] = value;
    return value;
  }

  Future<MonaStyleAttributesModel> update(MonaStyleAttributesModel value) {
    return reference.update(value).then((newValue) {
      fullCache[value.documentID] = newValue;
      return newValue;
    });
  }

  @override
  Stream<List<MonaStyleAttributesModel?>> values({String? orderBy, bool? descending, Object? startAfter, int? limit, SetLastDoc? setLastDoc, int? privilegeLevel, EliudQuery? eliudQuery }) {
    return reference.values(orderBy: orderBy, descending: descending, startAfter: startAfter, limit: limit, setLastDoc: setLastDoc, privilegeLevel: privilegeLevel, eliudQuery: eliudQuery);
  }

  @override
  Stream<List<MonaStyleAttributesModel?>> valuesWithDetails({String? orderBy, bool? descending, Object? startAfter, int? limit, SetLastDoc? setLastDoc, int? privilegeLevel, EliudQuery? eliudQuery }) {
    return reference.valuesWithDetails(orderBy: orderBy, descending: descending, startAfter: startAfter, limit: limit, setLastDoc: setLastDoc, privilegeLevel: privilegeLevel, eliudQuery: eliudQuery);
  }

  @override
  Future<List<MonaStyleAttributesModel?>> valuesList({String? orderBy, bool? descending, Object? startAfter, int? limit, SetLastDoc? setLastDoc, int? privilegeLevel, EliudQuery? eliudQuery }) async {
    return await reference.valuesList(orderBy: orderBy, descending: descending, startAfter: startAfter, limit: limit, setLastDoc: setLastDoc, privilegeLevel: privilegeLevel, eliudQuery: eliudQuery);
  }
  
  @override
  Future<List<MonaStyleAttributesModel?>> valuesListWithDetails({String? orderBy, bool? descending, Object? startAfter, int? limit, SetLastDoc? setLastDoc, int? privilegeLevel, EliudQuery? eliudQuery }) async {
    return await reference.valuesListWithDetails(orderBy: orderBy, descending: descending, startAfter: startAfter, limit: limit, setLastDoc: setLastDoc, privilegeLevel: privilegeLevel, eliudQuery: eliudQuery);
  }

  void flush() {
    fullCache.clear();
  }
  
  String? timeStampToString(dynamic timeStamp) {
    return reference.timeStampToString(timeStamp);
  } 

  dynamic getSubCollection(String documentId, String name) {
    return reference.getSubCollection(documentId, name);
  }

  Future<MonaStyleAttributesModel> changeValue(String documentId, String fieldName, num changeByThisValue) {
    return reference.changeValue(documentId, fieldName, changeByThisValue).then((newValue) {
      fullCache[documentId] = newValue;
      return newValue!;
    });
  }

  Future<void> deleteAll() {
    return reference.deleteAll();
  }

  @override
  StreamSubscription<List<MonaStyleAttributesModel?>> listen(trigger, {String? orderBy, bool? descending, Object? startAfter, int? limit, int? privilegeLevel, EliudQuery? eliudQuery}) {
    return reference.listen(trigger, orderBy: orderBy, descending: descending, startAfter: startAfter, limit: limit, privilegeLevel: privilegeLevel, eliudQuery: eliudQuery);
  }

  @override
  StreamSubscription<List<MonaStyleAttributesModel?>> listenWithDetails(trigger, {String? orderBy, bool? descending, Object? startAfter, int? limit, int? privilegeLevel, EliudQuery? eliudQuery}) {
    return reference.listenWithDetails(trigger, orderBy: orderBy, descending: descending, startAfter: startAfter, limit: limit, privilegeLevel: privilegeLevel, eliudQuery: eliudQuery);
  }

  @override
  StreamSubscription<MonaStyleAttributesModel?> listenTo(String documentId, MonaStyleAttributesChanged changed) {
    return reference.listenTo(documentId, ((value) {
      if (value != null) {
        fullCache[value.documentID] = value;
      }
      changed(value);
    }));
  }

  static Future<MonaStyleAttributesModel> refreshRelations(MonaStyleAttributesModel model) async {

    BackgroundModel? formBackgroundHolder;
    if (model.formBackground != null) {
      try {
        await backgroundRepository()!.get(model.formBackground!.documentID).then((val) {
          formBackgroundHolder = val;
        }).catchError((error) {});
      } catch (_) {}
    }

    BackgroundModel? appBackgroundHolder;
    if (model.appBackground != null) {
      try {
        await backgroundRepository()!.get(model.appBackground!.documentID).then((val) {
          appBackgroundHolder = val;
        }).catchError((error) {});
      } catch (_) {}
    }

    BackgroundModel? listBackgroundHolder;
    if (model.listBackground != null) {
      try {
        await backgroundRepository()!.get(model.listBackground!.documentID).then((val) {
          listBackgroundHolder = val;
        }).catchError((error) {});
      } catch (_) {}
    }

    BackgroundModel? appBarBGHolder;
    if (model.appBarBG != null) {
      try {
        await backgroundRepository()!.get(model.appBarBG!.documentID).then((val) {
          appBarBGHolder = val;
        }).catchError((error) {});
      } catch (_) {}
    }

    BackgroundModel? bottomNavigationBarBGHolder;
    if (model.bottomNavigationBarBG != null) {
      try {
        await backgroundRepository()!.get(model.bottomNavigationBarBG!.documentID).then((val) {
          bottomNavigationBarBGHolder = val;
        }).catchError((error) {});
      } catch (_) {}
    }

    BackgroundModel? drawerBGHolder;
    if (model.drawerBG != null) {
      try {
        await backgroundRepository()!.get(model.drawerBG!.documentID).then((val) {
          drawerBGHolder = val;
        }).catchError((error) {});
      } catch (_) {}
    }

    BackgroundModel? drawerHeaderBGHolder;
    if (model.drawerHeaderBG != null) {
      try {
        await backgroundRepository()!.get(model.drawerHeaderBG!.documentID).then((val) {
          drawerHeaderBGHolder = val;
        }).catchError((error) {});
      } catch (_) {}
    }

    BackgroundModel? profileDrawerBGHolder;
    if (model.profileDrawerBG != null) {
      try {
        await backgroundRepository()!.get(model.profileDrawerBG!.documentID).then((val) {
          profileDrawerBGHolder = val;
        }).catchError((error) {});
      } catch (_) {}
    }

    BackgroundModel? profileDrawerHeaderBGHolder;
    if (model.profileDrawerHeaderBG != null) {
      try {
        await backgroundRepository()!.get(model.profileDrawerHeaderBG!.documentID).then((val) {
          profileDrawerHeaderBGHolder = val;
        }).catchError((error) {});
      } catch (_) {}
    }

    BackgroundModel? backgroundHomeMenuHolder;
    if (model.backgroundHomeMenu != null) {
      try {
        await backgroundRepository()!.get(model.backgroundHomeMenu!.documentID).then((val) {
          backgroundHomeMenuHolder = val;
        }).catchError((error) {});
      } catch (_) {}
    }

    FontModel? h1Holder;
    if (model.h1 != null) {
      try {
        await fontRepository()!.get(model.h1!.documentID).then((val) {
          h1Holder = val;
        }).catchError((error) {});
      } catch (_) {}
    }

    FontModel? h2Holder;
    if (model.h2 != null) {
      try {
        await fontRepository()!.get(model.h2!.documentID).then((val) {
          h2Holder = val;
        }).catchError((error) {});
      } catch (_) {}
    }

    FontModel? h3Holder;
    if (model.h3 != null) {
      try {
        await fontRepository()!.get(model.h3!.documentID).then((val) {
          h3Holder = val;
        }).catchError((error) {});
      } catch (_) {}
    }

    FontModel? h4Holder;
    if (model.h4 != null) {
      try {
        await fontRepository()!.get(model.h4!.documentID).then((val) {
          h4Holder = val;
        }).catchError((error) {});
      } catch (_) {}
    }

    FontModel? h5Holder;
    if (model.h5 != null) {
      try {
        await fontRepository()!.get(model.h5!.documentID).then((val) {
          h5Holder = val;
        }).catchError((error) {});
      } catch (_) {}
    }

    FontModel? textFieldHeaderHolder;
    if (model.textFieldHeader != null) {
      try {
        await fontRepository()!.get(model.textFieldHeader!.documentID).then((val) {
          textFieldHeaderHolder = val;
        }).catchError((error) {});
      } catch (_) {}
    }

    FontModel? fontTextHolder;
    if (model.fontText != null) {
      try {
        await fontRepository()!.get(model.fontText!.documentID).then((val) {
          fontTextHolder = val;
        }).catchError((error) {});
      } catch (_) {}
    }

    FontModel? fontSmallTextHolder;
    if (model.fontSmallText != null) {
      try {
        await fontRepository()!.get(model.fontSmallText!.documentID).then((val) {
          fontSmallTextHolder = val;
        }).catchError((error) {});
      } catch (_) {}
    }

    FontModel? fontHighlight1Holder;
    if (model.fontHighlight1 != null) {
      try {
        await fontRepository()!.get(model.fontHighlight1!.documentID).then((val) {
          fontHighlight1Holder = val;
        }).catchError((error) {});
      } catch (_) {}
    }

    FontModel? fontHighlight2Holder;
    if (model.fontHighlight2 != null) {
      try {
        await fontRepository()!.get(model.fontHighlight2!.documentID).then((val) {
          fontHighlight2Holder = val;
        }).catchError((error) {});
      } catch (_) {}
    }

    FontModel? fontLinkHolder;
    if (model.fontLink != null) {
      try {
        await fontRepository()!.get(model.fontLink!.documentID).then((val) {
          fontLinkHolder = val;
        }).catchError((error) {});
      } catch (_) {}
    }

    return model.copyWith(
        formBackground: formBackgroundHolder,

        appBackground: appBackgroundHolder,

        listBackground: listBackgroundHolder,

        appBarBG: appBarBGHolder,

        bottomNavigationBarBG: bottomNavigationBarBGHolder,

        drawerBG: drawerBGHolder,

        drawerHeaderBG: drawerHeaderBGHolder,

        profileDrawerBG: profileDrawerBGHolder,

        profileDrawerHeaderBG: profileDrawerHeaderBGHolder,

        backgroundHomeMenu: backgroundHomeMenuHolder,

        h1: h1Holder,

        h2: h2Holder,

        h3: h3Holder,

        h4: h4Holder,

        h5: h5Holder,

        textFieldHeader: textFieldHeaderHolder,

        fontText: fontTextHolder,

        fontSmallText: fontSmallTextHolder,

        fontHighlight1: fontHighlight1Holder,

        fontHighlight2: fontHighlight2Holder,

        fontLink: fontLinkHolder,


    );
  }

}


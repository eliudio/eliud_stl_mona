/*
       _ _           _ 
      | (_)         | |
   ___| |_ _   _  __| |
  / _ \ | | | | |/ _` |
 |  __/ | | |_| | (_| |
  \___|_|_|\__,_|\__,_|
                       
 
 font_model.dart
                       
 This code is generated. This is read only. Don't touch!

*/

import 'package:eliud_core_model/tools/common_tools.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eliud_core_model/tools/base/model_base.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:eliud_core_model/model/app_model.dart';

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


import 'package:eliud_stl_mona/model/font_entity.dart';

import 'package:eliud_core_model/tools/etc/random.dart';

enum EliudFontWeight {
  thin, extraLight, light, normal, medium, semiBold, bold, extraBold, mostThick, unknown
}

enum EliudFontStyle {
  italic, normal, unknown
}

enum EliudFontDecoration {
  none, underline, overline, lineThrough, unknown
}


EliudFontWeight toEliudFontWeight(int? index) {
  switch (index) {
    case 0: return EliudFontWeight.thin;
    case 1: return EliudFontWeight.extraLight;
    case 2: return EliudFontWeight.light;
    case 3: return EliudFontWeight.normal;
    case 4: return EliudFontWeight.medium;
    case 5: return EliudFontWeight.semiBold;
    case 6: return EliudFontWeight.bold;
    case 7: return EliudFontWeight.extraBold;
    case 8: return EliudFontWeight.mostThick;
  }
  return EliudFontWeight.unknown;
}

EliudFontStyle toEliudFontStyle(int? index) {
  switch (index) {
    case 0: return EliudFontStyle.italic;
    case 1: return EliudFontStyle.normal;
  }
  return EliudFontStyle.unknown;
}

EliudFontDecoration toEliudFontDecoration(int? index) {
  switch (index) {
    case 0: return EliudFontDecoration.none;
    case 1: return EliudFontDecoration.underline;
    case 2: return EliudFontDecoration.overline;
    case 3: return EliudFontDecoration.lineThrough;
  }
  return EliudFontDecoration.unknown;
}


class FontModel {
  static const String packageName = 'eliud_stl_mona';
  static const String id = 'fonts';


  // See https://fonts.google.com/
  String? fontName;
  double? size;
  EliudFontWeight? weight;
  EliudFontStyle? style;
  EliudFontDecoration? decoration;
  RgbModel? color;

  FontModel({this.fontName, this.size, this.weight, this.style, this.decoration, this.color, })  {
  }

  FontModel copyWith({String? fontName, double? size, EliudFontWeight? weight, EliudFontStyle? style, EliudFontDecoration? decoration, RgbModel? color, }) {
    return FontModel(fontName: fontName ?? this.fontName, size: size ?? this.size, weight: weight ?? this.weight, style: style ?? this.style, decoration: decoration ?? this.decoration, color: color ?? this.color, );
  }

  @override
  int get hashCode => fontName.hashCode ^ size.hashCode ^ weight.hashCode ^ style.hashCode ^ decoration.hashCode ^ color.hashCode;

  @override
  bool operator ==(Object other) =>
          identical(this, other) ||
          other is FontModel &&
          runtimeType == other.runtimeType && 
          fontName == other.fontName &&
          size == other.size &&
          weight == other.weight &&
          style == other.style &&
          decoration == other.decoration &&
          color == other.color;

  @override
  String toString() {
    return 'FontModel{fontName: $fontName, size: $size, weight: $weight, style: $style, decoration: $decoration, color: $color}';
  }

  Future<List<ModelReference>> collectReferences({String? appId}) async {
    List<ModelReference> referencesCollector = [];
    if (color != null) { referencesCollector.addAll(await color!.collectReferences(appId: appId)); }
    return referencesCollector;
  }

  FontEntity toEntity({String? appId}) {
    return FontEntity(
          fontName: (fontName != null) ? fontName : null, 
          size: (size != null) ? size : null, 
          weight: (weight != null) ? weight!.index : null, 
          style: (style != null) ? style!.index : null, 
          decoration: (decoration != null) ? decoration!.index : null, 
          color: (color != null) ? color!.toEntity(appId: appId) : null, 
    );
  }

  static Future<FontModel?> fromEntity(FontEntity? entity) async {
    if (entity == null) return null;
    return FontModel(
          fontName: entity.fontName, 
          size: entity.size, 
          weight: toEliudFontWeight(entity.weight), 
          style: toEliudFontStyle(entity.style), 
          decoration: toEliudFontDecoration(entity.decoration), 
          color: 
            await RgbModel.fromEntity(entity.color), 
    );
  }

  static Future<FontModel?> fromEntityPlus(FontEntity? entity, { String? appId}) async {
    if (entity == null) return null;

    return FontModel(
          fontName: entity.fontName, 
          size: entity.size, 
          weight: toEliudFontWeight(entity.weight), 
          style: toEliudFontStyle(entity.style), 
          decoration: toEliudFontDecoration(entity.decoration), 
          color: 
            await RgbModel.fromEntityPlus(entity.color, appId: appId), 
    );
  }

}


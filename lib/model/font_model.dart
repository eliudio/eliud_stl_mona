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

import 'package:eliud_core/tools/common_tools.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eliud_core/core/base/model_base.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:eliud_core/model/app_model.dart';

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


import 'package:eliud_stl_mona/model/font_entity.dart';

import 'package:eliud_core/tools/random.dart';

enum EliudFontWeight {
  Thin, ExtraLight, Light, Normal, Medium, SemiBold, Bold, ExtraBold, MostThick, Unknown
}

enum EliudFontStyle {
  Italic, Normal, Unknown
}

enum EliudFontDecoration {
  None, Underline, Overline, LineThrough, Unknown
}


EliudFontWeight toEliudFontWeight(int? index) {
  switch (index) {
    case 0: return EliudFontWeight.Thin;
    case 1: return EliudFontWeight.ExtraLight;
    case 2: return EliudFontWeight.Light;
    case 3: return EliudFontWeight.Normal;
    case 4: return EliudFontWeight.Medium;
    case 5: return EliudFontWeight.SemiBold;
    case 6: return EliudFontWeight.Bold;
    case 7: return EliudFontWeight.ExtraBold;
    case 8: return EliudFontWeight.MostThick;
  }
  return EliudFontWeight.Unknown;
}

EliudFontStyle toEliudFontStyle(int? index) {
  switch (index) {
    case 0: return EliudFontStyle.Italic;
    case 1: return EliudFontStyle.Normal;
  }
  return EliudFontStyle.Unknown;
}

EliudFontDecoration toEliudFontDecoration(int? index) {
  switch (index) {
    case 0: return EliudFontDecoration.None;
    case 1: return EliudFontDecoration.Underline;
    case 2: return EliudFontDecoration.Overline;
    case 3: return EliudFontDecoration.LineThrough;
  }
  return EliudFontDecoration.Unknown;
}


class FontModel {

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

  FontEntity toEntity({String? appId, List<ModelBase>? referencesCollector}) {
    if (referencesCollector != null) {
    }
    return FontEntity(
          fontName: (fontName != null) ? fontName : null, 
          size: (size != null) ? size : null, 
          weight: (weight != null) ? weight!.index : null, 
          style: (style != null) ? style!.index : null, 
          decoration: (decoration != null) ? decoration!.index : null, 
          color: (color != null) ? color!.toEntity(appId: appId, referencesCollector: referencesCollector) : null, 
    );
  }

  static Future<FontModel?> fromEntity(FontEntity? entity) async {
    if (entity == null) return null;
    var counter = 0;
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

    var counter = 0;
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


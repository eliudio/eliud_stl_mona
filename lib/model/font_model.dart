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

import 'package:eliud_core/core/base/model_base.dart';

import 'package:eliud_core/model/model_export.dart';
import 'package:eliud_stl_mona/model/entity_export.dart';


import 'package:eliud_stl_mona/model/font_entity.dart';


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
    if (color != null) referencesCollector.addAll(await color!.collectReferences(appId: appId));
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


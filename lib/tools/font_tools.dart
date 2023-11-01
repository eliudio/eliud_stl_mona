import 'package:eliud_core/model/model_export.dart';
import 'package:eliud_core/tools/etc.dart';
import 'package:eliud_stl_mona/model/font_model.dart';
import 'package:eliud_stl_mona/tools/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontTools {
  // Use this for reference:
  static String textFieldHeaderLabel = 'textFieldHeader';
  static String h1Label = 'H1';
  static String h2Label = 'H2';
  static String h3Label = 'H3';
  static String h4Label = 'H4';
  static String h5Label = 'H5';
  static String normalLabel = 'Normal';
  static String smallLabel = 'Small';
  static String highlightLabel1 = 'Highlight1';
  static String highlightLabel2 = 'Highlight2';
  static String linkLabel = 'Link';
  static String robotoLabel = 'Roboto';
  static String latoLabel = 'Lato';
  static String dancingScriptLabel = 'DancingScript';

  final Map<String, FontModel> fonts = {};
  final RgbModel? headerColor1To3;
  final RgbModel? headerColor4To5;
  final RgbModel? defaultColor;
  final RgbModel? highlightColor;
  final RgbModel? linkColor;

  static final List<EliudFontWeight> _weights = <EliudFontWeight>[
    EliudFontWeight.Bold,
    EliudFontWeight.Bold,
    EliudFontWeight.Bold,
    EliudFontWeight.Bold,
    EliudFontWeight.Normal
  ];
  static final List<EliudFontStyle> _styles = <EliudFontStyle>[
    EliudFontStyle.Normal,
    EliudFontStyle.Normal,
    EliudFontStyle.Normal,
    EliudFontStyle.Normal,
    EliudFontStyle.Normal
  ];
  static List<EliudFontDecoration> decorations = <EliudFontDecoration>[
    EliudFontDecoration.None,
    EliudFontDecoration.None,
    EliudFontDecoration.None,
    EliudFontDecoration.None,
    EliudFontDecoration.None
  ];

  static final double _textFieldHeaderSize = 14;
  static final double _defaultSize = 18;
  static final double _defaultSmallSize = 10;
  static final List<double> _sizes = <double>[30, 22, 20, 20, 20];
  static final List<String> _styleLabels = <String>[
    h1Label,
    h2Label,
    h3Label,
    h4Label,
    h5Label
  ];

  List<String> fontKeys = <String>[robotoLabel, latoLabel, dancingScriptLabel];
  List<String> fontNames = <String>['Roboto', 'Lato', 'Dancing Script'];
  final String styleName;

  static String defaultStyleName = 'default';
  static FontTools defaultFontTools() {
    return FontTools(
        styleName: defaultStyleName,
        headerColor1To3: MonaColors.red,
        headerColor4To5: MonaColors.white,
        defaultColor: MonaColors.black,
        highlightColor: MonaColors.green,
        linkColor: MonaColors.ochre);
  }

  static FontModel defaultH1() => defaultFontTools().getFont(FontTools.key(defaultStyleName, FontTools.dancingScriptLabel, FontTools.h1Label))!;
  static FontModel defaultH2() => defaultFontTools().getFont(FontTools.key(defaultStyleName, FontTools.dancingScriptLabel, FontTools.h2Label))!;
  static FontModel defaultH3() => defaultFontTools().getFont(FontTools.key(defaultStyleName, FontTools.dancingScriptLabel, FontTools.h3Label))!;
  static FontModel defaultH4() => defaultFontTools().getFont(FontTools.key(defaultStyleName, FontTools.dancingScriptLabel, FontTools.h4Label))!;
  static FontModel defaultH5() => defaultFontTools().getFont(FontTools.key(defaultStyleName, FontTools.dancingScriptLabel, FontTools.h5Label))!;
  static FontModel defaultFontHighlight1() => defaultFontTools().getFont(FontTools.key(defaultStyleName, FontTools.dancingScriptLabel, FontTools.highlightLabel1))!;
  static FontModel defaultFontHighlight2() => defaultFontTools().getFont(FontTools.key(defaultStyleName, FontTools.dancingScriptLabel, FontTools.highlightLabel2))!;
  static FontModel defaultFontLink() => defaultFontTools().getFont(FontTools.key(defaultStyleName, FontTools.dancingScriptLabel, FontTools.linkLabel))!;
  static FontModel defaultFontSmallText() => defaultFontTools().getFont(FontTools.key(defaultStyleName, FontTools.dancingScriptLabel, FontTools.smallLabel))!;
  static FontModel defaultFontText() => defaultFontTools().getFont(FontTools.key(defaultStyleName, FontTools.dancingScriptLabel, FontTools.normalLabel))!;

  FontTools({
    required this.styleName,
    this.headerColor1To3,
    this.headerColor4To5,
    this.defaultColor,
    this.highlightColor,
    this.linkColor,
  }) {
    _setupFonts();
  }

  static String key(String styleName, String fontLabel, String styleLabel) {
    return styleName + "-" + fontLabel + "-" + styleLabel;
  }

  FontModel _getHeaderFont(int fontIndex, int styleIndex) {
    var size = _sizes[styleIndex];
    var documentID = key(styleName, fontKeys[fontIndex], _styleLabels[styleIndex]);
    var fontModel = FontModel(
      fontName: fontNames[fontIndex],
      size: size.toDouble(),
      weight: _weights[styleIndex],
      style: _styles[styleIndex],
      decoration: decorations[styleIndex],
      color: styleIndex < 3 ? headerColor1To3 : headerColor4To5,
    );
    fonts[documentID] = fontModel;
    return fontModel;
  }

  FontModel _getNormalFont(int fontIndex) {
    var size = _defaultSize;
    var documentID = key(styleName, fontKeys[fontIndex], normalLabel);
    var fontModel = FontModel(
      fontName: fontNames[fontIndex],
      size: size.toDouble(),
      weight: EliudFontWeight.Normal,
      style: EliudFontStyle.Normal,
      decoration: EliudFontDecoration.None,
      color: defaultColor,
    );
    fonts[documentID] = fontModel;
    return fontModel;
  }

  FontModel _getSmallFont(int fontIndex) {
    var size = _defaultSmallSize;
    var documentID = key(styleName, fontKeys[fontIndex], smallLabel);
    var fontModel = FontModel(
      fontName: fontNames[fontIndex],
      size: size.toDouble(),
      weight: EliudFontWeight.Normal,
      style: EliudFontStyle.Normal,
      decoration: EliudFontDecoration.None,
      color: defaultColor,
    );
    fonts[documentID] = fontModel;
    return fontModel;
  }

  FontModel _getDecorationLabelStyleFont(int fontIndex) {
    var size = _textFieldHeaderSize;
    var documentID = key(styleName, fontKeys[fontIndex], textFieldHeaderLabel);
    var fontModel = FontModel(
      fontName: fontNames[fontIndex],
      size: size.toDouble(),
      weight: EliudFontWeight.Normal,
      style: EliudFontStyle.Normal,
      decoration: EliudFontDecoration.None,
      color: defaultColor,
    );
    fonts[documentID] = fontModel;
    return fontModel;
  }

  FontModel _getHightlightFont1(int fontIndex) {
    var size = _defaultSize;
    var documentID = key(styleName, fontKeys[fontIndex], highlightLabel1);
    var fontModel = FontModel(
      fontName: fontNames[fontIndex],
      size: size.toDouble(),
      weight: EliudFontWeight.MostThick,
      style: EliudFontStyle.Italic,
      decoration: EliudFontDecoration.None,
      color: highlightColor,
    );
    fonts[documentID] = fontModel;
    return fontModel;
  }

  FontModel _getHightlightFont2(int fontIndex) {
    var size = _defaultSize;
    var documentID = key(styleName, fontKeys[fontIndex], highlightLabel2);
    var fontModel = FontModel(
      fontName: fontNames[fontIndex],
      size: size.toDouble(),
      weight: EliudFontWeight.MostThick,
      style: EliudFontStyle.Normal,
      decoration: EliudFontDecoration.Underline,
      color: highlightColor,
    );
    fonts[documentID] = fontModel;
    return fontModel;
  }

  FontModel _getLinkFont(int fontIndex) {
    var size = _defaultSize;
    var documentID = key(styleName, fontKeys[fontIndex], linkLabel);
    var fontModel = FontModel(
      fontName: fontNames[fontIndex],
      size: size.toDouble(),
      weight: EliudFontWeight.Normal,
      style: EliudFontStyle.Normal,
      decoration: EliudFontDecoration.Underline,
      color: linkColor,
    );
    fonts[documentID] = fontModel;
    return fontModel;
  }

  void _installHeaderFontsFor(int fontIndex) {
    for (var i = 0; i < _weights.length; i++) {
      _getHeaderFont(fontIndex, i);
    }
  }

  void _installNormalFontFor(int fontIndex) {
//    for (var i = 0; i < _weights.length; i++) {
      _getNormalFont(fontIndex);
//    }
  }

  void _installDecorationLabelStyleFontFor(int fontIndex) {
    _getDecorationLabelStyleFont(fontIndex);
  }

    void _installSmallFontFor(int fontIndex) {
//    for (var i = 0; i < _weights.length; i++) {
      _getSmallFont(fontIndex);
//    }
  }

  void _installHighlightFont1For(int fontIndex) {
//    for (var i = 0; i < _weights.length; i++) {
      _getHightlightFont1(fontIndex);
//    }
  }

  void _installHighlightFont2For(int fontIndex) {
//    for (var i = 0; i < _weights.length; i++) {
      _getHightlightFont2(fontIndex);
//    }
  }

  void _installLinkFontFor(int fontIndex) {
//    for (var i = 0; i < _weights.length; i++) {
      _getLinkFont(fontIndex);
//    }
  }

  void _setupFonts() {
    for (var i = 0; i < fontNames.length; i++) {
      _installHeaderFontsFor(i);
      _installNormalFontFor(i);
      _installSmallFontFor(i);
      _installDecorationLabelStyleFontFor(i);
      _installHighlightFont1For(i);
      _installHighlightFont2For(i);
      _installLinkFontFor(i);
    }
  }

  FontModel? getFont(String fontKey) {
    var fontModel = fonts[fontKey];
    if (fontModel == null) {
      print('Warning: font $fontKey not found');
    }
    return fontModel;
  }

  static FontWeight toFontWeight(EliudFontWeight? eliudFontWeight) {
    if (eliudFontWeight == null) return FontWeight.w400;
    switch (eliudFontWeight) {
      case EliudFontWeight.Thin:
        return FontWeight.w100;
      case EliudFontWeight.ExtraLight:
        return FontWeight.w200;
      case EliudFontWeight.Light:
        return FontWeight.w300;
      case EliudFontWeight.Normal:
        return FontWeight.w400;
      case EliudFontWeight.Medium:
        return FontWeight.w500;
      case EliudFontWeight.SemiBold:
        return FontWeight.w600;
      case EliudFontWeight.Bold:
        return FontWeight.w700;
      case EliudFontWeight.ExtraBold:
        return FontWeight.w800;
      case EliudFontWeight.MostThick:
        return FontWeight.w900;
      case EliudFontWeight.Unknown:
        return FontWeight.w900;
    }
    return FontWeight.w400;
  }

  static TextStyle? textStyle(FontModel? fontModel) {
    if (fontModel == null) return null;
    try {
      return GoogleFonts.getFont(fontModel.fontName!,
          fontSize: fontModel.size,
          fontWeight: FontTools.toFontWeight(fontModel.weight),
          color: RgbHelper.color(rgbo: fontModel.color),
          fontStyle: FontStyle.italic);
    } catch (_) {
      return null;
    }
  }
}

/*
       _ _           _ 
      | (_)         | |
   ___| |_ _   _  __| |
  / _ \ | | | | |/ _` |
 |  __/ | | |_| | (_| |
  \___|_|_|\__,_|\__,_|
                       
 
 mona_style_attributes_entity.dart
                       
 This code is generated. This is read only. Don't touch!

*/

import 'dart:collection';
import 'dart:convert';
import 'abstract_repository_singleton.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eliud_core/model/entity_export.dart';
import '../tools/bespoke_entities.dart';
import 'package:eliud_stl_mona/model/entity_export.dart';

import 'package:eliud_core/tools/common_tools.dart';
class MonaStyleAttributesEntity {
  final String? appId;
  final RgbEntity? formSubmitButtonColor;
  final String? formBackgroundId;
  final String? appBackgroundId;
  final RgbEntity? formSubmitButtonTextColor;
  final RgbEntity? formGroupTitleColor;
  final RgbEntity? formFieldTextColor;
  final RgbEntity? formFieldHeaderColor;
  final RgbEntity? formFieldFocusColor;
  final String? listBackgroundId;
  final RgbEntity? listTextItemColor;
  final RgbEntity? floatingButtonForegroundColor;
  final RgbEntity? floatingButtonBackgroundColor;
  final RgbEntity? dividerColor;
  final String? appBarBGId;
  final RgbEntity? appBarIconColor;
  final RgbEntity? appBarSelectedIconColor;
  final RgbEntity? appBarMenuBackgroundColor;
  final String? bottomNavigationBarBGId;
  final String? drawerBGId;
  final String? drawerHeaderBGId;
  final String? profileDrawerBGId;
  final String? profileDrawerHeaderBGId;
  final String? backgroundHomeMenuId;
  final RgbEntity? backgroundColorHomeMenu;
  final RgbEntity? iconColorHomeMenu;
  final FontEntity? h1;
  final FontEntity? h2;
  final FontEntity? h3;
  final FontEntity? h4;
  final FontEntity? h5;
  final FontEntity? textFieldHeader;
  final FontEntity? fontText;
  final FontEntity? fontSmallText;
  final FontEntity? fontHighlight1;
  final FontEntity? fontHighlight2;
  final FontEntity? fontLink;
  final int? routeBuilder;
  final int? routeAnimationDuration;

  MonaStyleAttributesEntity({this.appId, this.formSubmitButtonColor, this.formBackgroundId, this.appBackgroundId, this.formSubmitButtonTextColor, this.formGroupTitleColor, this.formFieldTextColor, this.formFieldHeaderColor, this.formFieldFocusColor, this.listBackgroundId, this.listTextItemColor, this.floatingButtonForegroundColor, this.floatingButtonBackgroundColor, this.dividerColor, this.appBarBGId, this.appBarIconColor, this.appBarSelectedIconColor, this.appBarMenuBackgroundColor, this.bottomNavigationBarBGId, this.drawerBGId, this.drawerHeaderBGId, this.profileDrawerBGId, this.profileDrawerHeaderBGId, this.backgroundHomeMenuId, this.backgroundColorHomeMenu, this.iconColorHomeMenu, this.h1, this.h2, this.h3, this.h4, this.h5, this.textFieldHeader, this.fontText, this.fontSmallText, this.fontHighlight1, this.fontHighlight2, this.fontLink, this.routeBuilder, this.routeAnimationDuration, });


  List<Object?> get props => [appId, formSubmitButtonColor, formBackgroundId, appBackgroundId, formSubmitButtonTextColor, formGroupTitleColor, formFieldTextColor, formFieldHeaderColor, formFieldFocusColor, listBackgroundId, listTextItemColor, floatingButtonForegroundColor, floatingButtonBackgroundColor, dividerColor, appBarBGId, appBarIconColor, appBarSelectedIconColor, appBarMenuBackgroundColor, bottomNavigationBarBGId, drawerBGId, drawerHeaderBGId, profileDrawerBGId, profileDrawerHeaderBGId, backgroundHomeMenuId, backgroundColorHomeMenu, iconColorHomeMenu, h1, h2, h3, h4, h5, textFieldHeader, fontText, fontSmallText, fontHighlight1, fontHighlight2, fontLink, routeBuilder, routeAnimationDuration, ];

  @override
  String toString() {
    return 'MonaStyleAttributesEntity{appId: $appId, formSubmitButtonColor: $formSubmitButtonColor, formBackgroundId: $formBackgroundId, appBackgroundId: $appBackgroundId, formSubmitButtonTextColor: $formSubmitButtonTextColor, formGroupTitleColor: $formGroupTitleColor, formFieldTextColor: $formFieldTextColor, formFieldHeaderColor: $formFieldHeaderColor, formFieldFocusColor: $formFieldFocusColor, listBackgroundId: $listBackgroundId, listTextItemColor: $listTextItemColor, floatingButtonForegroundColor: $floatingButtonForegroundColor, floatingButtonBackgroundColor: $floatingButtonBackgroundColor, dividerColor: $dividerColor, appBarBGId: $appBarBGId, appBarIconColor: $appBarIconColor, appBarSelectedIconColor: $appBarSelectedIconColor, appBarMenuBackgroundColor: $appBarMenuBackgroundColor, bottomNavigationBarBGId: $bottomNavigationBarBGId, drawerBGId: $drawerBGId, drawerHeaderBGId: $drawerHeaderBGId, profileDrawerBGId: $profileDrawerBGId, profileDrawerHeaderBGId: $profileDrawerHeaderBGId, backgroundHomeMenuId: $backgroundHomeMenuId, backgroundColorHomeMenu: $backgroundColorHomeMenu, iconColorHomeMenu: $iconColorHomeMenu, h1: $h1, h2: $h2, h3: $h3, h4: $h4, h5: $h5, textFieldHeader: $textFieldHeader, fontText: $fontText, fontSmallText: $fontSmallText, fontHighlight1: $fontHighlight1, fontHighlight2: $fontHighlight2, fontLink: $fontLink, routeBuilder: $routeBuilder, routeAnimationDuration: $routeAnimationDuration}';
  }

  static MonaStyleAttributesEntity? fromMap(Object? o) {
    if (o == null) return null;
    var map = o as Map<String, dynamic>;

    var formSubmitButtonColorFromMap;
    formSubmitButtonColorFromMap = map['formSubmitButtonColor'];
    if (formSubmitButtonColorFromMap != null)
      formSubmitButtonColorFromMap = RgbEntity.fromMap(formSubmitButtonColorFromMap);
    var formSubmitButtonTextColorFromMap;
    formSubmitButtonTextColorFromMap = map['formSubmitButtonTextColor'];
    if (formSubmitButtonTextColorFromMap != null)
      formSubmitButtonTextColorFromMap = RgbEntity.fromMap(formSubmitButtonTextColorFromMap);
    var formGroupTitleColorFromMap;
    formGroupTitleColorFromMap = map['formGroupTitleColor'];
    if (formGroupTitleColorFromMap != null)
      formGroupTitleColorFromMap = RgbEntity.fromMap(formGroupTitleColorFromMap);
    var formFieldTextColorFromMap;
    formFieldTextColorFromMap = map['formFieldTextColor'];
    if (formFieldTextColorFromMap != null)
      formFieldTextColorFromMap = RgbEntity.fromMap(formFieldTextColorFromMap);
    var formFieldHeaderColorFromMap;
    formFieldHeaderColorFromMap = map['formFieldHeaderColor'];
    if (formFieldHeaderColorFromMap != null)
      formFieldHeaderColorFromMap = RgbEntity.fromMap(formFieldHeaderColorFromMap);
    var formFieldFocusColorFromMap;
    formFieldFocusColorFromMap = map['formFieldFocusColor'];
    if (formFieldFocusColorFromMap != null)
      formFieldFocusColorFromMap = RgbEntity.fromMap(formFieldFocusColorFromMap);
    var listTextItemColorFromMap;
    listTextItemColorFromMap = map['listTextItemColor'];
    if (listTextItemColorFromMap != null)
      listTextItemColorFromMap = RgbEntity.fromMap(listTextItemColorFromMap);
    var floatingButtonForegroundColorFromMap;
    floatingButtonForegroundColorFromMap = map['floatingButtonForegroundColor'];
    if (floatingButtonForegroundColorFromMap != null)
      floatingButtonForegroundColorFromMap = RgbEntity.fromMap(floatingButtonForegroundColorFromMap);
    var floatingButtonBackgroundColorFromMap;
    floatingButtonBackgroundColorFromMap = map['floatingButtonBackgroundColor'];
    if (floatingButtonBackgroundColorFromMap != null)
      floatingButtonBackgroundColorFromMap = RgbEntity.fromMap(floatingButtonBackgroundColorFromMap);
    var dividerColorFromMap;
    dividerColorFromMap = map['dividerColor'];
    if (dividerColorFromMap != null)
      dividerColorFromMap = RgbEntity.fromMap(dividerColorFromMap);
    var appBarIconColorFromMap;
    appBarIconColorFromMap = map['appBarIconColor'];
    if (appBarIconColorFromMap != null)
      appBarIconColorFromMap = RgbEntity.fromMap(appBarIconColorFromMap);
    var appBarSelectedIconColorFromMap;
    appBarSelectedIconColorFromMap = map['appBarSelectedIconColor'];
    if (appBarSelectedIconColorFromMap != null)
      appBarSelectedIconColorFromMap = RgbEntity.fromMap(appBarSelectedIconColorFromMap);
    var appBarMenuBackgroundColorFromMap;
    appBarMenuBackgroundColorFromMap = map['appBarMenuBackgroundColor'];
    if (appBarMenuBackgroundColorFromMap != null)
      appBarMenuBackgroundColorFromMap = RgbEntity.fromMap(appBarMenuBackgroundColorFromMap);
    var backgroundColorHomeMenuFromMap;
    backgroundColorHomeMenuFromMap = map['backgroundColorHomeMenu'];
    if (backgroundColorHomeMenuFromMap != null)
      backgroundColorHomeMenuFromMap = RgbEntity.fromMap(backgroundColorHomeMenuFromMap);
    var iconColorHomeMenuFromMap;
    iconColorHomeMenuFromMap = map['iconColorHomeMenu'];
    if (iconColorHomeMenuFromMap != null)
      iconColorHomeMenuFromMap = RgbEntity.fromMap(iconColorHomeMenuFromMap);
    var h1FromMap;
    h1FromMap = map['h1'];
    if (h1FromMap != null)
      h1FromMap = FontEntity.fromMap(h1FromMap);
    var h2FromMap;
    h2FromMap = map['h2'];
    if (h2FromMap != null)
      h2FromMap = FontEntity.fromMap(h2FromMap);
    var h3FromMap;
    h3FromMap = map['h3'];
    if (h3FromMap != null)
      h3FromMap = FontEntity.fromMap(h3FromMap);
    var h4FromMap;
    h4FromMap = map['h4'];
    if (h4FromMap != null)
      h4FromMap = FontEntity.fromMap(h4FromMap);
    var h5FromMap;
    h5FromMap = map['h5'];
    if (h5FromMap != null)
      h5FromMap = FontEntity.fromMap(h5FromMap);
    var textFieldHeaderFromMap;
    textFieldHeaderFromMap = map['textFieldHeader'];
    if (textFieldHeaderFromMap != null)
      textFieldHeaderFromMap = FontEntity.fromMap(textFieldHeaderFromMap);
    var fontTextFromMap;
    fontTextFromMap = map['fontText'];
    if (fontTextFromMap != null)
      fontTextFromMap = FontEntity.fromMap(fontTextFromMap);
    var fontSmallTextFromMap;
    fontSmallTextFromMap = map['fontSmallText'];
    if (fontSmallTextFromMap != null)
      fontSmallTextFromMap = FontEntity.fromMap(fontSmallTextFromMap);
    var fontHighlight1FromMap;
    fontHighlight1FromMap = map['fontHighlight1'];
    if (fontHighlight1FromMap != null)
      fontHighlight1FromMap = FontEntity.fromMap(fontHighlight1FromMap);
    var fontHighlight2FromMap;
    fontHighlight2FromMap = map['fontHighlight2'];
    if (fontHighlight2FromMap != null)
      fontHighlight2FromMap = FontEntity.fromMap(fontHighlight2FromMap);
    var fontLinkFromMap;
    fontLinkFromMap = map['fontLink'];
    if (fontLinkFromMap != null)
      fontLinkFromMap = FontEntity.fromMap(fontLinkFromMap);

    return MonaStyleAttributesEntity(
      appId: map['appId'], 
      formSubmitButtonColor: formSubmitButtonColorFromMap, 
      formBackgroundId: map['formBackgroundId'], 
      appBackgroundId: map['appBackgroundId'], 
      formSubmitButtonTextColor: formSubmitButtonTextColorFromMap, 
      formGroupTitleColor: formGroupTitleColorFromMap, 
      formFieldTextColor: formFieldTextColorFromMap, 
      formFieldHeaderColor: formFieldHeaderColorFromMap, 
      formFieldFocusColor: formFieldFocusColorFromMap, 
      listBackgroundId: map['listBackgroundId'], 
      listTextItemColor: listTextItemColorFromMap, 
      floatingButtonForegroundColor: floatingButtonForegroundColorFromMap, 
      floatingButtonBackgroundColor: floatingButtonBackgroundColorFromMap, 
      dividerColor: dividerColorFromMap, 
      appBarBGId: map['appBarBGId'], 
      appBarIconColor: appBarIconColorFromMap, 
      appBarSelectedIconColor: appBarSelectedIconColorFromMap, 
      appBarMenuBackgroundColor: appBarMenuBackgroundColorFromMap, 
      bottomNavigationBarBGId: map['bottomNavigationBarBGId'], 
      drawerBGId: map['drawerBGId'], 
      drawerHeaderBGId: map['drawerHeaderBGId'], 
      profileDrawerBGId: map['profileDrawerBGId'], 
      profileDrawerHeaderBGId: map['profileDrawerHeaderBGId'], 
      backgroundHomeMenuId: map['backgroundHomeMenuId'], 
      backgroundColorHomeMenu: backgroundColorHomeMenuFromMap, 
      iconColorHomeMenu: iconColorHomeMenuFromMap, 
      h1: h1FromMap, 
      h2: h2FromMap, 
      h3: h3FromMap, 
      h4: h4FromMap, 
      h5: h5FromMap, 
      textFieldHeader: textFieldHeaderFromMap, 
      fontText: fontTextFromMap, 
      fontSmallText: fontSmallTextFromMap, 
      fontHighlight1: fontHighlight1FromMap, 
      fontHighlight2: fontHighlight2FromMap, 
      fontLink: fontLinkFromMap, 
      routeBuilder: map['routeBuilder'], 
      routeAnimationDuration: int.tryParse(map['routeAnimationDuration'].toString()), 
    );
  }

  Map<String, Object?> toDocument() {
    final Map<String, dynamic>? formSubmitButtonColorMap = formSubmitButtonColor != null 
        ? formSubmitButtonColor!.toDocument()
        : null;
    final Map<String, dynamic>? formSubmitButtonTextColorMap = formSubmitButtonTextColor != null 
        ? formSubmitButtonTextColor!.toDocument()
        : null;
    final Map<String, dynamic>? formGroupTitleColorMap = formGroupTitleColor != null 
        ? formGroupTitleColor!.toDocument()
        : null;
    final Map<String, dynamic>? formFieldTextColorMap = formFieldTextColor != null 
        ? formFieldTextColor!.toDocument()
        : null;
    final Map<String, dynamic>? formFieldHeaderColorMap = formFieldHeaderColor != null 
        ? formFieldHeaderColor!.toDocument()
        : null;
    final Map<String, dynamic>? formFieldFocusColorMap = formFieldFocusColor != null 
        ? formFieldFocusColor!.toDocument()
        : null;
    final Map<String, dynamic>? listTextItemColorMap = listTextItemColor != null 
        ? listTextItemColor!.toDocument()
        : null;
    final Map<String, dynamic>? floatingButtonForegroundColorMap = floatingButtonForegroundColor != null 
        ? floatingButtonForegroundColor!.toDocument()
        : null;
    final Map<String, dynamic>? floatingButtonBackgroundColorMap = floatingButtonBackgroundColor != null 
        ? floatingButtonBackgroundColor!.toDocument()
        : null;
    final Map<String, dynamic>? dividerColorMap = dividerColor != null 
        ? dividerColor!.toDocument()
        : null;
    final Map<String, dynamic>? appBarIconColorMap = appBarIconColor != null 
        ? appBarIconColor!.toDocument()
        : null;
    final Map<String, dynamic>? appBarSelectedIconColorMap = appBarSelectedIconColor != null 
        ? appBarSelectedIconColor!.toDocument()
        : null;
    final Map<String, dynamic>? appBarMenuBackgroundColorMap = appBarMenuBackgroundColor != null 
        ? appBarMenuBackgroundColor!.toDocument()
        : null;
    final Map<String, dynamic>? backgroundColorHomeMenuMap = backgroundColorHomeMenu != null 
        ? backgroundColorHomeMenu!.toDocument()
        : null;
    final Map<String, dynamic>? iconColorHomeMenuMap = iconColorHomeMenu != null 
        ? iconColorHomeMenu!.toDocument()
        : null;
    final Map<String, dynamic>? h1Map = h1 != null 
        ? h1!.toDocument()
        : null;
    final Map<String, dynamic>? h2Map = h2 != null 
        ? h2!.toDocument()
        : null;
    final Map<String, dynamic>? h3Map = h3 != null 
        ? h3!.toDocument()
        : null;
    final Map<String, dynamic>? h4Map = h4 != null 
        ? h4!.toDocument()
        : null;
    final Map<String, dynamic>? h5Map = h5 != null 
        ? h5!.toDocument()
        : null;
    final Map<String, dynamic>? textFieldHeaderMap = textFieldHeader != null 
        ? textFieldHeader!.toDocument()
        : null;
    final Map<String, dynamic>? fontTextMap = fontText != null 
        ? fontText!.toDocument()
        : null;
    final Map<String, dynamic>? fontSmallTextMap = fontSmallText != null 
        ? fontSmallText!.toDocument()
        : null;
    final Map<String, dynamic>? fontHighlight1Map = fontHighlight1 != null 
        ? fontHighlight1!.toDocument()
        : null;
    final Map<String, dynamic>? fontHighlight2Map = fontHighlight2 != null 
        ? fontHighlight2!.toDocument()
        : null;
    final Map<String, dynamic>? fontLinkMap = fontLink != null 
        ? fontLink!.toDocument()
        : null;

    Map<String, Object?> theDocument = HashMap();
    if (appId != null) theDocument["appId"] = appId;
      else theDocument["appId"] = null;
    if (formSubmitButtonColor != null) theDocument["formSubmitButtonColor"] = formSubmitButtonColorMap;
      else theDocument["formSubmitButtonColor"] = null;
    if (formBackgroundId != null) theDocument["formBackgroundId"] = formBackgroundId;
      else theDocument["formBackgroundId"] = null;
    if (appBackgroundId != null) theDocument["appBackgroundId"] = appBackgroundId;
      else theDocument["appBackgroundId"] = null;
    if (formSubmitButtonTextColor != null) theDocument["formSubmitButtonTextColor"] = formSubmitButtonTextColorMap;
      else theDocument["formSubmitButtonTextColor"] = null;
    if (formGroupTitleColor != null) theDocument["formGroupTitleColor"] = formGroupTitleColorMap;
      else theDocument["formGroupTitleColor"] = null;
    if (formFieldTextColor != null) theDocument["formFieldTextColor"] = formFieldTextColorMap;
      else theDocument["formFieldTextColor"] = null;
    if (formFieldHeaderColor != null) theDocument["formFieldHeaderColor"] = formFieldHeaderColorMap;
      else theDocument["formFieldHeaderColor"] = null;
    if (formFieldFocusColor != null) theDocument["formFieldFocusColor"] = formFieldFocusColorMap;
      else theDocument["formFieldFocusColor"] = null;
    if (listBackgroundId != null) theDocument["listBackgroundId"] = listBackgroundId;
      else theDocument["listBackgroundId"] = null;
    if (listTextItemColor != null) theDocument["listTextItemColor"] = listTextItemColorMap;
      else theDocument["listTextItemColor"] = null;
    if (floatingButtonForegroundColor != null) theDocument["floatingButtonForegroundColor"] = floatingButtonForegroundColorMap;
      else theDocument["floatingButtonForegroundColor"] = null;
    if (floatingButtonBackgroundColor != null) theDocument["floatingButtonBackgroundColor"] = floatingButtonBackgroundColorMap;
      else theDocument["floatingButtonBackgroundColor"] = null;
    if (dividerColor != null) theDocument["dividerColor"] = dividerColorMap;
      else theDocument["dividerColor"] = null;
    if (appBarBGId != null) theDocument["appBarBGId"] = appBarBGId;
      else theDocument["appBarBGId"] = null;
    if (appBarIconColor != null) theDocument["appBarIconColor"] = appBarIconColorMap;
      else theDocument["appBarIconColor"] = null;
    if (appBarSelectedIconColor != null) theDocument["appBarSelectedIconColor"] = appBarSelectedIconColorMap;
      else theDocument["appBarSelectedIconColor"] = null;
    if (appBarMenuBackgroundColor != null) theDocument["appBarMenuBackgroundColor"] = appBarMenuBackgroundColorMap;
      else theDocument["appBarMenuBackgroundColor"] = null;
    if (bottomNavigationBarBGId != null) theDocument["bottomNavigationBarBGId"] = bottomNavigationBarBGId;
      else theDocument["bottomNavigationBarBGId"] = null;
    if (drawerBGId != null) theDocument["drawerBGId"] = drawerBGId;
      else theDocument["drawerBGId"] = null;
    if (drawerHeaderBGId != null) theDocument["drawerHeaderBGId"] = drawerHeaderBGId;
      else theDocument["drawerHeaderBGId"] = null;
    if (profileDrawerBGId != null) theDocument["profileDrawerBGId"] = profileDrawerBGId;
      else theDocument["profileDrawerBGId"] = null;
    if (profileDrawerHeaderBGId != null) theDocument["profileDrawerHeaderBGId"] = profileDrawerHeaderBGId;
      else theDocument["profileDrawerHeaderBGId"] = null;
    if (backgroundHomeMenuId != null) theDocument["backgroundHomeMenuId"] = backgroundHomeMenuId;
      else theDocument["backgroundHomeMenuId"] = null;
    if (backgroundColorHomeMenu != null) theDocument["backgroundColorHomeMenu"] = backgroundColorHomeMenuMap;
      else theDocument["backgroundColorHomeMenu"] = null;
    if (iconColorHomeMenu != null) theDocument["iconColorHomeMenu"] = iconColorHomeMenuMap;
      else theDocument["iconColorHomeMenu"] = null;
    if (h1 != null) theDocument["h1"] = h1Map;
      else theDocument["h1"] = null;
    if (h2 != null) theDocument["h2"] = h2Map;
      else theDocument["h2"] = null;
    if (h3 != null) theDocument["h3"] = h3Map;
      else theDocument["h3"] = null;
    if (h4 != null) theDocument["h4"] = h4Map;
      else theDocument["h4"] = null;
    if (h5 != null) theDocument["h5"] = h5Map;
      else theDocument["h5"] = null;
    if (textFieldHeader != null) theDocument["textFieldHeader"] = textFieldHeaderMap;
      else theDocument["textFieldHeader"] = null;
    if (fontText != null) theDocument["fontText"] = fontTextMap;
      else theDocument["fontText"] = null;
    if (fontSmallText != null) theDocument["fontSmallText"] = fontSmallTextMap;
      else theDocument["fontSmallText"] = null;
    if (fontHighlight1 != null) theDocument["fontHighlight1"] = fontHighlight1Map;
      else theDocument["fontHighlight1"] = null;
    if (fontHighlight2 != null) theDocument["fontHighlight2"] = fontHighlight2Map;
      else theDocument["fontHighlight2"] = null;
    if (fontLink != null) theDocument["fontLink"] = fontLinkMap;
      else theDocument["fontLink"] = null;
    if (routeBuilder != null) theDocument["routeBuilder"] = routeBuilder;
      else theDocument["routeBuilder"] = null;
    if (routeAnimationDuration != null) theDocument["routeAnimationDuration"] = routeAnimationDuration;
      else theDocument["routeAnimationDuration"] = null;
    return theDocument;
  }

  static MonaStyleAttributesEntity? fromJsonString(String json) {
    Map<String, dynamic>? generationSpecificationMap = jsonDecode(json);
    return fromMap(generationSpecificationMap);
  }

  String toJsonString() {
    return jsonEncode(toDocument());
  }

}


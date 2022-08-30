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
import 'package:eliud_core/tools/random.dart';
import 'abstract_repository_singleton.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eliud_core/core/base/entity_base.dart';
import 'package:eliud_core/model/entity_export.dart';
import '../tools/bespoke_entities.dart';
import 'package:eliud_stl_mona/model/entity_export.dart';

import 'package:eliud_core/tools/common_tools.dart';
class MonaStyleAttributesEntity implements EntityBase {
  final String? appId;
  final BackgroundEntity? formBackground;
  final BackgroundEntity? appBackground;
  final RgbEntity? formGroupTitleColor;
  final RgbEntity? formFieldTextColor;
  final RgbEntity? formFieldHeaderColor;
  final RgbEntity? formFieldFocusColor;
  final BackgroundEntity? listBackground;
  final RgbEntity? listTextItemColor;
  final RgbEntity? floatingButtonForegroundColor;
  final RgbEntity? floatingButtonBackgroundColor;
  final RgbEntity? dividerColor;
  final BackgroundEntity? topicContainerBackground;
  final BackgroundEntity? actionContainerBackground;
  final BackgroundEntity? appBarBG;
  final RgbEntity? appBarIconColor;
  final RgbEntity? appBarSelectedIconColor;
  final RgbEntity? appBarMenuBackgroundColor;
  final BackgroundEntity? bottomNavigationBarBG;
  final BackgroundEntity? drawerBG;
  final BackgroundEntity? drawerHeaderBG;
  final BackgroundEntity? profileDrawerBG;
  final BackgroundEntity? profileDrawerHeaderBG;
  final RgbEntity? backgroundColorHomeMenu;
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

  MonaStyleAttributesEntity({required this.appId, this.formBackground, this.appBackground, this.formGroupTitleColor, this.formFieldTextColor, this.formFieldHeaderColor, this.formFieldFocusColor, this.listBackground, this.listTextItemColor, this.floatingButtonForegroundColor, this.floatingButtonBackgroundColor, this.dividerColor, this.topicContainerBackground, this.actionContainerBackground, this.appBarBG, this.appBarIconColor, this.appBarSelectedIconColor, this.appBarMenuBackgroundColor, this.bottomNavigationBarBG, this.drawerBG, this.drawerHeaderBG, this.profileDrawerBG, this.profileDrawerHeaderBG, this.backgroundColorHomeMenu, this.h1, this.h2, this.h3, this.h4, this.h5, this.textFieldHeader, this.fontText, this.fontSmallText, this.fontHighlight1, this.fontHighlight2, this.fontLink, this.routeBuilder, this.routeAnimationDuration, });

  MonaStyleAttributesEntity copyWith({String? documentID, String? appId, BackgroundEntity? formBackground, BackgroundEntity? appBackground, RgbEntity? formGroupTitleColor, RgbEntity? formFieldTextColor, RgbEntity? formFieldHeaderColor, RgbEntity? formFieldFocusColor, BackgroundEntity? listBackground, RgbEntity? listTextItemColor, RgbEntity? floatingButtonForegroundColor, RgbEntity? floatingButtonBackgroundColor, RgbEntity? dividerColor, BackgroundEntity? topicContainerBackground, BackgroundEntity? actionContainerBackground, BackgroundEntity? appBarBG, RgbEntity? appBarIconColor, RgbEntity? appBarSelectedIconColor, RgbEntity? appBarMenuBackgroundColor, BackgroundEntity? bottomNavigationBarBG, BackgroundEntity? drawerBG, BackgroundEntity? drawerHeaderBG, BackgroundEntity? profileDrawerBG, BackgroundEntity? profileDrawerHeaderBG, RgbEntity? backgroundColorHomeMenu, FontEntity? h1, FontEntity? h2, FontEntity? h3, FontEntity? h4, FontEntity? h5, FontEntity? textFieldHeader, FontEntity? fontText, FontEntity? fontSmallText, FontEntity? fontHighlight1, FontEntity? fontHighlight2, FontEntity? fontLink, int? routeBuilder, int? routeAnimationDuration, }) {
    return MonaStyleAttributesEntity(appId : appId ?? this.appId, formBackground : formBackground ?? this.formBackground, appBackground : appBackground ?? this.appBackground, formGroupTitleColor : formGroupTitleColor ?? this.formGroupTitleColor, formFieldTextColor : formFieldTextColor ?? this.formFieldTextColor, formFieldHeaderColor : formFieldHeaderColor ?? this.formFieldHeaderColor, formFieldFocusColor : formFieldFocusColor ?? this.formFieldFocusColor, listBackground : listBackground ?? this.listBackground, listTextItemColor : listTextItemColor ?? this.listTextItemColor, floatingButtonForegroundColor : floatingButtonForegroundColor ?? this.floatingButtonForegroundColor, floatingButtonBackgroundColor : floatingButtonBackgroundColor ?? this.floatingButtonBackgroundColor, dividerColor : dividerColor ?? this.dividerColor, topicContainerBackground : topicContainerBackground ?? this.topicContainerBackground, actionContainerBackground : actionContainerBackground ?? this.actionContainerBackground, appBarBG : appBarBG ?? this.appBarBG, appBarIconColor : appBarIconColor ?? this.appBarIconColor, appBarSelectedIconColor : appBarSelectedIconColor ?? this.appBarSelectedIconColor, appBarMenuBackgroundColor : appBarMenuBackgroundColor ?? this.appBarMenuBackgroundColor, bottomNavigationBarBG : bottomNavigationBarBG ?? this.bottomNavigationBarBG, drawerBG : drawerBG ?? this.drawerBG, drawerHeaderBG : drawerHeaderBG ?? this.drawerHeaderBG, profileDrawerBG : profileDrawerBG ?? this.profileDrawerBG, profileDrawerHeaderBG : profileDrawerHeaderBG ?? this.profileDrawerHeaderBG, backgroundColorHomeMenu : backgroundColorHomeMenu ?? this.backgroundColorHomeMenu, h1 : h1 ?? this.h1, h2 : h2 ?? this.h2, h3 : h3 ?? this.h3, h4 : h4 ?? this.h4, h5 : h5 ?? this.h5, textFieldHeader : textFieldHeader ?? this.textFieldHeader, fontText : fontText ?? this.fontText, fontSmallText : fontSmallText ?? this.fontSmallText, fontHighlight1 : fontHighlight1 ?? this.fontHighlight1, fontHighlight2 : fontHighlight2 ?? this.fontHighlight2, fontLink : fontLink ?? this.fontLink, routeBuilder : routeBuilder ?? this.routeBuilder, routeAnimationDuration : routeAnimationDuration ?? this.routeAnimationDuration, );
  }
  List<Object?> get props => [appId, formBackground, appBackground, formGroupTitleColor, formFieldTextColor, formFieldHeaderColor, formFieldFocusColor, listBackground, listTextItemColor, floatingButtonForegroundColor, floatingButtonBackgroundColor, dividerColor, topicContainerBackground, actionContainerBackground, appBarBG, appBarIconColor, appBarSelectedIconColor, appBarMenuBackgroundColor, bottomNavigationBarBG, drawerBG, drawerHeaderBG, profileDrawerBG, profileDrawerHeaderBG, backgroundColorHomeMenu, h1, h2, h3, h4, h5, textFieldHeader, fontText, fontSmallText, fontHighlight1, fontHighlight2, fontLink, routeBuilder, routeAnimationDuration, ];

  @override
  String toString() {
    return 'MonaStyleAttributesEntity{appId: $appId, formBackground: $formBackground, appBackground: $appBackground, formGroupTitleColor: $formGroupTitleColor, formFieldTextColor: $formFieldTextColor, formFieldHeaderColor: $formFieldHeaderColor, formFieldFocusColor: $formFieldFocusColor, listBackground: $listBackground, listTextItemColor: $listTextItemColor, floatingButtonForegroundColor: $floatingButtonForegroundColor, floatingButtonBackgroundColor: $floatingButtonBackgroundColor, dividerColor: $dividerColor, topicContainerBackground: $topicContainerBackground, actionContainerBackground: $actionContainerBackground, appBarBG: $appBarBG, appBarIconColor: $appBarIconColor, appBarSelectedIconColor: $appBarSelectedIconColor, appBarMenuBackgroundColor: $appBarMenuBackgroundColor, bottomNavigationBarBG: $bottomNavigationBarBG, drawerBG: $drawerBG, drawerHeaderBG: $drawerHeaderBG, profileDrawerBG: $profileDrawerBG, profileDrawerHeaderBG: $profileDrawerHeaderBG, backgroundColorHomeMenu: $backgroundColorHomeMenu, h1: $h1, h2: $h2, h3: $h3, h4: $h4, h5: $h5, textFieldHeader: $textFieldHeader, fontText: $fontText, fontSmallText: $fontSmallText, fontHighlight1: $fontHighlight1, fontHighlight2: $fontHighlight2, fontLink: $fontLink, routeBuilder: $routeBuilder, routeAnimationDuration: $routeAnimationDuration}';
  }

  static MonaStyleAttributesEntity? fromMap(Object? o, {Map<String, String>? newDocumentIds}) {
    if (o == null) return null;
    var map = o as Map<String, dynamic>;

    var formBackgroundFromMap;
    formBackgroundFromMap = map['formBackground'];
    if (formBackgroundFromMap != null)
      formBackgroundFromMap = BackgroundEntity.fromMap(formBackgroundFromMap, newDocumentIds: newDocumentIds);
    var appBackgroundFromMap;
    appBackgroundFromMap = map['appBackground'];
    if (appBackgroundFromMap != null)
      appBackgroundFromMap = BackgroundEntity.fromMap(appBackgroundFromMap, newDocumentIds: newDocumentIds);
    var formGroupTitleColorFromMap;
    formGroupTitleColorFromMap = map['formGroupTitleColor'];
    if (formGroupTitleColorFromMap != null)
      formGroupTitleColorFromMap = RgbEntity.fromMap(formGroupTitleColorFromMap, newDocumentIds: newDocumentIds);
    var formFieldTextColorFromMap;
    formFieldTextColorFromMap = map['formFieldTextColor'];
    if (formFieldTextColorFromMap != null)
      formFieldTextColorFromMap = RgbEntity.fromMap(formFieldTextColorFromMap, newDocumentIds: newDocumentIds);
    var formFieldHeaderColorFromMap;
    formFieldHeaderColorFromMap = map['formFieldHeaderColor'];
    if (formFieldHeaderColorFromMap != null)
      formFieldHeaderColorFromMap = RgbEntity.fromMap(formFieldHeaderColorFromMap, newDocumentIds: newDocumentIds);
    var formFieldFocusColorFromMap;
    formFieldFocusColorFromMap = map['formFieldFocusColor'];
    if (formFieldFocusColorFromMap != null)
      formFieldFocusColorFromMap = RgbEntity.fromMap(formFieldFocusColorFromMap, newDocumentIds: newDocumentIds);
    var listBackgroundFromMap;
    listBackgroundFromMap = map['listBackground'];
    if (listBackgroundFromMap != null)
      listBackgroundFromMap = BackgroundEntity.fromMap(listBackgroundFromMap, newDocumentIds: newDocumentIds);
    var listTextItemColorFromMap;
    listTextItemColorFromMap = map['listTextItemColor'];
    if (listTextItemColorFromMap != null)
      listTextItemColorFromMap = RgbEntity.fromMap(listTextItemColorFromMap, newDocumentIds: newDocumentIds);
    var floatingButtonForegroundColorFromMap;
    floatingButtonForegroundColorFromMap = map['floatingButtonForegroundColor'];
    if (floatingButtonForegroundColorFromMap != null)
      floatingButtonForegroundColorFromMap = RgbEntity.fromMap(floatingButtonForegroundColorFromMap, newDocumentIds: newDocumentIds);
    var floatingButtonBackgroundColorFromMap;
    floatingButtonBackgroundColorFromMap = map['floatingButtonBackgroundColor'];
    if (floatingButtonBackgroundColorFromMap != null)
      floatingButtonBackgroundColorFromMap = RgbEntity.fromMap(floatingButtonBackgroundColorFromMap, newDocumentIds: newDocumentIds);
    var dividerColorFromMap;
    dividerColorFromMap = map['dividerColor'];
    if (dividerColorFromMap != null)
      dividerColorFromMap = RgbEntity.fromMap(dividerColorFromMap, newDocumentIds: newDocumentIds);
    var topicContainerBackgroundFromMap;
    topicContainerBackgroundFromMap = map['topicContainerBackground'];
    if (topicContainerBackgroundFromMap != null)
      topicContainerBackgroundFromMap = BackgroundEntity.fromMap(topicContainerBackgroundFromMap, newDocumentIds: newDocumentIds);
    var actionContainerBackgroundFromMap;
    actionContainerBackgroundFromMap = map['actionContainerBackground'];
    if (actionContainerBackgroundFromMap != null)
      actionContainerBackgroundFromMap = BackgroundEntity.fromMap(actionContainerBackgroundFromMap, newDocumentIds: newDocumentIds);
    var appBarBGFromMap;
    appBarBGFromMap = map['appBarBG'];
    if (appBarBGFromMap != null)
      appBarBGFromMap = BackgroundEntity.fromMap(appBarBGFromMap, newDocumentIds: newDocumentIds);
    var appBarIconColorFromMap;
    appBarIconColorFromMap = map['appBarIconColor'];
    if (appBarIconColorFromMap != null)
      appBarIconColorFromMap = RgbEntity.fromMap(appBarIconColorFromMap, newDocumentIds: newDocumentIds);
    var appBarSelectedIconColorFromMap;
    appBarSelectedIconColorFromMap = map['appBarSelectedIconColor'];
    if (appBarSelectedIconColorFromMap != null)
      appBarSelectedIconColorFromMap = RgbEntity.fromMap(appBarSelectedIconColorFromMap, newDocumentIds: newDocumentIds);
    var appBarMenuBackgroundColorFromMap;
    appBarMenuBackgroundColorFromMap = map['appBarMenuBackgroundColor'];
    if (appBarMenuBackgroundColorFromMap != null)
      appBarMenuBackgroundColorFromMap = RgbEntity.fromMap(appBarMenuBackgroundColorFromMap, newDocumentIds: newDocumentIds);
    var bottomNavigationBarBGFromMap;
    bottomNavigationBarBGFromMap = map['bottomNavigationBarBG'];
    if (bottomNavigationBarBGFromMap != null)
      bottomNavigationBarBGFromMap = BackgroundEntity.fromMap(bottomNavigationBarBGFromMap, newDocumentIds: newDocumentIds);
    var drawerBGFromMap;
    drawerBGFromMap = map['drawerBG'];
    if (drawerBGFromMap != null)
      drawerBGFromMap = BackgroundEntity.fromMap(drawerBGFromMap, newDocumentIds: newDocumentIds);
    var drawerHeaderBGFromMap;
    drawerHeaderBGFromMap = map['drawerHeaderBG'];
    if (drawerHeaderBGFromMap != null)
      drawerHeaderBGFromMap = BackgroundEntity.fromMap(drawerHeaderBGFromMap, newDocumentIds: newDocumentIds);
    var profileDrawerBGFromMap;
    profileDrawerBGFromMap = map['profileDrawerBG'];
    if (profileDrawerBGFromMap != null)
      profileDrawerBGFromMap = BackgroundEntity.fromMap(profileDrawerBGFromMap, newDocumentIds: newDocumentIds);
    var profileDrawerHeaderBGFromMap;
    profileDrawerHeaderBGFromMap = map['profileDrawerHeaderBG'];
    if (profileDrawerHeaderBGFromMap != null)
      profileDrawerHeaderBGFromMap = BackgroundEntity.fromMap(profileDrawerHeaderBGFromMap, newDocumentIds: newDocumentIds);
    var backgroundColorHomeMenuFromMap;
    backgroundColorHomeMenuFromMap = map['backgroundColorHomeMenu'];
    if (backgroundColorHomeMenuFromMap != null)
      backgroundColorHomeMenuFromMap = RgbEntity.fromMap(backgroundColorHomeMenuFromMap, newDocumentIds: newDocumentIds);
    var h1FromMap;
    h1FromMap = map['h1'];
    if (h1FromMap != null)
      h1FromMap = FontEntity.fromMap(h1FromMap, newDocumentIds: newDocumentIds);
    var h2FromMap;
    h2FromMap = map['h2'];
    if (h2FromMap != null)
      h2FromMap = FontEntity.fromMap(h2FromMap, newDocumentIds: newDocumentIds);
    var h3FromMap;
    h3FromMap = map['h3'];
    if (h3FromMap != null)
      h3FromMap = FontEntity.fromMap(h3FromMap, newDocumentIds: newDocumentIds);
    var h4FromMap;
    h4FromMap = map['h4'];
    if (h4FromMap != null)
      h4FromMap = FontEntity.fromMap(h4FromMap, newDocumentIds: newDocumentIds);
    var h5FromMap;
    h5FromMap = map['h5'];
    if (h5FromMap != null)
      h5FromMap = FontEntity.fromMap(h5FromMap, newDocumentIds: newDocumentIds);
    var textFieldHeaderFromMap;
    textFieldHeaderFromMap = map['textFieldHeader'];
    if (textFieldHeaderFromMap != null)
      textFieldHeaderFromMap = FontEntity.fromMap(textFieldHeaderFromMap, newDocumentIds: newDocumentIds);
    var fontTextFromMap;
    fontTextFromMap = map['fontText'];
    if (fontTextFromMap != null)
      fontTextFromMap = FontEntity.fromMap(fontTextFromMap, newDocumentIds: newDocumentIds);
    var fontSmallTextFromMap;
    fontSmallTextFromMap = map['fontSmallText'];
    if (fontSmallTextFromMap != null)
      fontSmallTextFromMap = FontEntity.fromMap(fontSmallTextFromMap, newDocumentIds: newDocumentIds);
    var fontHighlight1FromMap;
    fontHighlight1FromMap = map['fontHighlight1'];
    if (fontHighlight1FromMap != null)
      fontHighlight1FromMap = FontEntity.fromMap(fontHighlight1FromMap, newDocumentIds: newDocumentIds);
    var fontHighlight2FromMap;
    fontHighlight2FromMap = map['fontHighlight2'];
    if (fontHighlight2FromMap != null)
      fontHighlight2FromMap = FontEntity.fromMap(fontHighlight2FromMap, newDocumentIds: newDocumentIds);
    var fontLinkFromMap;
    fontLinkFromMap = map['fontLink'];
    if (fontLinkFromMap != null)
      fontLinkFromMap = FontEntity.fromMap(fontLinkFromMap, newDocumentIds: newDocumentIds);

    return MonaStyleAttributesEntity(
      appId: map['appId'], 
      formBackground: formBackgroundFromMap, 
      appBackground: appBackgroundFromMap, 
      formGroupTitleColor: formGroupTitleColorFromMap, 
      formFieldTextColor: formFieldTextColorFromMap, 
      formFieldHeaderColor: formFieldHeaderColorFromMap, 
      formFieldFocusColor: formFieldFocusColorFromMap, 
      listBackground: listBackgroundFromMap, 
      listTextItemColor: listTextItemColorFromMap, 
      floatingButtonForegroundColor: floatingButtonForegroundColorFromMap, 
      floatingButtonBackgroundColor: floatingButtonBackgroundColorFromMap, 
      dividerColor: dividerColorFromMap, 
      topicContainerBackground: topicContainerBackgroundFromMap, 
      actionContainerBackground: actionContainerBackgroundFromMap, 
      appBarBG: appBarBGFromMap, 
      appBarIconColor: appBarIconColorFromMap, 
      appBarSelectedIconColor: appBarSelectedIconColorFromMap, 
      appBarMenuBackgroundColor: appBarMenuBackgroundColorFromMap, 
      bottomNavigationBarBG: bottomNavigationBarBGFromMap, 
      drawerBG: drawerBGFromMap, 
      drawerHeaderBG: drawerHeaderBGFromMap, 
      profileDrawerBG: profileDrawerBGFromMap, 
      profileDrawerHeaderBG: profileDrawerHeaderBGFromMap, 
      backgroundColorHomeMenu: backgroundColorHomeMenuFromMap, 
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
    final Map<String, dynamic>? formBackgroundMap = formBackground != null 
        ? formBackground!.toDocument()
        : null;
    final Map<String, dynamic>? appBackgroundMap = appBackground != null 
        ? appBackground!.toDocument()
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
    final Map<String, dynamic>? listBackgroundMap = listBackground != null 
        ? listBackground!.toDocument()
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
    final Map<String, dynamic>? topicContainerBackgroundMap = topicContainerBackground != null 
        ? topicContainerBackground!.toDocument()
        : null;
    final Map<String, dynamic>? actionContainerBackgroundMap = actionContainerBackground != null 
        ? actionContainerBackground!.toDocument()
        : null;
    final Map<String, dynamic>? appBarBGMap = appBarBG != null 
        ? appBarBG!.toDocument()
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
    final Map<String, dynamic>? bottomNavigationBarBGMap = bottomNavigationBarBG != null 
        ? bottomNavigationBarBG!.toDocument()
        : null;
    final Map<String, dynamic>? drawerBGMap = drawerBG != null 
        ? drawerBG!.toDocument()
        : null;
    final Map<String, dynamic>? drawerHeaderBGMap = drawerHeaderBG != null 
        ? drawerHeaderBG!.toDocument()
        : null;
    final Map<String, dynamic>? profileDrawerBGMap = profileDrawerBG != null 
        ? profileDrawerBG!.toDocument()
        : null;
    final Map<String, dynamic>? profileDrawerHeaderBGMap = profileDrawerHeaderBG != null 
        ? profileDrawerHeaderBG!.toDocument()
        : null;
    final Map<String, dynamic>? backgroundColorHomeMenuMap = backgroundColorHomeMenu != null 
        ? backgroundColorHomeMenu!.toDocument()
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
    if (formBackground != null) theDocument["formBackground"] = formBackgroundMap;
      else theDocument["formBackground"] = null;
    if (appBackground != null) theDocument["appBackground"] = appBackgroundMap;
      else theDocument["appBackground"] = null;
    if (formGroupTitleColor != null) theDocument["formGroupTitleColor"] = formGroupTitleColorMap;
      else theDocument["formGroupTitleColor"] = null;
    if (formFieldTextColor != null) theDocument["formFieldTextColor"] = formFieldTextColorMap;
      else theDocument["formFieldTextColor"] = null;
    if (formFieldHeaderColor != null) theDocument["formFieldHeaderColor"] = formFieldHeaderColorMap;
      else theDocument["formFieldHeaderColor"] = null;
    if (formFieldFocusColor != null) theDocument["formFieldFocusColor"] = formFieldFocusColorMap;
      else theDocument["formFieldFocusColor"] = null;
    if (listBackground != null) theDocument["listBackground"] = listBackgroundMap;
      else theDocument["listBackground"] = null;
    if (listTextItemColor != null) theDocument["listTextItemColor"] = listTextItemColorMap;
      else theDocument["listTextItemColor"] = null;
    if (floatingButtonForegroundColor != null) theDocument["floatingButtonForegroundColor"] = floatingButtonForegroundColorMap;
      else theDocument["floatingButtonForegroundColor"] = null;
    if (floatingButtonBackgroundColor != null) theDocument["floatingButtonBackgroundColor"] = floatingButtonBackgroundColorMap;
      else theDocument["floatingButtonBackgroundColor"] = null;
    if (dividerColor != null) theDocument["dividerColor"] = dividerColorMap;
      else theDocument["dividerColor"] = null;
    if (topicContainerBackground != null) theDocument["topicContainerBackground"] = topicContainerBackgroundMap;
      else theDocument["topicContainerBackground"] = null;
    if (actionContainerBackground != null) theDocument["actionContainerBackground"] = actionContainerBackgroundMap;
      else theDocument["actionContainerBackground"] = null;
    if (appBarBG != null) theDocument["appBarBG"] = appBarBGMap;
      else theDocument["appBarBG"] = null;
    if (appBarIconColor != null) theDocument["appBarIconColor"] = appBarIconColorMap;
      else theDocument["appBarIconColor"] = null;
    if (appBarSelectedIconColor != null) theDocument["appBarSelectedIconColor"] = appBarSelectedIconColorMap;
      else theDocument["appBarSelectedIconColor"] = null;
    if (appBarMenuBackgroundColor != null) theDocument["appBarMenuBackgroundColor"] = appBarMenuBackgroundColorMap;
      else theDocument["appBarMenuBackgroundColor"] = null;
    if (bottomNavigationBarBG != null) theDocument["bottomNavigationBarBG"] = bottomNavigationBarBGMap;
      else theDocument["bottomNavigationBarBG"] = null;
    if (drawerBG != null) theDocument["drawerBG"] = drawerBGMap;
      else theDocument["drawerBG"] = null;
    if (drawerHeaderBG != null) theDocument["drawerHeaderBG"] = drawerHeaderBGMap;
      else theDocument["drawerHeaderBG"] = null;
    if (profileDrawerBG != null) theDocument["profileDrawerBG"] = profileDrawerBGMap;
      else theDocument["profileDrawerBG"] = null;
    if (profileDrawerHeaderBG != null) theDocument["profileDrawerHeaderBG"] = profileDrawerHeaderBGMap;
      else theDocument["profileDrawerHeaderBG"] = null;
    if (backgroundColorHomeMenu != null) theDocument["backgroundColorHomeMenu"] = backgroundColorHomeMenuMap;
      else theDocument["backgroundColorHomeMenu"] = null;
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

  @override
  MonaStyleAttributesEntity switchAppId({required String newAppId}) {
    var newEntity = copyWith(appId: newAppId);
    return newEntity;
  }

  static MonaStyleAttributesEntity? fromJsonString(String json, {Map<String, String>? newDocumentIds}) {
    Map<String, dynamic>? generationSpecificationMap = jsonDecode(json);
    return fromMap(generationSpecificationMap, newDocumentIds: newDocumentIds);
  }

  String toJsonString() {
    return jsonEncode(toDocument());
  }

  Future<Map<String, Object?>> enrichedDocument(Map<String, Object?> theDocument) async {
    return theDocument;
  }

}


/*
       _ _           _ 
      | (_)         | |
   ___| |_ _   _  __| |
  / _ \ | | | | |/ _` |
 |  __/ | | |_| | (_| |
  \___|_|_|\__,_|\__,_|
                       
 
 mona_style_attributes_model.dart
                       
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


import 'package:eliud_stl_mona/model/mona_style_attributes_entity.dart';

import 'package:eliud_core/tools/random.dart';

enum PageTransitionAnimation {
  SlideRightToLeft, SlideBottomToTop, ScaleRoute, RotationRoute, FadeRoute, Unknown
}


PageTransitionAnimation toPageTransitionAnimation(int? index) {
  switch (index) {
    case 0: return PageTransitionAnimation.SlideRightToLeft;
    case 1: return PageTransitionAnimation.SlideBottomToTop;
    case 2: return PageTransitionAnimation.ScaleRoute;
    case 3: return PageTransitionAnimation.RotationRoute;
    case 4: return PageTransitionAnimation.FadeRoute;
  }
  return PageTransitionAnimation.Unknown;
}


class MonaStyleAttributesModel implements ModelBase, WithAppId {
  static const String packageName = 'eliud_stl_mona';
  static const String id = 'monaStyleAttributess';

  String documentID;
  String appId;

  // Background of forms in admin section
  BackgroundModel? formBackground;

  // Background of pages in app
  BackgroundModel? appBackground;
  RgbModel? formGroupTitleColor;
  RgbModel? formFieldTextColor;
  RgbModel? formFieldHeaderColor;
  RgbModel? formFieldFocusColor;

  // Background of list in admin section
  BackgroundModel? listBackground;
  RgbModel? listTextItemColor;
  RgbModel? floatingButtonForegroundColor;
  RgbModel? floatingButtonBackgroundColor;
  RgbModel? dividerColor;

  // Background for topic container
  BackgroundModel? topicContainerBackground;

  // Background for action container
  BackgroundModel? actionContainerBackground;

  BackgroundModel? appBarBG;
  RgbModel? appBarIconColor;
  RgbModel? appBarSelectedIconColor;
  RgbModel? appBarMenuBackgroundColor;
  BackgroundModel? bottomNavigationBarBG;
  BackgroundModel? drawerBG;
  BackgroundModel? drawerHeaderBG;
  BackgroundModel? profileDrawerBG;
  BackgroundModel? profileDrawerHeaderBG;
  RgbModel? backgroundColorHomeMenu;
  FontModel? h1;
  FontModel? h2;
  FontModel? h3;
  FontModel? h4;
  FontModel? h5;
  FontModel? textFieldHeader;
  FontModel? fontText;
  FontModel? fontSmallText;
  FontModel? fontHighlight1;
  FontModel? fontHighlight2;
  FontModel? fontLink;
  PageTransitionAnimation? routeBuilder;
  int? routeAnimationDuration;

  RgbModel? dialogBackgroundColor;
  RgbModel? dialogSeperatorColor;
  RgbModel? popupMenuButtonColor;

  MonaStyleAttributesModel({
          required this.documentID, required this.appId, this.formBackground, this.appBackground, this.formGroupTitleColor, this.formFieldTextColor, this.formFieldHeaderColor, this.formFieldFocusColor,
          this.listBackground, this.listTextItemColor, this.floatingButtonForegroundColor, this.floatingButtonBackgroundColor, this.dividerColor, this.topicContainerBackground, this.actionContainerBackground,
          this.appBarBG, this.appBarIconColor, this.appBarSelectedIconColor, this.appBarMenuBackgroundColor, this.bottomNavigationBarBG, this.drawerBG, this.drawerHeaderBG, this.profileDrawerBG,
          this.profileDrawerHeaderBG, this.backgroundColorHomeMenu, this.h1, this.h2, this.h3, this.h4, this.h5, this.textFieldHeader, this.fontText, this.fontSmallText, this.fontHighlight1,
          this.fontHighlight2, this.fontLink, this.routeBuilder, this.routeAnimationDuration, this.dialogBackgroundColor, this.dialogSeperatorColor, this.popupMenuButtonColor })  {
    assert(documentID != null);
  }

  MonaStyleAttributesModel copyWith({String? documentID, String? appId, BackgroundModel? formBackground, BackgroundModel? appBackground, RgbModel? formGroupTitleColor, RgbModel? formFieldTextColor, RgbModel? formFieldHeaderColor,
            RgbModel? formFieldFocusColor, BackgroundModel? listBackground, RgbModel? listTextItemColor, RgbModel? floatingButtonForegroundColor, RgbModel? floatingButtonBackgroundColor, RgbModel? dividerColor,
            BackgroundModel? topicContainerBackground, BackgroundModel? actionContainerBackground, BackgroundModel? appBarBG, RgbModel? appBarIconColor, RgbModel? appBarSelectedIconColor, RgbModel? appBarMenuBackgroundColor,
            BackgroundModel? bottomNavigationBarBG, BackgroundModel? drawerBG, BackgroundModel? drawerHeaderBG, BackgroundModel? profileDrawerBG, BackgroundModel? profileDrawerHeaderBG, RgbModel? backgroundColorHomeMenu,
            FontModel? h1, FontModel? h2, FontModel? h3, FontModel? h4, FontModel? h5, FontModel? textFieldHeader, FontModel? fontText, FontModel? fontSmallText, FontModel? fontHighlight1, FontModel? fontHighlight2,
            FontModel? fontLink, PageTransitionAnimation? routeBuilder, int? routeAnimationDuration, RgbModel? dialogBackgroundColor, RgbModel? dialogSeperatorColor, RgbModel? popupMenuButtonColor  }) {
    return MonaStyleAttributesModel(
            documentID: documentID ?? this.documentID, appId: appId ?? this.appId, formBackground: formBackground ?? this.formBackground, appBackground: appBackground ?? this.appBackground,
            formGroupTitleColor: formGroupTitleColor ?? this.formGroupTitleColor, formFieldTextColor: formFieldTextColor ?? this.formFieldTextColor,
            formFieldHeaderColor: formFieldHeaderColor ?? this.formFieldHeaderColor, formFieldFocusColor: formFieldFocusColor ?? this.formFieldFocusColor,
            listBackground: listBackground ?? this.listBackground, listTextItemColor: listTextItemColor ?? this.listTextItemColor, floatingButtonForegroundColor: floatingButtonForegroundColor ?? this.floatingButtonForegroundColor,
            floatingButtonBackgroundColor: floatingButtonBackgroundColor ?? this.floatingButtonBackgroundColor, dividerColor: dividerColor ?? this.dividerColor,
            topicContainerBackground: topicContainerBackground ?? this.topicContainerBackground, actionContainerBackground: actionContainerBackground ?? this.actionContainerBackground,
            appBarBG: appBarBG ?? this.appBarBG, appBarIconColor: appBarIconColor ?? this.appBarIconColor, appBarSelectedIconColor: appBarSelectedIconColor ?? this.appBarSelectedIconColor,
            appBarMenuBackgroundColor: appBarMenuBackgroundColor ?? this.appBarMenuBackgroundColor, bottomNavigationBarBG: bottomNavigationBarBG ?? this.bottomNavigationBarBG,
            drawerBG: drawerBG ?? this.drawerBG, drawerHeaderBG: drawerHeaderBG ?? this.drawerHeaderBG, profileDrawerBG: profileDrawerBG ?? this.profileDrawerBG,
            profileDrawerHeaderBG: profileDrawerHeaderBG ?? this.profileDrawerHeaderBG, backgroundColorHomeMenu: backgroundColorHomeMenu ?? this.backgroundColorHomeMenu,
            h1: h1 ?? this.h1, h2: h2 ?? this.h2, h3: h3 ?? this.h3, h4: h4 ?? this.h4, h5: h5 ?? this.h5, textFieldHeader: textFieldHeader ?? this.textFieldHeader, fontText: fontText ?? this.fontText,
            fontSmallText: fontSmallText ?? this.fontSmallText, fontHighlight1: fontHighlight1 ?? this.fontHighlight1, fontHighlight2: fontHighlight2 ?? this.fontHighlight2, fontLink: fontLink ?? this.fontLink,
            routeBuilder: routeBuilder ?? this.routeBuilder, routeAnimationDuration: routeAnimationDuration ?? this.routeAnimationDuration, dialogBackgroundColor: dialogBackgroundColor ?? this.dialogBackgroundColor,
            dialogSeperatorColor: dialogSeperatorColor ?? this.dialogSeperatorColor, popupMenuButtonColor: popupMenuButtonColor ?? this.popupMenuButtonColor );
  }

  @override
  int get hashCode => documentID.hashCode ^ appId.hashCode ^ formBackground.hashCode ^ appBackground.hashCode ^ formGroupTitleColor.hashCode ^ formFieldTextColor.hashCode ^ formFieldHeaderColor.hashCode ^ formFieldFocusColor.hashCode ^ listBackground.hashCode ^ listTextItemColor.hashCode ^ floatingButtonForegroundColor.hashCode ^ floatingButtonBackgroundColor.hashCode ^ dividerColor.hashCode ^ topicContainerBackground.hashCode ^ actionContainerBackground.hashCode ^ appBarBG.hashCode ^ appBarIconColor.hashCode ^ appBarSelectedIconColor.hashCode ^ appBarMenuBackgroundColor.hashCode ^ bottomNavigationBarBG.hashCode ^ drawerBG.hashCode ^ drawerHeaderBG.hashCode ^ profileDrawerBG.hashCode ^ profileDrawerHeaderBG.hashCode ^ backgroundColorHomeMenu.hashCode ^ h1.hashCode ^ h2.hashCode ^ h3.hashCode ^ h4.hashCode ^ h5.hashCode ^ textFieldHeader.hashCode ^ fontText.hashCode ^ fontSmallText.hashCode ^ fontHighlight1.hashCode ^ fontHighlight2.hashCode ^ fontLink.hashCode ^ routeBuilder.hashCode ^ routeAnimationDuration.hashCode ^ dialogSeperatorColor.hashCode ^ dialogBackgroundColor.hashCode ^ popupMenuButtonColor.hashCode ;

  @override
  bool operator ==(Object other) =>
          identical(this, other) ||
          other is MonaStyleAttributesModel &&
          runtimeType == other.runtimeType && 
          documentID == other.documentID &&
          appId == other.appId &&
          formBackground == other.formBackground &&
          appBackground == other.appBackground &&
          formGroupTitleColor == other.formGroupTitleColor &&
          formFieldTextColor == other.formFieldTextColor &&
          formFieldHeaderColor == other.formFieldHeaderColor &&
          formFieldFocusColor == other.formFieldFocusColor &&
          listBackground == other.listBackground &&
          listTextItemColor == other.listTextItemColor &&
          floatingButtonForegroundColor == other.floatingButtonForegroundColor &&
          floatingButtonBackgroundColor == other.floatingButtonBackgroundColor &&
          dividerColor == other.dividerColor &&
          topicContainerBackground == other.topicContainerBackground &&
          actionContainerBackground == other.actionContainerBackground &&
          appBarBG == other.appBarBG &&
          appBarIconColor == other.appBarIconColor &&
          appBarSelectedIconColor == other.appBarSelectedIconColor &&
          appBarMenuBackgroundColor == other.appBarMenuBackgroundColor &&
          bottomNavigationBarBG == other.bottomNavigationBarBG &&
          drawerBG == other.drawerBG &&
          drawerHeaderBG == other.drawerHeaderBG &&
          profileDrawerBG == other.profileDrawerBG &&
          profileDrawerHeaderBG == other.profileDrawerHeaderBG &&
          backgroundColorHomeMenu == other.backgroundColorHomeMenu &&
          h1 == other.h1 &&
          h2 == other.h2 &&
          h3 == other.h3 &&
          h4 == other.h4 &&
          h5 == other.h5 &&
          textFieldHeader == other.textFieldHeader &&
          fontText == other.fontText &&
          fontSmallText == other.fontSmallText &&
          fontHighlight1 == other.fontHighlight1 &&
          fontHighlight2 == other.fontHighlight2 &&
          fontLink == other.fontLink &&
          routeBuilder == other.routeBuilder &&
          routeAnimationDuration == other.routeAnimationDuration &&
          dialogBackgroundColor == other.dialogBackgroundColor &&
          dialogSeperatorColor == other.dialogSeperatorColor &&
          popupMenuButtonColor == other.popupMenuButtonColor;

  @override
  String toString() {
    return 'MonaStyleAttributesModel{documentID: $documentID, appId: $appId, formBackground: $formBackground, appBackground: $appBackground, formGroupTitleColor: $formGroupTitleColor, formFieldTextColor: $formFieldTextColor, formFieldHeaderColor: $formFieldHeaderColor, formFieldFocusColor: $formFieldFocusColor, listBackground: $listBackground, listTextItemColor: $listTextItemColor, floatingButtonForegroundColor: $floatingButtonForegroundColor, floatingButtonBackgroundColor: $floatingButtonBackgroundColor, dividerColor: $dividerColor, topicContainerBackground: $topicContainerBackground, actionContainerBackground: $actionContainerBackground, appBarBG: $appBarBG, appBarIconColor: $appBarIconColor, appBarSelectedIconColor: $appBarSelectedIconColor, appBarMenuBackgroundColor: $appBarMenuBackgroundColor, bottomNavigationBarBG: $bottomNavigationBarBG, drawerBG: $drawerBG, drawerHeaderBG: $drawerHeaderBG, profileDrawerBG: $profileDrawerBG, profileDrawerHeaderBG: $profileDrawerHeaderBG, backgroundColorHomeMenu: $backgroundColorHomeMenu, h1: $h1, h2: $h2, h3: $h3, h4: $h4, h5: $h5, textFieldHeader: $textFieldHeader, fontText: $fontText, fontSmallText: $fontSmallText, fontHighlight1: $fontHighlight1, fontHighlight2: $fontHighlight2, fontLink: $fontLink, routeBuilder: $routeBuilder, routeAnimationDuration: $routeAnimationDuration, dialogBackgroundColo: $dialogBackgroundColor, dialogSeperatorColor: $dialogSeperatorColor, popupMenuButtonColor: $popupMenuButtonColor}';
  }

  Future<List<ModelReference>> collectReferences({String? appId}) async {
    List<ModelReference> referencesCollector = [];
    if (formBackground != null) referencesCollector.addAll(await formBackground!.collectReferences(appId: appId));
    if (appBackground != null) referencesCollector.addAll(await appBackground!.collectReferences(appId: appId));
    if (formGroupTitleColor != null) referencesCollector.addAll(await formGroupTitleColor!.collectReferences(appId: appId));
    if (formFieldTextColor != null) referencesCollector.addAll(await formFieldTextColor!.collectReferences(appId: appId));
    if (formFieldHeaderColor != null) referencesCollector.addAll(await formFieldHeaderColor!.collectReferences(appId: appId));
    if (formFieldFocusColor != null) referencesCollector.addAll(await formFieldFocusColor!.collectReferences(appId: appId));
    if (listBackground != null) referencesCollector.addAll(await listBackground!.collectReferences(appId: appId));
    if (listTextItemColor != null) referencesCollector.addAll(await listTextItemColor!.collectReferences(appId: appId));
    if (floatingButtonForegroundColor != null) referencesCollector.addAll(await floatingButtonForegroundColor!.collectReferences(appId: appId));
    if (floatingButtonBackgroundColor != null) referencesCollector.addAll(await floatingButtonBackgroundColor!.collectReferences(appId: appId));
    if (dividerColor != null) referencesCollector.addAll(await dividerColor!.collectReferences(appId: appId));
    if (topicContainerBackground != null) referencesCollector.addAll(await topicContainerBackground!.collectReferences(appId: appId));
    if (actionContainerBackground != null) referencesCollector.addAll(await actionContainerBackground!.collectReferences(appId: appId));
    if (appBarBG != null) referencesCollector.addAll(await appBarBG!.collectReferences(appId: appId));
    if (appBarIconColor != null) referencesCollector.addAll(await appBarIconColor!.collectReferences(appId: appId));
    if (appBarSelectedIconColor != null) referencesCollector.addAll(await appBarSelectedIconColor!.collectReferences(appId: appId));
    if (appBarMenuBackgroundColor != null) referencesCollector.addAll(await appBarMenuBackgroundColor!.collectReferences(appId: appId));
    if (bottomNavigationBarBG != null) referencesCollector.addAll(await bottomNavigationBarBG!.collectReferences(appId: appId));
    if (drawerBG != null) referencesCollector.addAll(await drawerBG!.collectReferences(appId: appId));
    if (drawerHeaderBG != null) referencesCollector.addAll(await drawerHeaderBG!.collectReferences(appId: appId));
    if (profileDrawerBG != null) referencesCollector.addAll(await profileDrawerBG!.collectReferences(appId: appId));
    if (profileDrawerHeaderBG != null) referencesCollector.addAll(await profileDrawerHeaderBG!.collectReferences(appId: appId));
    if (backgroundColorHomeMenu != null) referencesCollector.addAll(await backgroundColorHomeMenu!.collectReferences(appId: appId));
    if (h1 != null) referencesCollector.addAll(await h1!.collectReferences(appId: appId));
    if (h2 != null) referencesCollector.addAll(await h2!.collectReferences(appId: appId));
    if (h3 != null) referencesCollector.addAll(await h3!.collectReferences(appId: appId));
    if (h4 != null) referencesCollector.addAll(await h4!.collectReferences(appId: appId));
    if (h5 != null) referencesCollector.addAll(await h5!.collectReferences(appId: appId));
    if (textFieldHeader != null) referencesCollector.addAll(await textFieldHeader!.collectReferences(appId: appId));
    if (fontText != null) referencesCollector.addAll(await fontText!.collectReferences(appId: appId));
    if (fontSmallText != null) referencesCollector.addAll(await fontSmallText!.collectReferences(appId: appId));
    if (fontHighlight1 != null) referencesCollector.addAll(await fontHighlight1!.collectReferences(appId: appId));
    if (fontHighlight2 != null) referencesCollector.addAll(await fontHighlight2!.collectReferences(appId: appId));
    if (fontLink != null) referencesCollector.addAll(await fontLink!.collectReferences(appId: appId));
    if (dialogBackgroundColor != null) referencesCollector.addAll(await dialogBackgroundColor!.collectReferences(appId: appId));
    if (dialogSeperatorColor != null) referencesCollector.addAll(await dialogSeperatorColor!.collectReferences(appId: appId));
    if (popupMenuButtonColor != null) referencesCollector.addAll(await popupMenuButtonColor!.collectReferences(appId: appId));
    return referencesCollector;
  }

  MonaStyleAttributesEntity toEntity({String? appId}) {
    return MonaStyleAttributesEntity(
          appId: (appId != null) ? appId : null, 
          formBackground: (formBackground != null) ? formBackground!.toEntity(appId: appId) : null, 
          appBackground: (appBackground != null) ? appBackground!.toEntity(appId: appId) : null, 
          formGroupTitleColor: (formGroupTitleColor != null) ? formGroupTitleColor!.toEntity(appId: appId) : null, 
          formFieldTextColor: (formFieldTextColor != null) ? formFieldTextColor!.toEntity(appId: appId) : null, 
          formFieldHeaderColor: (formFieldHeaderColor != null) ? formFieldHeaderColor!.toEntity(appId: appId) : null, 
          formFieldFocusColor: (formFieldFocusColor != null) ? formFieldFocusColor!.toEntity(appId: appId) : null, 
          listBackground: (listBackground != null) ? listBackground!.toEntity(appId: appId) : null, 
          listTextItemColor: (listTextItemColor != null) ? listTextItemColor!.toEntity(appId: appId) : null, 
          floatingButtonForegroundColor: (floatingButtonForegroundColor != null) ? floatingButtonForegroundColor!.toEntity(appId: appId) : null, 
          floatingButtonBackgroundColor: (floatingButtonBackgroundColor != null) ? floatingButtonBackgroundColor!.toEntity(appId: appId) : null, 
          dividerColor: (dividerColor != null) ? dividerColor!.toEntity(appId: appId) : null, 
          topicContainerBackground: (topicContainerBackground != null) ? topicContainerBackground!.toEntity(appId: appId) : null, 
          actionContainerBackground: (actionContainerBackground != null) ? actionContainerBackground!.toEntity(appId: appId) : null, 
          appBarBG: (appBarBG != null) ? appBarBG!.toEntity(appId: appId) : null, 
          appBarIconColor: (appBarIconColor != null) ? appBarIconColor!.toEntity(appId: appId) : null, 
          appBarSelectedIconColor: (appBarSelectedIconColor != null) ? appBarSelectedIconColor!.toEntity(appId: appId) : null, 
          appBarMenuBackgroundColor: (appBarMenuBackgroundColor != null) ? appBarMenuBackgroundColor!.toEntity(appId: appId) : null, 
          bottomNavigationBarBG: (bottomNavigationBarBG != null) ? bottomNavigationBarBG!.toEntity(appId: appId) : null, 
          drawerBG: (drawerBG != null) ? drawerBG!.toEntity(appId: appId) : null, 
          drawerHeaderBG: (drawerHeaderBG != null) ? drawerHeaderBG!.toEntity(appId: appId) : null, 
          profileDrawerBG: (profileDrawerBG != null) ? profileDrawerBG!.toEntity(appId: appId) : null, 
          profileDrawerHeaderBG: (profileDrawerHeaderBG != null) ? profileDrawerHeaderBG!.toEntity(appId: appId) : null, 
          backgroundColorHomeMenu: (backgroundColorHomeMenu != null) ? backgroundColorHomeMenu!.toEntity(appId: appId) : null, 
          h1: (h1 != null) ? h1!.toEntity(appId: appId) : null, 
          h2: (h2 != null) ? h2!.toEntity(appId: appId) : null, 
          h3: (h3 != null) ? h3!.toEntity(appId: appId) : null, 
          h4: (h4 != null) ? h4!.toEntity(appId: appId) : null, 
          h5: (h5 != null) ? h5!.toEntity(appId: appId) : null, 
          textFieldHeader: (textFieldHeader != null) ? textFieldHeader!.toEntity(appId: appId) : null, 
          fontText: (fontText != null) ? fontText!.toEntity(appId: appId) : null, 
          fontSmallText: (fontSmallText != null) ? fontSmallText!.toEntity(appId: appId) : null, 
          fontHighlight1: (fontHighlight1 != null) ? fontHighlight1!.toEntity(appId: appId) : null, 
          fontHighlight2: (fontHighlight2 != null) ? fontHighlight2!.toEntity(appId: appId) : null, 
          fontLink: (fontLink != null) ? fontLink!.toEntity(appId: appId) : null, 
          routeBuilder: (routeBuilder != null) ? routeBuilder!.index : null, 
          routeAnimationDuration: (routeAnimationDuration != null) ? routeAnimationDuration : null,
          dialogBackgroundColor: (dialogBackgroundColor != null) ? dialogBackgroundColor!.toEntity(appId: appId) : null,
          dialogSeperatorColor: (dialogSeperatorColor != null) ? dialogSeperatorColor!.toEntity(appId: appId) : null,
          popupMenuButtonColor: (popupMenuButtonColor != null) ? popupMenuButtonColor!.toEntity(appId: appId) : null,
    );
  }

  static Future<MonaStyleAttributesModel?> fromEntity(String documentID, MonaStyleAttributesEntity? entity) async {
    if (entity == null) return null;
    var counter = 0;
    return MonaStyleAttributesModel(
          documentID: documentID, 
          appId: entity.appId ?? '', 
          formBackground: 
            await BackgroundModel.fromEntity(entity.formBackground), 
          appBackground: 
            await BackgroundModel.fromEntity(entity.appBackground), 
          formGroupTitleColor: 
            await RgbModel.fromEntity(entity.formGroupTitleColor), 
          formFieldTextColor: 
            await RgbModel.fromEntity(entity.formFieldTextColor), 
          formFieldHeaderColor: 
            await RgbModel.fromEntity(entity.formFieldHeaderColor), 
          formFieldFocusColor: 
            await RgbModel.fromEntity(entity.formFieldFocusColor), 
          listBackground: 
            await BackgroundModel.fromEntity(entity.listBackground), 
          listTextItemColor: 
            await RgbModel.fromEntity(entity.listTextItemColor), 
          floatingButtonForegroundColor: 
            await RgbModel.fromEntity(entity.floatingButtonForegroundColor), 
          floatingButtonBackgroundColor: 
            await RgbModel.fromEntity(entity.floatingButtonBackgroundColor), 
          dividerColor: 
            await RgbModel.fromEntity(entity.dividerColor), 
          topicContainerBackground: 
            await BackgroundModel.fromEntity(entity.topicContainerBackground), 
          actionContainerBackground: 
            await BackgroundModel.fromEntity(entity.actionContainerBackground), 
          appBarBG: 
            await BackgroundModel.fromEntity(entity.appBarBG), 
          appBarIconColor: 
            await RgbModel.fromEntity(entity.appBarIconColor), 
          appBarSelectedIconColor: 
            await RgbModel.fromEntity(entity.appBarSelectedIconColor), 
          appBarMenuBackgroundColor: 
            await RgbModel.fromEntity(entity.appBarMenuBackgroundColor), 
          bottomNavigationBarBG: 
            await BackgroundModel.fromEntity(entity.bottomNavigationBarBG), 
          drawerBG: 
            await BackgroundModel.fromEntity(entity.drawerBG), 
          drawerHeaderBG: 
            await BackgroundModel.fromEntity(entity.drawerHeaderBG), 
          profileDrawerBG: 
            await BackgroundModel.fromEntity(entity.profileDrawerBG), 
          profileDrawerHeaderBG: 
            await BackgroundModel.fromEntity(entity.profileDrawerHeaderBG), 
          backgroundColorHomeMenu: 
            await RgbModel.fromEntity(entity.backgroundColorHomeMenu), 
          h1: 
            await FontModel.fromEntity(entity.h1), 
          h2: 
            await FontModel.fromEntity(entity.h2), 
          h3: 
            await FontModel.fromEntity(entity.h3), 
          h4: 
            await FontModel.fromEntity(entity.h4), 
          h5: 
            await FontModel.fromEntity(entity.h5), 
          textFieldHeader: 
            await FontModel.fromEntity(entity.textFieldHeader), 
          fontText: 
            await FontModel.fromEntity(entity.fontText), 
          fontSmallText: 
            await FontModel.fromEntity(entity.fontSmallText), 
          fontHighlight1: 
            await FontModel.fromEntity(entity.fontHighlight1), 
          fontHighlight2: 
            await FontModel.fromEntity(entity.fontHighlight2), 
          fontLink: 
            await FontModel.fromEntity(entity.fontLink), 
          routeBuilder: toPageTransitionAnimation(entity.routeBuilder), 
          routeAnimationDuration: entity.routeAnimationDuration,
          dialogBackgroundColor: await RgbModel.fromEntity(entity.dialogBackgroundColor),
          dialogSeperatorColor: await RgbModel.fromEntity(entity.dialogSeperatorColor),
          popupMenuButtonColor: await RgbModel.fromEntity(entity.popupMenuButtonColor),
    );
  }

  static Future<MonaStyleAttributesModel?> fromEntityPlus(String documentID, MonaStyleAttributesEntity? entity, { String? appId}) async {
    if (entity == null) return null;

    var counter = 0;
    return MonaStyleAttributesModel(
          documentID: documentID, 
          appId: entity.appId ?? '', 
          formBackground: 
            await BackgroundModel.fromEntityPlus(entity.formBackground, appId: appId), 
          appBackground: 
            await BackgroundModel.fromEntityPlus(entity.appBackground, appId: appId), 
          formGroupTitleColor: 
            await RgbModel.fromEntityPlus(entity.formGroupTitleColor, appId: appId), 
          formFieldTextColor: 
            await RgbModel.fromEntityPlus(entity.formFieldTextColor, appId: appId), 
          formFieldHeaderColor: 
            await RgbModel.fromEntityPlus(entity.formFieldHeaderColor, appId: appId), 
          formFieldFocusColor: 
            await RgbModel.fromEntityPlus(entity.formFieldFocusColor, appId: appId), 
          listBackground: 
            await BackgroundModel.fromEntityPlus(entity.listBackground, appId: appId), 
          listTextItemColor: 
            await RgbModel.fromEntityPlus(entity.listTextItemColor, appId: appId), 
          floatingButtonForegroundColor: 
            await RgbModel.fromEntityPlus(entity.floatingButtonForegroundColor, appId: appId), 
          floatingButtonBackgroundColor: 
            await RgbModel.fromEntityPlus(entity.floatingButtonBackgroundColor, appId: appId), 
          dividerColor: 
            await RgbModel.fromEntityPlus(entity.dividerColor, appId: appId), 
          topicContainerBackground: 
            await BackgroundModel.fromEntityPlus(entity.topicContainerBackground, appId: appId), 
          actionContainerBackground: 
            await BackgroundModel.fromEntityPlus(entity.actionContainerBackground, appId: appId), 
          appBarBG: 
            await BackgroundModel.fromEntityPlus(entity.appBarBG, appId: appId), 
          appBarIconColor: 
            await RgbModel.fromEntityPlus(entity.appBarIconColor, appId: appId), 
          appBarSelectedIconColor: 
            await RgbModel.fromEntityPlus(entity.appBarSelectedIconColor, appId: appId), 
          appBarMenuBackgroundColor: 
            await RgbModel.fromEntityPlus(entity.appBarMenuBackgroundColor, appId: appId), 
          bottomNavigationBarBG: 
            await BackgroundModel.fromEntityPlus(entity.bottomNavigationBarBG, appId: appId), 
          drawerBG: 
            await BackgroundModel.fromEntityPlus(entity.drawerBG, appId: appId), 
          drawerHeaderBG: 
            await BackgroundModel.fromEntityPlus(entity.drawerHeaderBG, appId: appId), 
          profileDrawerBG: 
            await BackgroundModel.fromEntityPlus(entity.profileDrawerBG, appId: appId), 
          profileDrawerHeaderBG: 
            await BackgroundModel.fromEntityPlus(entity.profileDrawerHeaderBG, appId: appId), 
          backgroundColorHomeMenu: 
            await RgbModel.fromEntityPlus(entity.backgroundColorHomeMenu, appId: appId), 
          h1: 
            await FontModel.fromEntityPlus(entity.h1, appId: appId), 
          h2: 
            await FontModel.fromEntityPlus(entity.h2, appId: appId), 
          h3: 
            await FontModel.fromEntityPlus(entity.h3, appId: appId), 
          h4: 
            await FontModel.fromEntityPlus(entity.h4, appId: appId), 
          h5: 
            await FontModel.fromEntityPlus(entity.h5, appId: appId), 
          textFieldHeader: 
            await FontModel.fromEntityPlus(entity.textFieldHeader, appId: appId), 
          fontText: 
            await FontModel.fromEntityPlus(entity.fontText, appId: appId), 
          fontSmallText: 
            await FontModel.fromEntityPlus(entity.fontSmallText, appId: appId), 
          fontHighlight1: 
            await FontModel.fromEntityPlus(entity.fontHighlight1, appId: appId), 
          fontHighlight2: 
            await FontModel.fromEntityPlus(entity.fontHighlight2, appId: appId), 
          fontLink: 
            await FontModel.fromEntityPlus(entity.fontLink, appId: appId), 
          routeBuilder: toPageTransitionAnimation(entity.routeBuilder), 
          routeAnimationDuration: entity.routeAnimationDuration,
          dialogBackgroundColor: await RgbModel.fromEntity(entity.dialogBackgroundColor),
          dialogSeperatorColor: await RgbModel.fromEntity(entity.dialogSeperatorColor),
          popupMenuButtonColor: await RgbModel.fromEntity(entity.popupMenuButtonColor),
    );
  }

}


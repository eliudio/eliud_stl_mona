/*
       _ _           _ 
      | (_)         | |
   ___| |_ _   _  __| |
  / _ \ | | | | |/ _` |
 |  __/ | | |_| | (_| |
  \___|_|_|\__,_|\__,_|
                       
 
 mona_style_attributes_form_bloc.dart
                       
 This code is generated. This is read only. Don't touch!

*/

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:eliud_core/tools/firestore/firestore_tools.dart';
import 'package:flutter/cupertino.dart';

import 'package:eliud_core/tools/enums.dart';
import 'package:eliud_core/tools/common_tools.dart';

import 'package:eliud_core/model/rgb_model.dart';

import 'package:eliud_core/tools/string_validator.dart';

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

import 'package:eliud_stl_mona/model/mona_style_attributes_form_event.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_form_state.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_repository.dart';

class MonaStyleAttributesFormBloc extends Bloc<MonaStyleAttributesFormEvent, MonaStyleAttributesFormState> {
  final FormAction? formAction;
  final String? appId;

  MonaStyleAttributesFormBloc(this.appId, { this.formAction }): super(MonaStyleAttributesFormUninitialized());
  @override
  Stream<MonaStyleAttributesFormState> mapEventToState(MonaStyleAttributesFormEvent event) async* {
    final currentState = state;
    if (currentState is MonaStyleAttributesFormUninitialized) {
      if (event is InitialiseNewMonaStyleAttributesFormEvent) {
        MonaStyleAttributesFormLoaded loaded = MonaStyleAttributesFormLoaded(value: MonaStyleAttributesModel(
                                               documentID: "",
                                 appId: "",
                                 formSubmitButtonColor: RgbModel(r: 255, g: 0, b: 255, opacity: 1.00), 
                                 formSubmitButtonTextColor: RgbModel(r: 255, g: 255, b: 255, opacity: 1.00), 
                                 formGroupTitleColor: RgbModel(r: 255, g: 0, b: 0, opacity: 1.00), 
                                 formFieldTextColor: RgbModel(r: 255, g: 255, b: 255, opacity: 1.00), 
                                 formFieldHeaderColor: RgbModel(r: 255, g: 0, b: 0, opacity: 1.00), 
                                 formFieldFocusColor: RgbModel(r: 255, g: 0, b: 0, opacity: 1.00), 
                                 listTextItemColor: RgbModel(r: 255, g: 255, b: 255, opacity: 1.00), 
                                 floatingButtonForegroundColor: RgbModel(r: 255, g: 255, b: 255, opacity: 1.00), 
                                 floatingButtonBackgroundColor: RgbModel(r: 255, g: 0, b: 255, opacity: 1.00), 
                                 dividerColor: RgbModel(r: 255, g: 0, b: 0, opacity: 1.00), 
                                 appBarIconColor: RgbModel(r: 255, g: 255, b: 255, opacity: 1.00), 
                                 appBarSelectedIconColor: RgbModel(r: 255, g: 255, b: 255, opacity: 1.00), 
                                 appBarMenuBackgroundColor: RgbModel(r: 64, g: 6, b: 64, opacity: 1.00), 
                                 backgroundColorHomeMenu: RgbModel(r: 255, g: 255, b: 255, opacity: 1.00), 
                                 iconColorHomeMenu: RgbModel(r: 255, g: 255, b: 255, opacity: 1.00), 
                                 routeAnimationDuration: 1000, 

        ));
        yield loaded;
        return;

      }


      if (event is InitialiseMonaStyleAttributesFormEvent) {
        // Need to re-retrieve the document from the repository so that I get all associated types
        MonaStyleAttributesFormLoaded loaded = MonaStyleAttributesFormLoaded(value: await monaStyleAttributesRepository(appId: appId)!.get(event.value!.documentID));
        yield loaded;
        return;
      } else if (event is InitialiseMonaStyleAttributesFormNoLoadEvent) {
        MonaStyleAttributesFormLoaded loaded = MonaStyleAttributesFormLoaded(value: event.value);
        yield loaded;
        return;
      }
    } else if (currentState is MonaStyleAttributesFormInitialized) {
      MonaStyleAttributesModel? newValue = null;
      if (event is ChangedMonaStyleAttributesDocumentID) {
        newValue = currentState.value!.copyWith(documentID: event.value);
        if (formAction == FormAction.AddAction) {
          yield* _isDocumentIDValid(event.value, newValue).asStream();
        } else {
          yield SubmittableMonaStyleAttributesForm(value: newValue);
        }

        return;
      }
      if (event is ChangedMonaStyleAttributesFormSubmitButtonColor) {
        newValue = currentState.value!.copyWith(formSubmitButtonColor: event.value);
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesFormBackground) {
        if (event.value != null)
          newValue = currentState.value!.copyWith(formBackground: await backgroundRepository(appId: appId)!.get(event.value));
        else
          newValue = new MonaStyleAttributesModel(
                                 documentID: currentState.value!.documentID,
                                 appId: currentState.value!.appId,
                                 formSubmitButtonColor: currentState.value!.formSubmitButtonColor,
                                 formBackground: null,
                                 appBackground: currentState.value!.appBackground,
                                 formSubmitButtonTextColor: currentState.value!.formSubmitButtonTextColor,
                                 formGroupTitleColor: currentState.value!.formGroupTitleColor,
                                 formFieldTextColor: currentState.value!.formFieldTextColor,
                                 formFieldHeaderColor: currentState.value!.formFieldHeaderColor,
                                 formFieldFocusColor: currentState.value!.formFieldFocusColor,
                                 listBackground: currentState.value!.listBackground,
                                 listTextItemColor: currentState.value!.listTextItemColor,
                                 floatingButtonForegroundColor: currentState.value!.floatingButtonForegroundColor,
                                 floatingButtonBackgroundColor: currentState.value!.floatingButtonBackgroundColor,
                                 dividerColor: currentState.value!.dividerColor,
                                 appBarBG: currentState.value!.appBarBG,
                                 appBarIconColor: currentState.value!.appBarIconColor,
                                 appBarSelectedIconColor: currentState.value!.appBarSelectedIconColor,
                                 appBarMenuBackgroundColor: currentState.value!.appBarMenuBackgroundColor,
                                 bottomNavigationBarBG: currentState.value!.bottomNavigationBarBG,
                                 drawerBG: currentState.value!.drawerBG,
                                 drawerHeaderBG: currentState.value!.drawerHeaderBG,
                                 profileDrawerBG: currentState.value!.profileDrawerBG,
                                 profileDrawerHeaderBG: currentState.value!.profileDrawerHeaderBG,
                                 backgroundHomeMenu: currentState.value!.backgroundHomeMenu,
                                 backgroundColorHomeMenu: currentState.value!.backgroundColorHomeMenu,
                                 iconColorHomeMenu: currentState.value!.iconColorHomeMenu,
                                 h1: currentState.value!.h1,
                                 h2: currentState.value!.h2,
                                 h3: currentState.value!.h3,
                                 h4: currentState.value!.h4,
                                 h5: currentState.value!.h5,
                                 textFieldHeader: currentState.value!.textFieldHeader,
                                 fontText: currentState.value!.fontText,
                                 fontSmallText: currentState.value!.fontSmallText,
                                 fontHighlight1: currentState.value!.fontHighlight1,
                                 fontHighlight2: currentState.value!.fontHighlight2,
                                 fontLink: currentState.value!.fontLink,
                                 routeBuilder: currentState.value!.routeBuilder,
                                 routeAnimationDuration: currentState.value!.routeAnimationDuration,
          );
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesAppBackground) {
        if (event.value != null)
          newValue = currentState.value!.copyWith(appBackground: await backgroundRepository(appId: appId)!.get(event.value));
        else
          newValue = new MonaStyleAttributesModel(
                                 documentID: currentState.value!.documentID,
                                 appId: currentState.value!.appId,
                                 formSubmitButtonColor: currentState.value!.formSubmitButtonColor,
                                 formBackground: currentState.value!.formBackground,
                                 appBackground: null,
                                 formSubmitButtonTextColor: currentState.value!.formSubmitButtonTextColor,
                                 formGroupTitleColor: currentState.value!.formGroupTitleColor,
                                 formFieldTextColor: currentState.value!.formFieldTextColor,
                                 formFieldHeaderColor: currentState.value!.formFieldHeaderColor,
                                 formFieldFocusColor: currentState.value!.formFieldFocusColor,
                                 listBackground: currentState.value!.listBackground,
                                 listTextItemColor: currentState.value!.listTextItemColor,
                                 floatingButtonForegroundColor: currentState.value!.floatingButtonForegroundColor,
                                 floatingButtonBackgroundColor: currentState.value!.floatingButtonBackgroundColor,
                                 dividerColor: currentState.value!.dividerColor,
                                 appBarBG: currentState.value!.appBarBG,
                                 appBarIconColor: currentState.value!.appBarIconColor,
                                 appBarSelectedIconColor: currentState.value!.appBarSelectedIconColor,
                                 appBarMenuBackgroundColor: currentState.value!.appBarMenuBackgroundColor,
                                 bottomNavigationBarBG: currentState.value!.bottomNavigationBarBG,
                                 drawerBG: currentState.value!.drawerBG,
                                 drawerHeaderBG: currentState.value!.drawerHeaderBG,
                                 profileDrawerBG: currentState.value!.profileDrawerBG,
                                 profileDrawerHeaderBG: currentState.value!.profileDrawerHeaderBG,
                                 backgroundHomeMenu: currentState.value!.backgroundHomeMenu,
                                 backgroundColorHomeMenu: currentState.value!.backgroundColorHomeMenu,
                                 iconColorHomeMenu: currentState.value!.iconColorHomeMenu,
                                 h1: currentState.value!.h1,
                                 h2: currentState.value!.h2,
                                 h3: currentState.value!.h3,
                                 h4: currentState.value!.h4,
                                 h5: currentState.value!.h5,
                                 textFieldHeader: currentState.value!.textFieldHeader,
                                 fontText: currentState.value!.fontText,
                                 fontSmallText: currentState.value!.fontSmallText,
                                 fontHighlight1: currentState.value!.fontHighlight1,
                                 fontHighlight2: currentState.value!.fontHighlight2,
                                 fontLink: currentState.value!.fontLink,
                                 routeBuilder: currentState.value!.routeBuilder,
                                 routeAnimationDuration: currentState.value!.routeAnimationDuration,
          );
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesFormSubmitButtonTextColor) {
        newValue = currentState.value!.copyWith(formSubmitButtonTextColor: event.value);
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesFormGroupTitleColor) {
        newValue = currentState.value!.copyWith(formGroupTitleColor: event.value);
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesFormFieldTextColor) {
        newValue = currentState.value!.copyWith(formFieldTextColor: event.value);
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesFormFieldHeaderColor) {
        newValue = currentState.value!.copyWith(formFieldHeaderColor: event.value);
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesFormFieldFocusColor) {
        newValue = currentState.value!.copyWith(formFieldFocusColor: event.value);
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesListBackground) {
        if (event.value != null)
          newValue = currentState.value!.copyWith(listBackground: await backgroundRepository(appId: appId)!.get(event.value));
        else
          newValue = new MonaStyleAttributesModel(
                                 documentID: currentState.value!.documentID,
                                 appId: currentState.value!.appId,
                                 formSubmitButtonColor: currentState.value!.formSubmitButtonColor,
                                 formBackground: currentState.value!.formBackground,
                                 appBackground: currentState.value!.appBackground,
                                 formSubmitButtonTextColor: currentState.value!.formSubmitButtonTextColor,
                                 formGroupTitleColor: currentState.value!.formGroupTitleColor,
                                 formFieldTextColor: currentState.value!.formFieldTextColor,
                                 formFieldHeaderColor: currentState.value!.formFieldHeaderColor,
                                 formFieldFocusColor: currentState.value!.formFieldFocusColor,
                                 listBackground: null,
                                 listTextItemColor: currentState.value!.listTextItemColor,
                                 floatingButtonForegroundColor: currentState.value!.floatingButtonForegroundColor,
                                 floatingButtonBackgroundColor: currentState.value!.floatingButtonBackgroundColor,
                                 dividerColor: currentState.value!.dividerColor,
                                 appBarBG: currentState.value!.appBarBG,
                                 appBarIconColor: currentState.value!.appBarIconColor,
                                 appBarSelectedIconColor: currentState.value!.appBarSelectedIconColor,
                                 appBarMenuBackgroundColor: currentState.value!.appBarMenuBackgroundColor,
                                 bottomNavigationBarBG: currentState.value!.bottomNavigationBarBG,
                                 drawerBG: currentState.value!.drawerBG,
                                 drawerHeaderBG: currentState.value!.drawerHeaderBG,
                                 profileDrawerBG: currentState.value!.profileDrawerBG,
                                 profileDrawerHeaderBG: currentState.value!.profileDrawerHeaderBG,
                                 backgroundHomeMenu: currentState.value!.backgroundHomeMenu,
                                 backgroundColorHomeMenu: currentState.value!.backgroundColorHomeMenu,
                                 iconColorHomeMenu: currentState.value!.iconColorHomeMenu,
                                 h1: currentState.value!.h1,
                                 h2: currentState.value!.h2,
                                 h3: currentState.value!.h3,
                                 h4: currentState.value!.h4,
                                 h5: currentState.value!.h5,
                                 textFieldHeader: currentState.value!.textFieldHeader,
                                 fontText: currentState.value!.fontText,
                                 fontSmallText: currentState.value!.fontSmallText,
                                 fontHighlight1: currentState.value!.fontHighlight1,
                                 fontHighlight2: currentState.value!.fontHighlight2,
                                 fontLink: currentState.value!.fontLink,
                                 routeBuilder: currentState.value!.routeBuilder,
                                 routeAnimationDuration: currentState.value!.routeAnimationDuration,
          );
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesListTextItemColor) {
        newValue = currentState.value!.copyWith(listTextItemColor: event.value);
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesFloatingButtonForegroundColor) {
        newValue = currentState.value!.copyWith(floatingButtonForegroundColor: event.value);
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesFloatingButtonBackgroundColor) {
        newValue = currentState.value!.copyWith(floatingButtonBackgroundColor: event.value);
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesDividerColor) {
        newValue = currentState.value!.copyWith(dividerColor: event.value);
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesAppBarBG) {
        if (event.value != null)
          newValue = currentState.value!.copyWith(appBarBG: await backgroundRepository(appId: appId)!.get(event.value));
        else
          newValue = new MonaStyleAttributesModel(
                                 documentID: currentState.value!.documentID,
                                 appId: currentState.value!.appId,
                                 formSubmitButtonColor: currentState.value!.formSubmitButtonColor,
                                 formBackground: currentState.value!.formBackground,
                                 appBackground: currentState.value!.appBackground,
                                 formSubmitButtonTextColor: currentState.value!.formSubmitButtonTextColor,
                                 formGroupTitleColor: currentState.value!.formGroupTitleColor,
                                 formFieldTextColor: currentState.value!.formFieldTextColor,
                                 formFieldHeaderColor: currentState.value!.formFieldHeaderColor,
                                 formFieldFocusColor: currentState.value!.formFieldFocusColor,
                                 listBackground: currentState.value!.listBackground,
                                 listTextItemColor: currentState.value!.listTextItemColor,
                                 floatingButtonForegroundColor: currentState.value!.floatingButtonForegroundColor,
                                 floatingButtonBackgroundColor: currentState.value!.floatingButtonBackgroundColor,
                                 dividerColor: currentState.value!.dividerColor,
                                 appBarBG: null,
                                 appBarIconColor: currentState.value!.appBarIconColor,
                                 appBarSelectedIconColor: currentState.value!.appBarSelectedIconColor,
                                 appBarMenuBackgroundColor: currentState.value!.appBarMenuBackgroundColor,
                                 bottomNavigationBarBG: currentState.value!.bottomNavigationBarBG,
                                 drawerBG: currentState.value!.drawerBG,
                                 drawerHeaderBG: currentState.value!.drawerHeaderBG,
                                 profileDrawerBG: currentState.value!.profileDrawerBG,
                                 profileDrawerHeaderBG: currentState.value!.profileDrawerHeaderBG,
                                 backgroundHomeMenu: currentState.value!.backgroundHomeMenu,
                                 backgroundColorHomeMenu: currentState.value!.backgroundColorHomeMenu,
                                 iconColorHomeMenu: currentState.value!.iconColorHomeMenu,
                                 h1: currentState.value!.h1,
                                 h2: currentState.value!.h2,
                                 h3: currentState.value!.h3,
                                 h4: currentState.value!.h4,
                                 h5: currentState.value!.h5,
                                 textFieldHeader: currentState.value!.textFieldHeader,
                                 fontText: currentState.value!.fontText,
                                 fontSmallText: currentState.value!.fontSmallText,
                                 fontHighlight1: currentState.value!.fontHighlight1,
                                 fontHighlight2: currentState.value!.fontHighlight2,
                                 fontLink: currentState.value!.fontLink,
                                 routeBuilder: currentState.value!.routeBuilder,
                                 routeAnimationDuration: currentState.value!.routeAnimationDuration,
          );
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesAppBarIconColor) {
        newValue = currentState.value!.copyWith(appBarIconColor: event.value);
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesAppBarSelectedIconColor) {
        newValue = currentState.value!.copyWith(appBarSelectedIconColor: event.value);
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesAppBarMenuBackgroundColor) {
        newValue = currentState.value!.copyWith(appBarMenuBackgroundColor: event.value);
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesBottomNavigationBarBG) {
        if (event.value != null)
          newValue = currentState.value!.copyWith(bottomNavigationBarBG: await backgroundRepository(appId: appId)!.get(event.value));
        else
          newValue = new MonaStyleAttributesModel(
                                 documentID: currentState.value!.documentID,
                                 appId: currentState.value!.appId,
                                 formSubmitButtonColor: currentState.value!.formSubmitButtonColor,
                                 formBackground: currentState.value!.formBackground,
                                 appBackground: currentState.value!.appBackground,
                                 formSubmitButtonTextColor: currentState.value!.formSubmitButtonTextColor,
                                 formGroupTitleColor: currentState.value!.formGroupTitleColor,
                                 formFieldTextColor: currentState.value!.formFieldTextColor,
                                 formFieldHeaderColor: currentState.value!.formFieldHeaderColor,
                                 formFieldFocusColor: currentState.value!.formFieldFocusColor,
                                 listBackground: currentState.value!.listBackground,
                                 listTextItemColor: currentState.value!.listTextItemColor,
                                 floatingButtonForegroundColor: currentState.value!.floatingButtonForegroundColor,
                                 floatingButtonBackgroundColor: currentState.value!.floatingButtonBackgroundColor,
                                 dividerColor: currentState.value!.dividerColor,
                                 appBarBG: currentState.value!.appBarBG,
                                 appBarIconColor: currentState.value!.appBarIconColor,
                                 appBarSelectedIconColor: currentState.value!.appBarSelectedIconColor,
                                 appBarMenuBackgroundColor: currentState.value!.appBarMenuBackgroundColor,
                                 bottomNavigationBarBG: null,
                                 drawerBG: currentState.value!.drawerBG,
                                 drawerHeaderBG: currentState.value!.drawerHeaderBG,
                                 profileDrawerBG: currentState.value!.profileDrawerBG,
                                 profileDrawerHeaderBG: currentState.value!.profileDrawerHeaderBG,
                                 backgroundHomeMenu: currentState.value!.backgroundHomeMenu,
                                 backgroundColorHomeMenu: currentState.value!.backgroundColorHomeMenu,
                                 iconColorHomeMenu: currentState.value!.iconColorHomeMenu,
                                 h1: currentState.value!.h1,
                                 h2: currentState.value!.h2,
                                 h3: currentState.value!.h3,
                                 h4: currentState.value!.h4,
                                 h5: currentState.value!.h5,
                                 textFieldHeader: currentState.value!.textFieldHeader,
                                 fontText: currentState.value!.fontText,
                                 fontSmallText: currentState.value!.fontSmallText,
                                 fontHighlight1: currentState.value!.fontHighlight1,
                                 fontHighlight2: currentState.value!.fontHighlight2,
                                 fontLink: currentState.value!.fontLink,
                                 routeBuilder: currentState.value!.routeBuilder,
                                 routeAnimationDuration: currentState.value!.routeAnimationDuration,
          );
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesDrawerBG) {
        if (event.value != null)
          newValue = currentState.value!.copyWith(drawerBG: await backgroundRepository(appId: appId)!.get(event.value));
        else
          newValue = new MonaStyleAttributesModel(
                                 documentID: currentState.value!.documentID,
                                 appId: currentState.value!.appId,
                                 formSubmitButtonColor: currentState.value!.formSubmitButtonColor,
                                 formBackground: currentState.value!.formBackground,
                                 appBackground: currentState.value!.appBackground,
                                 formSubmitButtonTextColor: currentState.value!.formSubmitButtonTextColor,
                                 formGroupTitleColor: currentState.value!.formGroupTitleColor,
                                 formFieldTextColor: currentState.value!.formFieldTextColor,
                                 formFieldHeaderColor: currentState.value!.formFieldHeaderColor,
                                 formFieldFocusColor: currentState.value!.formFieldFocusColor,
                                 listBackground: currentState.value!.listBackground,
                                 listTextItemColor: currentState.value!.listTextItemColor,
                                 floatingButtonForegroundColor: currentState.value!.floatingButtonForegroundColor,
                                 floatingButtonBackgroundColor: currentState.value!.floatingButtonBackgroundColor,
                                 dividerColor: currentState.value!.dividerColor,
                                 appBarBG: currentState.value!.appBarBG,
                                 appBarIconColor: currentState.value!.appBarIconColor,
                                 appBarSelectedIconColor: currentState.value!.appBarSelectedIconColor,
                                 appBarMenuBackgroundColor: currentState.value!.appBarMenuBackgroundColor,
                                 bottomNavigationBarBG: currentState.value!.bottomNavigationBarBG,
                                 drawerBG: null,
                                 drawerHeaderBG: currentState.value!.drawerHeaderBG,
                                 profileDrawerBG: currentState.value!.profileDrawerBG,
                                 profileDrawerHeaderBG: currentState.value!.profileDrawerHeaderBG,
                                 backgroundHomeMenu: currentState.value!.backgroundHomeMenu,
                                 backgroundColorHomeMenu: currentState.value!.backgroundColorHomeMenu,
                                 iconColorHomeMenu: currentState.value!.iconColorHomeMenu,
                                 h1: currentState.value!.h1,
                                 h2: currentState.value!.h2,
                                 h3: currentState.value!.h3,
                                 h4: currentState.value!.h4,
                                 h5: currentState.value!.h5,
                                 textFieldHeader: currentState.value!.textFieldHeader,
                                 fontText: currentState.value!.fontText,
                                 fontSmallText: currentState.value!.fontSmallText,
                                 fontHighlight1: currentState.value!.fontHighlight1,
                                 fontHighlight2: currentState.value!.fontHighlight2,
                                 fontLink: currentState.value!.fontLink,
                                 routeBuilder: currentState.value!.routeBuilder,
                                 routeAnimationDuration: currentState.value!.routeAnimationDuration,
          );
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesDrawerHeaderBG) {
        if (event.value != null)
          newValue = currentState.value!.copyWith(drawerHeaderBG: await backgroundRepository(appId: appId)!.get(event.value));
        else
          newValue = new MonaStyleAttributesModel(
                                 documentID: currentState.value!.documentID,
                                 appId: currentState.value!.appId,
                                 formSubmitButtonColor: currentState.value!.formSubmitButtonColor,
                                 formBackground: currentState.value!.formBackground,
                                 appBackground: currentState.value!.appBackground,
                                 formSubmitButtonTextColor: currentState.value!.formSubmitButtonTextColor,
                                 formGroupTitleColor: currentState.value!.formGroupTitleColor,
                                 formFieldTextColor: currentState.value!.formFieldTextColor,
                                 formFieldHeaderColor: currentState.value!.formFieldHeaderColor,
                                 formFieldFocusColor: currentState.value!.formFieldFocusColor,
                                 listBackground: currentState.value!.listBackground,
                                 listTextItemColor: currentState.value!.listTextItemColor,
                                 floatingButtonForegroundColor: currentState.value!.floatingButtonForegroundColor,
                                 floatingButtonBackgroundColor: currentState.value!.floatingButtonBackgroundColor,
                                 dividerColor: currentState.value!.dividerColor,
                                 appBarBG: currentState.value!.appBarBG,
                                 appBarIconColor: currentState.value!.appBarIconColor,
                                 appBarSelectedIconColor: currentState.value!.appBarSelectedIconColor,
                                 appBarMenuBackgroundColor: currentState.value!.appBarMenuBackgroundColor,
                                 bottomNavigationBarBG: currentState.value!.bottomNavigationBarBG,
                                 drawerBG: currentState.value!.drawerBG,
                                 drawerHeaderBG: null,
                                 profileDrawerBG: currentState.value!.profileDrawerBG,
                                 profileDrawerHeaderBG: currentState.value!.profileDrawerHeaderBG,
                                 backgroundHomeMenu: currentState.value!.backgroundHomeMenu,
                                 backgroundColorHomeMenu: currentState.value!.backgroundColorHomeMenu,
                                 iconColorHomeMenu: currentState.value!.iconColorHomeMenu,
                                 h1: currentState.value!.h1,
                                 h2: currentState.value!.h2,
                                 h3: currentState.value!.h3,
                                 h4: currentState.value!.h4,
                                 h5: currentState.value!.h5,
                                 textFieldHeader: currentState.value!.textFieldHeader,
                                 fontText: currentState.value!.fontText,
                                 fontSmallText: currentState.value!.fontSmallText,
                                 fontHighlight1: currentState.value!.fontHighlight1,
                                 fontHighlight2: currentState.value!.fontHighlight2,
                                 fontLink: currentState.value!.fontLink,
                                 routeBuilder: currentState.value!.routeBuilder,
                                 routeAnimationDuration: currentState.value!.routeAnimationDuration,
          );
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesProfileDrawerBG) {
        if (event.value != null)
          newValue = currentState.value!.copyWith(profileDrawerBG: await backgroundRepository(appId: appId)!.get(event.value));
        else
          newValue = new MonaStyleAttributesModel(
                                 documentID: currentState.value!.documentID,
                                 appId: currentState.value!.appId,
                                 formSubmitButtonColor: currentState.value!.formSubmitButtonColor,
                                 formBackground: currentState.value!.formBackground,
                                 appBackground: currentState.value!.appBackground,
                                 formSubmitButtonTextColor: currentState.value!.formSubmitButtonTextColor,
                                 formGroupTitleColor: currentState.value!.formGroupTitleColor,
                                 formFieldTextColor: currentState.value!.formFieldTextColor,
                                 formFieldHeaderColor: currentState.value!.formFieldHeaderColor,
                                 formFieldFocusColor: currentState.value!.formFieldFocusColor,
                                 listBackground: currentState.value!.listBackground,
                                 listTextItemColor: currentState.value!.listTextItemColor,
                                 floatingButtonForegroundColor: currentState.value!.floatingButtonForegroundColor,
                                 floatingButtonBackgroundColor: currentState.value!.floatingButtonBackgroundColor,
                                 dividerColor: currentState.value!.dividerColor,
                                 appBarBG: currentState.value!.appBarBG,
                                 appBarIconColor: currentState.value!.appBarIconColor,
                                 appBarSelectedIconColor: currentState.value!.appBarSelectedIconColor,
                                 appBarMenuBackgroundColor: currentState.value!.appBarMenuBackgroundColor,
                                 bottomNavigationBarBG: currentState.value!.bottomNavigationBarBG,
                                 drawerBG: currentState.value!.drawerBG,
                                 drawerHeaderBG: currentState.value!.drawerHeaderBG,
                                 profileDrawerBG: null,
                                 profileDrawerHeaderBG: currentState.value!.profileDrawerHeaderBG,
                                 backgroundHomeMenu: currentState.value!.backgroundHomeMenu,
                                 backgroundColorHomeMenu: currentState.value!.backgroundColorHomeMenu,
                                 iconColorHomeMenu: currentState.value!.iconColorHomeMenu,
                                 h1: currentState.value!.h1,
                                 h2: currentState.value!.h2,
                                 h3: currentState.value!.h3,
                                 h4: currentState.value!.h4,
                                 h5: currentState.value!.h5,
                                 textFieldHeader: currentState.value!.textFieldHeader,
                                 fontText: currentState.value!.fontText,
                                 fontSmallText: currentState.value!.fontSmallText,
                                 fontHighlight1: currentState.value!.fontHighlight1,
                                 fontHighlight2: currentState.value!.fontHighlight2,
                                 fontLink: currentState.value!.fontLink,
                                 routeBuilder: currentState.value!.routeBuilder,
                                 routeAnimationDuration: currentState.value!.routeAnimationDuration,
          );
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesProfileDrawerHeaderBG) {
        if (event.value != null)
          newValue = currentState.value!.copyWith(profileDrawerHeaderBG: await backgroundRepository(appId: appId)!.get(event.value));
        else
          newValue = new MonaStyleAttributesModel(
                                 documentID: currentState.value!.documentID,
                                 appId: currentState.value!.appId,
                                 formSubmitButtonColor: currentState.value!.formSubmitButtonColor,
                                 formBackground: currentState.value!.formBackground,
                                 appBackground: currentState.value!.appBackground,
                                 formSubmitButtonTextColor: currentState.value!.formSubmitButtonTextColor,
                                 formGroupTitleColor: currentState.value!.formGroupTitleColor,
                                 formFieldTextColor: currentState.value!.formFieldTextColor,
                                 formFieldHeaderColor: currentState.value!.formFieldHeaderColor,
                                 formFieldFocusColor: currentState.value!.formFieldFocusColor,
                                 listBackground: currentState.value!.listBackground,
                                 listTextItemColor: currentState.value!.listTextItemColor,
                                 floatingButtonForegroundColor: currentState.value!.floatingButtonForegroundColor,
                                 floatingButtonBackgroundColor: currentState.value!.floatingButtonBackgroundColor,
                                 dividerColor: currentState.value!.dividerColor,
                                 appBarBG: currentState.value!.appBarBG,
                                 appBarIconColor: currentState.value!.appBarIconColor,
                                 appBarSelectedIconColor: currentState.value!.appBarSelectedIconColor,
                                 appBarMenuBackgroundColor: currentState.value!.appBarMenuBackgroundColor,
                                 bottomNavigationBarBG: currentState.value!.bottomNavigationBarBG,
                                 drawerBG: currentState.value!.drawerBG,
                                 drawerHeaderBG: currentState.value!.drawerHeaderBG,
                                 profileDrawerBG: currentState.value!.profileDrawerBG,
                                 profileDrawerHeaderBG: null,
                                 backgroundHomeMenu: currentState.value!.backgroundHomeMenu,
                                 backgroundColorHomeMenu: currentState.value!.backgroundColorHomeMenu,
                                 iconColorHomeMenu: currentState.value!.iconColorHomeMenu,
                                 h1: currentState.value!.h1,
                                 h2: currentState.value!.h2,
                                 h3: currentState.value!.h3,
                                 h4: currentState.value!.h4,
                                 h5: currentState.value!.h5,
                                 textFieldHeader: currentState.value!.textFieldHeader,
                                 fontText: currentState.value!.fontText,
                                 fontSmallText: currentState.value!.fontSmallText,
                                 fontHighlight1: currentState.value!.fontHighlight1,
                                 fontHighlight2: currentState.value!.fontHighlight2,
                                 fontLink: currentState.value!.fontLink,
                                 routeBuilder: currentState.value!.routeBuilder,
                                 routeAnimationDuration: currentState.value!.routeAnimationDuration,
          );
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesBackgroundHomeMenu) {
        if (event.value != null)
          newValue = currentState.value!.copyWith(backgroundHomeMenu: await backgroundRepository(appId: appId)!.get(event.value));
        else
          newValue = new MonaStyleAttributesModel(
                                 documentID: currentState.value!.documentID,
                                 appId: currentState.value!.appId,
                                 formSubmitButtonColor: currentState.value!.formSubmitButtonColor,
                                 formBackground: currentState.value!.formBackground,
                                 appBackground: currentState.value!.appBackground,
                                 formSubmitButtonTextColor: currentState.value!.formSubmitButtonTextColor,
                                 formGroupTitleColor: currentState.value!.formGroupTitleColor,
                                 formFieldTextColor: currentState.value!.formFieldTextColor,
                                 formFieldHeaderColor: currentState.value!.formFieldHeaderColor,
                                 formFieldFocusColor: currentState.value!.formFieldFocusColor,
                                 listBackground: currentState.value!.listBackground,
                                 listTextItemColor: currentState.value!.listTextItemColor,
                                 floatingButtonForegroundColor: currentState.value!.floatingButtonForegroundColor,
                                 floatingButtonBackgroundColor: currentState.value!.floatingButtonBackgroundColor,
                                 dividerColor: currentState.value!.dividerColor,
                                 appBarBG: currentState.value!.appBarBG,
                                 appBarIconColor: currentState.value!.appBarIconColor,
                                 appBarSelectedIconColor: currentState.value!.appBarSelectedIconColor,
                                 appBarMenuBackgroundColor: currentState.value!.appBarMenuBackgroundColor,
                                 bottomNavigationBarBG: currentState.value!.bottomNavigationBarBG,
                                 drawerBG: currentState.value!.drawerBG,
                                 drawerHeaderBG: currentState.value!.drawerHeaderBG,
                                 profileDrawerBG: currentState.value!.profileDrawerBG,
                                 profileDrawerHeaderBG: currentState.value!.profileDrawerHeaderBG,
                                 backgroundHomeMenu: null,
                                 backgroundColorHomeMenu: currentState.value!.backgroundColorHomeMenu,
                                 iconColorHomeMenu: currentState.value!.iconColorHomeMenu,
                                 h1: currentState.value!.h1,
                                 h2: currentState.value!.h2,
                                 h3: currentState.value!.h3,
                                 h4: currentState.value!.h4,
                                 h5: currentState.value!.h5,
                                 textFieldHeader: currentState.value!.textFieldHeader,
                                 fontText: currentState.value!.fontText,
                                 fontSmallText: currentState.value!.fontSmallText,
                                 fontHighlight1: currentState.value!.fontHighlight1,
                                 fontHighlight2: currentState.value!.fontHighlight2,
                                 fontLink: currentState.value!.fontLink,
                                 routeBuilder: currentState.value!.routeBuilder,
                                 routeAnimationDuration: currentState.value!.routeAnimationDuration,
          );
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesBackgroundColorHomeMenu) {
        newValue = currentState.value!.copyWith(backgroundColorHomeMenu: event.value);
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesIconColorHomeMenu) {
        newValue = currentState.value!.copyWith(iconColorHomeMenu: event.value);
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesH1) {
        newValue = currentState.value!.copyWith(h1: event.value);
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesH2) {
        newValue = currentState.value!.copyWith(h2: event.value);
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesH3) {
        newValue = currentState.value!.copyWith(h3: event.value);
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesH4) {
        newValue = currentState.value!.copyWith(h4: event.value);
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesH5) {
        newValue = currentState.value!.copyWith(h5: event.value);
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesTextFieldHeader) {
        newValue = currentState.value!.copyWith(textFieldHeader: event.value);
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesFontText) {
        newValue = currentState.value!.copyWith(fontText: event.value);
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesFontSmallText) {
        newValue = currentState.value!.copyWith(fontSmallText: event.value);
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesFontHighlight1) {
        newValue = currentState.value!.copyWith(fontHighlight1: event.value);
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesFontHighlight2) {
        newValue = currentState.value!.copyWith(fontHighlight2: event.value);
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesFontLink) {
        newValue = currentState.value!.copyWith(fontLink: event.value);
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesRouteBuilder) {
        newValue = currentState.value!.copyWith(routeBuilder: event.value);
        yield SubmittableMonaStyleAttributesForm(value: newValue);

        return;
      }
      if (event is ChangedMonaStyleAttributesRouteAnimationDuration) {
        if (isInt(event.value)) {
          newValue = currentState.value!.copyWith(routeAnimationDuration: int.parse(event.value!));
          yield SubmittableMonaStyleAttributesForm(value: newValue);

        } else {
          newValue = currentState.value!.copyWith(routeAnimationDuration: 0);
          yield RouteAnimationDurationMonaStyleAttributesFormError(message: "Value should be a number", value: newValue);
        }
        return;
      }
    }
  }


  DocumentIDMonaStyleAttributesFormError error(String message, MonaStyleAttributesModel newValue) => DocumentIDMonaStyleAttributesFormError(message: message, value: newValue);

  Future<MonaStyleAttributesFormState> _isDocumentIDValid(String? value, MonaStyleAttributesModel newValue) async {
    if (value == null) return Future.value(error("Provide value for documentID", newValue));
    if (value.length == 0) return Future.value(error("Provide value for documentID", newValue));
    Future<MonaStyleAttributesModel?> findDocument = monaStyleAttributesRepository(appId: appId)!.get(value);
    return await findDocument.then((documentFound) {
      if (documentFound == null) {
        return SubmittableMonaStyleAttributesForm(value: newValue);
      } else {
        return error("Invalid documentID: already exists", newValue);
      }
    });
  }


}


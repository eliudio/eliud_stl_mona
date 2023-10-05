/*
       _ _           _ 
      | (_)         | |
   ___| |_ _   _  __| |
  / _ \ | | | | |/ _` |
 |  __/ | | |_| | (_| |
  \___|_|_|\__,_|\__,_|
                       
 
 mona_style_attributes_form_event.dart
                       
 This code is generated. This is read only. Don't touch!

*/

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:eliud_core/tools/common_tools.dart';
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


@immutable
abstract class MonaStyleAttributesFormEvent extends Equatable {
  const MonaStyleAttributesFormEvent();

  @override
  List<Object?> get props => [];
}

class InitialiseNewMonaStyleAttributesFormEvent extends MonaStyleAttributesFormEvent {
}


class InitialiseMonaStyleAttributesFormEvent extends MonaStyleAttributesFormEvent {
  final MonaStyleAttributesModel? value;

  @override
  List<Object?> get props => [ value ];

  InitialiseMonaStyleAttributesFormEvent({this.value});
}

class InitialiseMonaStyleAttributesFormNoLoadEvent extends MonaStyleAttributesFormEvent {
  final MonaStyleAttributesModel? value;

  @override
  List<Object?> get props => [ value ];

  InitialiseMonaStyleAttributesFormNoLoadEvent({this.value});
}

class ChangedMonaStyleAttributesDocumentID extends MonaStyleAttributesFormEvent {
  final String? value;

  ChangedMonaStyleAttributesDocumentID({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesDocumentID{ value: $value }';
}

class ChangedMonaStyleAttributesAppId extends MonaStyleAttributesFormEvent {
  final String? value;

  ChangedMonaStyleAttributesAppId({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesAppId{ value: $value }';
}

class ChangedMonaStyleAttributesFormBackground extends MonaStyleAttributesFormEvent {
  final BackgroundModel? value;

  ChangedMonaStyleAttributesFormBackground({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesFormBackground{ value: $value }';
}

class ChangedMonaStyleAttributesAppBackground extends MonaStyleAttributesFormEvent {
  final BackgroundModel? value;

  ChangedMonaStyleAttributesAppBackground({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesAppBackground{ value: $value }';
}

class ChangedMonaStyleAttributesFormGroupTitleColor extends MonaStyleAttributesFormEvent {
  final RgbModel? value;

  ChangedMonaStyleAttributesFormGroupTitleColor({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesFormGroupTitleColor{ value: $value }';
}

class ChangedMonaStyleAttributesFormFieldTextColor extends MonaStyleAttributesFormEvent {
  final RgbModel? value;

  ChangedMonaStyleAttributesFormFieldTextColor({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesFormFieldTextColor{ value: $value }';
}

class ChangedMonaStyleAttributesFormFieldHeaderColor extends MonaStyleAttributesFormEvent {
  final RgbModel? value;

  ChangedMonaStyleAttributesFormFieldHeaderColor({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesFormFieldHeaderColor{ value: $value }';
}

class ChangedMonaStyleAttributesFormFieldFocusColor extends MonaStyleAttributesFormEvent {
  final RgbModel? value;

  ChangedMonaStyleAttributesFormFieldFocusColor({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesFormFieldFocusColor{ value: $value }';
}

class ChangedMonaStyleAttributesListBackground extends MonaStyleAttributesFormEvent {
  final BackgroundModel? value;

  ChangedMonaStyleAttributesListBackground({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesListBackground{ value: $value }';
}

class ChangedMonaStyleAttributesListTextItemColor extends MonaStyleAttributesFormEvent {
  final RgbModel? value;

  ChangedMonaStyleAttributesListTextItemColor({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesListTextItemColor{ value: $value }';
}

class ChangedMonaStyleAttributesFloatingButtonForegroundColor extends MonaStyleAttributesFormEvent {
  final RgbModel? value;

  ChangedMonaStyleAttributesFloatingButtonForegroundColor({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesFloatingButtonForegroundColor{ value: $value }';
}

class ChangedMonaStyleAttributesFloatingButtonBackgroundColor extends MonaStyleAttributesFormEvent {
  final RgbModel? value;

  ChangedMonaStyleAttributesFloatingButtonBackgroundColor({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesFloatingButtonBackgroundColor{ value: $value }';
}

class ChangedMonaStyleAttributesDividerColor extends MonaStyleAttributesFormEvent {
  final RgbModel? value;

  ChangedMonaStyleAttributesDividerColor({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesDividerColor{ value: $value }';
}

class ChangedMonaStyleAttributesTopicContainerBackground extends MonaStyleAttributesFormEvent {
  final BackgroundModel? value;

  ChangedMonaStyleAttributesTopicContainerBackground({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesTopicContainerBackground{ value: $value }';
}

class ChangedMonaStyleAttributesActionContainerBackground extends MonaStyleAttributesFormEvent {
  final BackgroundModel? value;

  ChangedMonaStyleAttributesActionContainerBackground({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesActionContainerBackground{ value: $value }';
}

class ChangedMonaStyleAttributesAppBarBG extends MonaStyleAttributesFormEvent {
  final BackgroundModel? value;

  ChangedMonaStyleAttributesAppBarBG({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesAppBarBG{ value: $value }';
}

class ChangedMonaStyleAttributesAppBarIconColor extends MonaStyleAttributesFormEvent {
  final RgbModel? value;

  ChangedMonaStyleAttributesAppBarIconColor({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesAppBarIconColor{ value: $value }';
}

class ChangedMonaStyleAttributesAppBarSelectedIconColor extends MonaStyleAttributesFormEvent {
  final RgbModel? value;

  ChangedMonaStyleAttributesAppBarSelectedIconColor({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesAppBarSelectedIconColor{ value: $value }';
}

class ChangedMonaStyleAttributesAppBarMenuBackgroundColor extends MonaStyleAttributesFormEvent {
  final RgbModel? value;

  ChangedMonaStyleAttributesAppBarMenuBackgroundColor({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesAppBarMenuBackgroundColor{ value: $value }';
}

class ChangedMonaStyleAttributesBottomNavigationBarBG extends MonaStyleAttributesFormEvent {
  final BackgroundModel? value;

  ChangedMonaStyleAttributesBottomNavigationBarBG({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesBottomNavigationBarBG{ value: $value }';
}

class ChangedMonaStyleAttributesDrawerBG extends MonaStyleAttributesFormEvent {
  final BackgroundModel? value;

  ChangedMonaStyleAttributesDrawerBG({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesDrawerBG{ value: $value }';
}

class ChangedMonaStyleAttributesDrawerHeaderBG extends MonaStyleAttributesFormEvent {
  final BackgroundModel? value;

  ChangedMonaStyleAttributesDrawerHeaderBG({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesDrawerHeaderBG{ value: $value }';
}

class ChangedMonaStyleAttributesProfileDrawerBG extends MonaStyleAttributesFormEvent {
  final BackgroundModel? value;

  ChangedMonaStyleAttributesProfileDrawerBG({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesProfileDrawerBG{ value: $value }';
}

class ChangedMonaStyleAttributesProfileDrawerHeaderBG extends MonaStyleAttributesFormEvent {
  final BackgroundModel? value;

  ChangedMonaStyleAttributesProfileDrawerHeaderBG({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesProfileDrawerHeaderBG{ value: $value }';
}

class ChangedMonaStyleAttributesBackgroundColorHomeMenu extends MonaStyleAttributesFormEvent {
  final RgbModel? value;

  ChangedMonaStyleAttributesBackgroundColorHomeMenu({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesBackgroundColorHomeMenu{ value: $value }';
}

class ChangedMonaStyleAttributesH1 extends MonaStyleAttributesFormEvent {
  final FontModel? value;

  ChangedMonaStyleAttributesH1({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesH1{ value: $value }';
}

class ChangedMonaStyleAttributesH2 extends MonaStyleAttributesFormEvent {
  final FontModel? value;

  ChangedMonaStyleAttributesH2({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesH2{ value: $value }';
}

class ChangedMonaStyleAttributesH3 extends MonaStyleAttributesFormEvent {
  final FontModel? value;

  ChangedMonaStyleAttributesH3({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesH3{ value: $value }';
}

class ChangedMonaStyleAttributesH4 extends MonaStyleAttributesFormEvent {
  final FontModel? value;

  ChangedMonaStyleAttributesH4({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesH4{ value: $value }';
}

class ChangedMonaStyleAttributesH5 extends MonaStyleAttributesFormEvent {
  final FontModel? value;

  ChangedMonaStyleAttributesH5({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesH5{ value: $value }';
}

class ChangedMonaStyleAttributesTextFieldHeader extends MonaStyleAttributesFormEvent {
  final FontModel? value;

  ChangedMonaStyleAttributesTextFieldHeader({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesTextFieldHeader{ value: $value }';
}

class ChangedMonaStyleAttributesFontText extends MonaStyleAttributesFormEvent {
  final FontModel? value;

  ChangedMonaStyleAttributesFontText({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesFontText{ value: $value }';
}

class ChangedMonaStyleAttributesFontSmallText extends MonaStyleAttributesFormEvent {
  final FontModel? value;

  ChangedMonaStyleAttributesFontSmallText({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesFontSmallText{ value: $value }';
}

class ChangedMonaStyleAttributesFontHighlight1 extends MonaStyleAttributesFormEvent {
  final FontModel? value;

  ChangedMonaStyleAttributesFontHighlight1({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesFontHighlight1{ value: $value }';
}

class ChangedMonaStyleAttributesFontHighlight2 extends MonaStyleAttributesFormEvent {
  final FontModel? value;

  ChangedMonaStyleAttributesFontHighlight2({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesFontHighlight2{ value: $value }';
}

class ChangedMonaStyleAttributesFontLink extends MonaStyleAttributesFormEvent {
  final FontModel? value;

  ChangedMonaStyleAttributesFontLink({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesFontLink{ value: $value }';
}

class ChangedMonaStyleAttributesRouteBuilder extends MonaStyleAttributesFormEvent {
  final PageTransitionAnimation? value;

  ChangedMonaStyleAttributesRouteBuilder({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesRouteBuilder{ value: $value }';
}

class ChangedMonaStyleAttributesRouteAnimationDuration extends MonaStyleAttributesFormEvent {
  final String? value;

  ChangedMonaStyleAttributesRouteAnimationDuration({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesRouteAnimationDuration{ value: $value }';
}

class ChangedMonaStyleAttributesDialogBackgroundColor extends MonaStyleAttributesFormEvent {
  final RgbModel? value;

  ChangedMonaStyleAttributesDialogBackgroundColor({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesDialogBackgroundColor{ value: $value }';
}

class ChangedMonaStyleAttributesDialogSeperatorColor extends MonaStyleAttributesFormEvent {
  final RgbModel? value;

  ChangedMonaStyleAttributesDialogSeperatorColor({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesDialogSeperatorColor{ value: $value }';
}

class ChangedMonaStyleAttributesPopupMenuButtonColor extends MonaStyleAttributesFormEvent {
  final RgbModel? value;

  ChangedMonaStyleAttributesPopupMenuButtonColor({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesPopupMenuButtonColor{ value: $value }';
}

class ChangedMonaStyleAttributesTextBubbleBackgroundColor extends MonaStyleAttributesFormEvent {
  final RgbModel? value;

  ChangedMonaStyleAttributesTextBubbleBackgroundColor({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesTextBubbleBackgroundColor{ value: $value }';
}

class ChangedMonaStyleAttributesDropdownButtonnColor extends MonaStyleAttributesFormEvent {
  final RgbModel? value;

  ChangedMonaStyleAttributesDropdownButtonnColor({this.value});

  @override
  List<Object?> get props => [ value ];

  @override
  String toString() => 'ChangedMonaStyleAttributesDropdownButtonnColor{ value: $value }';
}


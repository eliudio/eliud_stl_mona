import 'package:eliud_core_main/apis/style/_default/tools/colors.dart';
import 'package:eliud_core_main/model/background_model.dart';
import 'package:eliud_core_main/model/rgb_model.dart';
import 'package:eliud_stl_mona_model/model/mona_style_attributes_model.dart';

import '../tools/font_tools.dart';
import 'mona_shared.dart';

class MonaIncidamusStyle {
  static Future<MonaStyleAttributesModel> defaultStyleAttributesModel(
      String appId, String documentID) async {
    var headerColor1To3 = EliudColors.orange1;
    var headerColor4To5 = EliudColors.white;
    var defaultColor = EliudColors.white;
    var highlightColor = EliudColors.orange1;
    var linkColor = EliudColors.orange1;
    var styleName = documentID;
    var fontTools = FontTools(
        styleName: styleName,
        headerColor1To3: headerColor1To3,
        headerColor4To5: headerColor4To5,
        defaultColor: defaultColor,
        highlightColor: highlightColor,
        linkColor: linkColor);
    return MonaStyleAttributesModel(
      documentID: documentID,
      appId: appId,
      appBackground: pageBG(),
      listBackground: pageBG(),
      formBackground: pageBG(),
      formGroupTitleColor: EliudColors.red,
      formFieldTextColor: EliudColors.white,
      formFieldHeaderColor: EliudColors.red,
      formFieldFocusColor: EliudColors.red,
      appBarBG: appBarBG(),
      appBarIconColor: EliudColors.white,
      appBarSelectedIconColor: EliudColors.red,
      appBarMenuBackgroundColor: EliudColors.lightRed,
      bottomNavigationBarBG: bottomNavigationBarBG(),
      listTextItemColor: EliudColors.white,
      floatingButtonForegroundColor: EliudColors.white,
      floatingButtonBackgroundColor: EliudColors.red,
      dividerColor: EliudColors.red,
      h1: fontTools.getFont(
          FontTools.key(styleName, FontTools.latoLabel, FontTools.h1Label)),
      h2: fontTools.getFont(
          FontTools.key(styleName, FontTools.latoLabel, FontTools.h2Label)),
      h3: fontTools.getFont(
          FontTools.key(styleName, FontTools.latoLabel, FontTools.h3Label)),
      h4: fontTools.getFont(
          FontTools.key(styleName, FontTools.latoLabel, FontTools.h4Label)),
      h5: fontTools.getFont(
          FontTools.key(styleName, FontTools.latoLabel, FontTools.h5Label)),
      fontHighlight1: fontTools.getFont(FontTools.key(
          styleName, FontTools.latoLabel, FontTools.highlightLabel1)),
      fontHighlight2: fontTools.getFont(FontTools.key(
          styleName, FontTools.latoLabel, FontTools.highlightLabel2)),
      fontLink: fontTools.getFont(
          FontTools.key(styleName, FontTools.latoLabel, FontTools.linkLabel)),
      fontSmallText: fontTools.getFont(
          FontTools.key(styleName, FontTools.latoLabel, FontTools.smallLabel)),
      fontText: fontTools.getFont(
          FontTools.key(styleName, FontTools.latoLabel, FontTools.normalLabel)),
      backgroundColorHomeMenu: homeMenuPopupBGColor(),
      drawerBG: drawerBG(),
      drawerHeaderBG: drawerHeaderBG(),
      profileDrawerBG: profileDrawerBG(),
      profileDrawerHeaderBG: profileDrawerHeaderBG(),
      textFieldHeader: fontTools.getFont(FontTools.key(styleName,
          FontTools.dancingScriptLabel, FontTools.textFieldHeaderLabel)),
      routeBuilder: PageTransitionAnimation.fadeRoute,
      routeAnimationDuration: 800,
      topicContainerBackground: pageBG(),
      actionContainerBackground: pageBG(),
      dialogBackgroundColor: EliudColors.dialogGray,
      dialogSeperatorColor: EliudColors.red,
      popupMenuButtonColor: EliudColors.dialogGray,
      textBubbleBackgroundColor: EliudColors.black,
      dropdownButtonnColor: EliudColors.black,
      listTileColor: EliudColors.dialogGray,
    );
  }

  static RgbModel appColor1() => EliudColors.darkRed;
  static RgbModel appColor2() => EliudColors.black;
  static RgbModel appColor3() => EliudColors.darkRed2;
  static RgbModel appColor4() => EliudColors.black;
  static RgbModel homeMenuPopupBGColor() => EliudColors.black;

  static BackgroundModel appBarBG() =>
      MonaShared.appBarBG('incidamus-appbar-bg', appColor1(), appColor2());
  static BackgroundModel pageBG() =>
      MonaShared.pageBG('incidamus-page-bg', appColor3(), appColor4());
  static BackgroundModel bottomNavigationBarBG() =>
      MonaShared.bottomNavigationBarBG(
          'incidamus-bottom-navigationbar-bg', appColor1(), appColor2());
  static BackgroundModel drawerBG() =>
      MonaShared.drawerBG('incidamus-drawer-bg', appColor1(), appColor2());
  static BackgroundModel drawerHeaderBG() =>
      MonaShared.drawerHeaderBG('incidamus-drawer-header-bg');
  static BackgroundModel profileDrawerBG() => MonaShared.profileDrawerBG(
      'incidamus-profile-drawer-bg', appColor1(), appColor2());
  static BackgroundModel profileDrawerHeaderBG() =>
      MonaShared.profileDrawerHeaderBG('incidamus-profile-drawer-header-bg');
}

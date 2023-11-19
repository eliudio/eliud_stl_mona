import 'package:eliud_core_model/model/background_model.dart';
import 'package:eliud_core_model/model/rgb_model.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_model.dart';
import 'package:eliud_stl_mona/tools/colors.dart';

import '../tools/font_tools.dart';
import 'mona_shared.dart';

class MonaMinkeyStyle {
  static Future<MonaStyleAttributesModel> defaultStyleAttributesModel(
      String appId, String documentID) async {
    return styleAttributesModel(appId, documentID);
  }

  static MonaStyleAttributesModel styleAttributesModel(
      String appId, String documentID) {
    var headerColor1To3 = MonaColors.white;
    var headerColor4To5 = MonaColors.black;
    var defaultColor = MonaColors.black;
    var highlightColor = MonaColors.red;
    var linkColor = MonaColors.white;
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
      formGroupTitleColor: MonaColors.red,
      formFieldTextColor: MonaColors.white,
      formFieldHeaderColor: MonaColors.red,
      formFieldFocusColor: MonaColors.red,
      appBarBG: appBarBG(),
      appBarIconColor: MonaColors.black,
      appBarSelectedIconColor: MonaColors.green,
      appBarMenuBackgroundColor: MonaColors.lightRed,
      bottomNavigationBarBG: bottomNavigationBarBG(),
      listTextItemColor: MonaColors.white,
      floatingButtonForegroundColor: MonaColors.white,
      floatingButtonBackgroundColor: MonaColors.red,
      dividerColor: MonaColors.red,
      h1: fontTools.getFont(FontTools.key(
          styleName, FontTools.dancingScriptLabel, FontTools.h1Label)),
      h2: fontTools.getFont(FontTools.key(
          styleName, FontTools.dancingScriptLabel, FontTools.h2Label)),
      h3: fontTools.getFont(FontTools.key(
          styleName, FontTools.dancingScriptLabel, FontTools.h3Label)),
      h4: fontTools.getFont(FontTools.key(
          styleName, FontTools.dancingScriptLabel, FontTools.h4Label)),
      h5: fontTools.getFont(FontTools.key(
          styleName, FontTools.dancingScriptLabel, FontTools.h5Label)),
      fontHighlight1: fontTools.getFont(FontTools.key(
          styleName, FontTools.dancingScriptLabel, FontTools.highlightLabel1)),
      fontHighlight2: fontTools.getFont(FontTools.key(
          styleName, FontTools.dancingScriptLabel, FontTools.highlightLabel2)),
      fontLink: fontTools.getFont(FontTools.key(
          styleName, FontTools.dancingScriptLabel, FontTools.linkLabel)),
      fontSmallText: fontTools.getFont(FontTools.key(
          styleName, FontTools.dancingScriptLabel, FontTools.smallLabel)),
      fontText: fontTools.getFont(FontTools.key(
          styleName, FontTools.dancingScriptLabel, FontTools.normalLabel)),
      backgroundColorHomeMenu: homeMenuPopupBGColor(),
      drawerBG: drawerBG(),
      drawerHeaderBG: drawerHeaderBG(),
      profileDrawerBG: profileDrawerBG(),
      profileDrawerHeaderBG: profileDrawerHeaderBG(),
      textFieldHeader: fontTools.getFont(FontTools.key(styleName,
          FontTools.dancingScriptLabel, FontTools.textFieldHeaderLabel)),
      routeBuilder: PageTransitionAnimation.scaleRoute,
      routeAnimationDuration: 800,
      topicContainerBackground: pageBG(),
      actionContainerBackground: pageBG(),
      dialogBackgroundColor: MonaColors.dialogGray,
      dialogSeperatorColor: MonaColors.red,
      popupMenuButtonColor: MonaColors.dialogGray,
      textBubbleBackgroundColor: MonaColors.white,
      dropdownButtonnColor: MonaColors.white,
      listTileColor: MonaColors.dialogGray,
    );
  }

  static RgbModel appColor1() => MonaColors.red;
  static RgbModel appColor2() => MonaColors.white;
  static RgbModel appColor3() => MonaColors.lightRed;
  static RgbModel appColor4() => MonaColors.white;
  static RgbModel homeMenuPopupBGColor() => MonaColors.white;

  static BackgroundModel appBarBG() =>
      MonaShared.appBarBG('minkey-appbar-bg', appColor1(), appColor2());
  static BackgroundModel pageBG() =>
      MonaShared.pageBG('minkey-page-bg', appColor3(), appColor4());
  static BackgroundModel bottomNavigationBarBG() =>
      MonaShared.bottomNavigationBarBG(
          'minkey-bottom-navigationbar-bg', appColor1(), appColor2());
  static BackgroundModel drawerBG() =>
      MonaShared.drawerBG('minkey-drawer-bg', appColor1(), appColor2());
  static BackgroundModel drawerHeaderBG() =>
      MonaShared.drawerHeaderBG('minkey-drawer-header-bg');
  static BackgroundModel profileDrawerBG() => MonaShared.profileDrawerBG(
      'minkey-profile-drawer-bg', appColor1(), appColor2());
  static BackgroundModel profileDrawerHeaderBG() =>
      MonaShared.profileDrawerHeaderBG('minkey-profile-drawer-header-bg');
}

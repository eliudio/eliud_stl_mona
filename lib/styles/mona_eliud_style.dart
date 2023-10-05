import 'package:eliud_core/style/style_family.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_model.dart';
import 'package:eliud_stl_mona/mona_style_family.dart';
import 'package:eliud_stl_mona/tools/colors.dart';
import 'mona_shared.dart';
import 'package:eliud_core/model/background_model.dart';
import 'package:eliud_core/model/rgb_model.dart';
import 'mona_style.dart';
import '../tools/font_tools.dart';

class MonaEliudStyle {
  static Future<MonaStyleAttributesModel> defaultStyleAttributesModel(String appId, String documentID) async {
    var headerColor1To3 = MonaColors.red;
    var headerColor4To5 = MonaColors.white;
    var defaultColor = MonaColors.black;
    var highlightColor = MonaColors.green;
    var linkColor = MonaColors.ochre;
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
      appBarIconColor: MonaColors.white,
      appBarSelectedIconColor: MonaColors.red,
      appBarMenuBackgroundColor: MonaColors.gray,
      bottomNavigationBarBG: bottomNavigationBarBG(),
      listTextItemColor: MonaColors.white,
      floatingButtonForegroundColor: MonaColors.white,
      floatingButtonBackgroundColor: MonaColors.red,
      dividerColor: MonaColors.red,
      h1: fontTools
          .getFont(FontTools.key(styleName, FontTools.dancingScriptLabel, FontTools.h1Label)),
      h2: fontTools
          .getFont(FontTools.key(styleName, FontTools.dancingScriptLabel, FontTools.h2Label)),
      h3: fontTools
          .getFont(FontTools.key(styleName, FontTools.dancingScriptLabel, FontTools.h3Label)),
      h4: fontTools
          .getFont(FontTools.key(styleName, FontTools.dancingScriptLabel, FontTools.h4Label)),
      h5: fontTools
          .getFont(FontTools.key(styleName, FontTools.dancingScriptLabel, FontTools.h5Label)),
      fontHighlight1: fontTools.getFont(
          FontTools.key(styleName, FontTools.dancingScriptLabel, FontTools.highlightLabel1)),
      fontHighlight2: fontTools.getFont(
          FontTools.key(styleName, FontTools.dancingScriptLabel, FontTools.highlightLabel2)),
      fontLink: fontTools
          .getFont(FontTools.key(styleName, FontTools.dancingScriptLabel, FontTools.linkLabel)),
      fontSmallText: fontTools
            .getFont(FontTools.key(styleName, FontTools.dancingScriptLabel, FontTools.smallLabel)),
      fontText: fontTools
            .getFont(FontTools.key(styleName, FontTools.dancingScriptLabel, FontTools.normalLabel)),
      backgroundColorHomeMenu: homeMenuPopupBGColor(),
      drawerBG: drawerBG(),
      drawerHeaderBG: drawerHeaderBG(),
      profileDrawerBG: profileDrawerBG(),
      profileDrawerHeaderBG: profileDrawerHeaderBG(),
      textFieldHeader: fontTools
          .getFont(FontTools.key(styleName, FontTools.dancingScriptLabel, FontTools.textFieldHeaderLabel)),
      routeBuilder: PageTransitionAnimation.SlideRightToLeft,
      routeAnimationDuration: 800,
      topicContainerBackground: pageBG(),
      actionContainerBackground: pageBG(),
      dialogBackgroundColor: MonaColors.dialogGray,
      dialogSeperatorColor: MonaColors.red,
      popupMenuButtonColor: MonaColors.dialogGray,
      textBubbleBackgroundColor: MonaColors.black,
      dropdownButtonnColor:  MonaColors.black,
    );
  }

  static RgbModel appColor1() => MonaColors.gray;
  static RgbModel appColor2() => MonaColors.blackTransparent;
  static RgbModel appColor3() => MonaColors.gray;
  static RgbModel appColor4() => MonaColors.gray;
  static RgbModel homeMenuPopupBGColor() => MonaColors.lightRed;

  static BackgroundModel appBarBG() => MonaShared.appBarBG('eliud-appbar-bg', appColor1(), appColor2());
  static BackgroundModel pageBG() => MonaShared.pageBG('eliud-page-bg', appColor3(), appColor4());
  static BackgroundModel bottomNavigationBarBG() => MonaShared.bottomNavigationBarBG('eliud-bottom-navigationbar-bg', appColor1(), appColor2());
  static BackgroundModel drawerBG() => MonaShared.drawerBG('eliud-drawer-bg', appColor1(), appColor2());
  static BackgroundModel drawerHeaderBG()  => MonaShared.drawerHeaderBG('eliud-drawer-header-bg');
  static BackgroundModel profileDrawerBG()  => MonaShared.profileDrawerBG('eliud-profile-drawer-bg', appColor1(), appColor2());
  static BackgroundModel profileDrawerHeaderBG()  => MonaShared.profileDrawerHeaderBG('eliud-profile-drawer-header-bg');
}

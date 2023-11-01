import 'package:eliud_core/model/background_model.dart';
import 'package:eliud_core/model/rgb_model.dart';
import '../tools/font_tools.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_model.dart';
import 'package:eliud_stl_mona/tools/colors.dart';
import 'mona_shared.dart';

class MonaJuuwleStyle {
  static Future<MonaStyleAttributesModel> defaultStyleAttributesModel(String appId, String documentID) async {
    var headerColor1To3 = MonaColors.lightBlueTransparent;
    var headerColor4To5 = MonaColors.black;
    var defaultColor = MonaColors.black;
    var highlightColor = MonaColors.ochre;
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
      formFieldTextColor: MonaColors.black,
      formFieldHeaderColor: MonaColors.red,
      formFieldFocusColor: MonaColors.red,
      appBarBG: appBarBG(),
      appBarIconColor: MonaColors.black,
      appBarSelectedIconColor: MonaColors.white,
      appBarMenuBackgroundColor: MonaColors.lightRed,
      bottomNavigationBarBG: bottomNavigationBarBG(),
      listTextItemColor: MonaColors.white,
      floatingButtonForegroundColor: MonaColors.white,
      floatingButtonBackgroundColor: MonaColors.red,
      dividerColor: MonaColors.red,

      h1: fontTools.getFont(
          FontTools.key(styleName, FontTools.dancingScriptLabel, FontTools.h1Label)),
      h2: fontTools.getFont(
          FontTools.key(styleName, FontTools.dancingScriptLabel, FontTools.h2Label)),
      h3: fontTools.getFont(
          FontTools.key(styleName, FontTools.dancingScriptLabel, FontTools.h3Label)),
      h4: fontTools.getFont(
          FontTools.key(styleName, FontTools.dancingScriptLabel, FontTools.h4Label)),
      h5: fontTools.getFont(
          FontTools.key(styleName, FontTools.dancingScriptLabel, FontTools.h5Label)),
      fontHighlight1: fontTools.getFont(FontTools.key(styleName,
          FontTools.dancingScriptLabel, FontTools.highlightLabel1)),
      fontHighlight2: fontTools.getFont(FontTools.key(styleName,
          FontTools.dancingScriptLabel, FontTools.highlightLabel2)),
      fontLink: fontTools.getFont(
          FontTools.key(styleName, FontTools.dancingScriptLabel, FontTools.linkLabel)),
      fontSmallText: fontTools.getFont(
          FontTools.key(styleName, FontTools.dancingScriptLabel, FontTools.smallLabel)),
      fontText: fontTools.getFont(
          FontTools.key(styleName, FontTools.dancingScriptLabel, FontTools.normalLabel)),
      backgroundColorHomeMenu: homeMenuPopupBGColor(),
      drawerBG: drawerBG(),
      drawerHeaderBG: drawerHeaderBG(),
      profileDrawerBG: profileDrawerBG(),
      profileDrawerHeaderBG: profileDrawerHeaderBG(),
      textFieldHeader: fontTools
          .getFont(FontTools.key(styleName, FontTools.dancingScriptLabel, FontTools.textFieldHeaderLabel)),
      routeBuilder: PageTransitionAnimation.RotationRoute,
      routeAnimationDuration: 800,
      topicContainerBackground: pageBG(),
      actionContainerBackground: pageBG(),
      dialogBackgroundColor: MonaColors.dialogGray,
      dialogSeperatorColor: MonaColors.red,
      popupMenuButtonColor: MonaColors.dialogGray,
      textBubbleBackgroundColor: MonaColors.black,
      dropdownButtonnColor:  MonaColors.black,
      listTileColor: MonaColors.dialogGray,
    );
  }

  static RgbModel appColor1() => MonaColors.bordeauxRed;
  static RgbModel appColor2() => MonaColors.ochre;
  static RgbModel appColor3() => MonaColors.ochreTransparent;
  static RgbModel appColor4() => MonaColors.white;
  static RgbModel homeMenuPopupBGColor() => MonaColors.white;

  static BackgroundModel appBarBG() => MonaShared.appBarBG('juuwle-appbar-bg', appColor1(), appColor2());
  static BackgroundModel pageBG() => MonaShared.pageBG('juuwle-page-bg', appColor3(), appColor4());
  static BackgroundModel bottomNavigationBarBG() => MonaShared.bottomNavigationBarBG('juuwle-bottom-navigationbar-bg', appColor1(), appColor2());
  static BackgroundModel drawerBG() => MonaShared.drawerBG('juuwle-drawer-bg', appColor1(), appColor2());
  static BackgroundModel drawerHeaderBG()  => MonaShared.drawerHeaderBG('juuwle-drawer-header-bg');
  static BackgroundModel profileDrawerBG() => MonaShared.profileDrawerBG('juuwle-profile-drawer-bg', appColor1(), appColor2());
  static BackgroundModel profileDrawerHeaderBG() => MonaShared.profileDrawerHeaderBG('juuwle-profile-drawer-header-bg');
}

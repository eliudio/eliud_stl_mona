import 'package:eliud_core/model/background_model.dart';
import 'package:eliud_core/model/decoration_color_model.dart';
import 'package:eliud_core/model/rgb_model.dart';
import 'package:eliud_core/style/style.dart';
import 'package:eliud_core/style/style_family.dart';
import 'package:eliud_core/style/tools/backgrounds.dart';
import '../tools/font_tools.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_model.dart';
import 'package:eliud_stl_mona/tools/colors.dart';
import 'mona_style.dart';
import 'mona_shared.dart';

class MonaIncidamusStyle {
  static Future<MonaStyleAttributesModel> defaultStyleAttributesModel(String appId, String documentID) async {
    var headerColor1To3 = MonaColors.orange1;
    var headerColor4To5 = MonaColors.white;
    var defaultColor = MonaColors.white;
    var highlightColor = MonaColors.orange1;
    var linkColor = MonaColors.orange1;
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
      appBarMenuBackgroundColor: MonaColors.lightRed,
      bottomNavigationBarBG: bottomNavigationBarBG(),
      listTextItemColor: MonaColors.white,
      floatingButtonForegroundColor: MonaColors.white,
      floatingButtonBackgroundColor: MonaColors.red,
      dividerColor: MonaColors.red,
      h1: fontTools
          .getFont(FontTools.key(styleName, FontTools.latoLabel, FontTools.h1Label)),
      h2: fontTools
          .getFont(FontTools.key(styleName, FontTools.latoLabel, FontTools.h2Label)),
      h3: fontTools
          .getFont(FontTools.key(styleName, FontTools.latoLabel, FontTools.h3Label)),
      h4: fontTools
          .getFont(FontTools.key(styleName, FontTools.latoLabel, FontTools.h4Label)),
      h5: fontTools
          .getFont(FontTools.key(styleName, FontTools.latoLabel, FontTools.h5Label)),
      fontHighlight1: fontTools.getFont(
          FontTools.key(styleName, FontTools.latoLabel, FontTools.highlightLabel1)),
      fontHighlight2: fontTools.getFont(
          FontTools.key(styleName, FontTools.latoLabel, FontTools.highlightLabel2)),
      fontLink: fontTools
          .getFont(FontTools.key(styleName, FontTools.latoLabel, FontTools.linkLabel)),
      fontSmallText: fontTools
          .getFont(FontTools.key(styleName, FontTools.latoLabel, FontTools.smallLabel)),
      fontText: fontTools
          .getFont(FontTools.key(styleName, FontTools.latoLabel, FontTools.normalLabel)),
      backgroundColorHomeMenu: homeMenuPopupBGColor(),
      drawerBG: drawerBG(),
      drawerHeaderBG: drawerHeaderBG(),
      profileDrawerBG: profileDrawerBG(),
      profileDrawerHeaderBG: profileDrawerHeaderBG(),
      textFieldHeader: fontTools
          .getFont(FontTools.key(styleName, FontTools.dancingScriptLabel, FontTools.textFieldHeaderLabel)),
      routeBuilder: PageTransitionAnimation.FadeRoute,
      routeAnimationDuration: 800,
      topicContainerBackground: pageBG(),
      actionContainerBackground: pageBG(),
    );
  }

  static RgbModel appColor1() => MonaColors.darkRed;
  static RgbModel appColor2() => MonaColors.black;
  static RgbModel appColor3() => MonaColors.darkRed2;
  static RgbModel appColor4() => MonaColors.black;
  static RgbModel homeMenuPopupBGColor() => MonaColors.black;

  static BackgroundModel appBarBG() => MonaShared.appBarBG('incidamus-appbar-bg', appColor1(), appColor2());
  static BackgroundModel pageBG() => MonaShared.pageBG('incidamus-page-bg', appColor3(), appColor4());
  static BackgroundModel bottomNavigationBarBG() => MonaShared.bottomNavigationBarBG('incidamus-bottom-navigationbar-bg', appColor1(), appColor2());
  static BackgroundModel drawerBG() => MonaShared.drawerBG('incidamus-drawer-bg', appColor1(), appColor2());
  static BackgroundModel drawerHeaderBG()  => MonaShared.drawerHeaderBG('incidamus-drawer-header-bg');
  static BackgroundModel profileDrawerBG()  => MonaShared.profileDrawerBG('incidamus-profile-drawer-bg', appColor1(), appColor2());
  static BackgroundModel profileDrawerHeaderBG()  => MonaShared.profileDrawerHeaderBG('incidamus-profile-drawer-header-bg');
}

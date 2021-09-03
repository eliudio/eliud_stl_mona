import 'package:eliud_core/style/style_family.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_model.dart';
import 'package:eliud_stl_mona/mona_style_family.dart';
import 'mona_shared.dart';
import 'package:eliud_core/model/background_model.dart';
import 'package:eliud_core/model/rgb_model.dart';
import 'package:eliud_core/style/tools/colors.dart';
import 'package:eliud_core/style/tools/font_tools.dart';
import '../mona_style.dart';

class MonaEliudStyle extends MonaStyle {
  static final String STYLE_NAME = 'Eliud';

  MonaEliudStyle(StyleFamily styleFamily) : super(styleFamily, STYLE_NAME, _styleAttributesModel());

  static MonaStyleAttributesModel _styleAttributesModel() {
    var headerColor1To3 = EliudColors.red;
    var headerColor4To5 = EliudColors.white;
    var defaultColor = EliudColors.black;
    var highlightColor = EliudColors.green;
    var linkColor = EliudColors.ochre;
    var fontTools = FontTools(
        headerColor1To3: headerColor1To3,
        headerColor4To5: headerColor4To5,
        defaultColor: defaultColor,
        highlightColor: highlightColor,
        linkColor: linkColor);
    return MonaStyleAttributesModel(
      documentID: STYLE_NAME,
      appBackground: pageBG(),
      listBackground: pageBG(),
      formBackground: pageBG(),
      formSubmitButtonColor: EliudColors.red,
      formSubmitButtonTextColor: EliudColors.white,
      formGroupTitleColor: EliudColors.red,
      formFieldTextColor: EliudColors.white,
      formFieldHeaderColor: EliudColors.red,
      formFieldFocusColor: EliudColors.red,
      appBarBG: appBarBG(),
      appBarIconColor: EliudColors.white,
      appBarSelectedIconColor: EliudColors.red,
      appBarMenuBackgroundColor: EliudColors.gray,
      bottomNavigationBarBG: bottomNavigationBarBG(),
      listTextItemColor: EliudColors.white,
      floatingButtonForegroundColor: EliudColors.white,
      floatingButtonBackgroundColor: EliudColors.red,
      dividerColor: EliudColors.red,
      h1: fontTools
          .getFont(FontTools.key(FontTools.dancingScriptLabel, FontTools.h1Label)),
      h2: fontTools
          .getFont(FontTools.key(FontTools.dancingScriptLabel, FontTools.h2Label)),
      h3: fontTools
          .getFont(FontTools.key(FontTools.dancingScriptLabel, FontTools.h3Label)),
      h4: fontTools
          .getFont(FontTools.key(FontTools.dancingScriptLabel, FontTools.h4Label)),
      h5: fontTools
          .getFont(FontTools.key(FontTools.dancingScriptLabel, FontTools.h5Label)),
      fontHighlight1: fontTools.getFont(
          FontTools.key(FontTools.dancingScriptLabel, FontTools.highlightLabel1)),
      fontHighlight2: fontTools.getFont(
          FontTools.key(FontTools.dancingScriptLabel, FontTools.highlightLabel2)),
      fontLink: fontTools
          .getFont(FontTools.key(FontTools.dancingScriptLabel, FontTools.linkLabel)),
      fontSmallText: fontTools
            .getFont(FontTools.key(FontTools.dancingScriptLabel, FontTools.smallLabel)),
      fontText: fontTools
            .getFont(FontTools.key(FontTools.dancingScriptLabel, FontTools.normalLabel)),
      backgroundHomeMenu: backgroundHomeMenu(),
      backgroundColorHomeMenu: homeMenuPopupBGColor(),
      iconColorHomeMenu: homeMenuIconColor(),
      drawerBG: drawerBG(),
      drawerHeaderBG: drawerHeaderBG(),
      profileDrawerBG: profileDrawerBG(),
      profileDrawerHeaderBG: profileDrawerHeaderBG()
    );
  }

  static RgbModel appColor1() => EliudColors.gray;
  static RgbModel appColor2() => EliudColors.blackTransparent;
  static RgbModel appColor3() => EliudColors.gray;
  static RgbModel appColor4() => EliudColors.gray;
  static RgbModel homeMenuIconColor() => EliudColors.white;
  static RgbModel homeMenuPopupBGColor() => EliudColors.lightRed;

  static BackgroundModel appBarBG() => MonaShared.appBarBG('eliud-appbar-bg', appColor1(), appColor2());
  static BackgroundModel pageBG() => MonaShared.pageBG('eliud-page-bg', appColor3(), appColor4());
  static BackgroundModel bottomNavigationBarBG() => MonaShared.bottomNavigationBarBG('eliud-bottom-navigationbar-bg', appColor1(), appColor2());
  static BackgroundModel drawerBG() => MonaShared.drawerBG('eliud-drawer-bg', appColor1(), appColor2());
  static BackgroundModel drawerHeaderBG()  => MonaShared.drawerHeaderBG('eliud-drawer-header-bg');
  static BackgroundModel profileDrawerBG()  => MonaShared.profileDrawerBG('eliud-profile-drawer-bg', appColor1(), appColor2());
  static BackgroundModel profileDrawerHeaderBG()  => MonaShared.profileDrawerHeaderBG('eliud-profile-drawer-header-bg');
  static BackgroundModel backgroundHomeMenu() => MonaShared.homeMenuBG('eliud-homemenu', appColor1(), appColor2());
}

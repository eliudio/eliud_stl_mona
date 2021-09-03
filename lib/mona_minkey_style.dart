import 'package:eliud_core/model/background_model.dart';
import 'package:eliud_core/model/rgb_model.dart';
import 'package:eliud_core/style/style_family.dart';
import 'package:eliud_core/style/tools/colors.dart';
import 'package:eliud_core/style/tools/font_tools.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_model.dart';
import '../mona_style.dart';
import 'mona_shared.dart';

class MonaMinkeyStyle extends MonaStyle {
  static final String STYLE_NAME = 'Minkey';

  MonaMinkeyStyle(StyleFamily styleFamily) : super(styleFamily, STYLE_NAME, _styleAttributesModel());

  static MonaStyleAttributesModel _styleAttributesModel() {
    var headerColor1To3 = EliudColors.white;
    var headerColor4To5 = EliudColors.black;
    var defaultColor = EliudColors.black;
    var highlightColor = EliudColors.red;
    var linkColor = EliudColors.white;
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
        appBarIconColor: EliudColors.black,
        appBarSelectedIconColor: EliudColors.green,
        appBarMenuBackgroundColor: EliudColors.lightRed,
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
        fontSmallText: fontTools.getFont(
            FontTools.key(FontTools.dancingScriptLabel, FontTools.smallLabel)),
        fontText: fontTools.getFont(
            FontTools.key(FontTools.dancingScriptLabel, FontTools.normalLabel)),
        backgroundHomeMenu: backgroundHomeMenu(),
        backgroundColorHomeMenu: homeMenuPopupBGColor(),
        iconColorHomeMenu: homeMenuIconColor(),
        drawerBG: drawerBG(),
        drawerHeaderBG: drawerHeaderBG(),
        profileDrawerBG: profileDrawerBG(),
        profileDrawerHeaderBG: profileDrawerHeaderBG()
    );
  }

  static RgbModel appColor1() => EliudColors.red;

  static RgbModel appColor2() => EliudColors.white;

  static RgbModel appColor3() => EliudColors.lightRed;

  static RgbModel appColor4() => EliudColors.white;

  static RgbModel homeMenuIconColor() => EliudColors.black;

  static RgbModel homeMenuPopupBGColor() => EliudColors.white;

  static BackgroundModel appBarBG() => MonaShared.appBarBG('minkey-appbar-bg', appColor1(), appColor2());
  static BackgroundModel pageBG() => MonaShared.pageBG('minkey-page-bg', appColor3(), appColor4());
  static BackgroundModel bottomNavigationBarBG() => MonaShared.bottomNavigationBarBG('minkey-bottom-navigationbar-bg', appColor1(), appColor2());
  static BackgroundModel drawerBG() => MonaShared.drawerBG('minkey-drawer-bg', appColor1(), appColor2());
  static BackgroundModel drawerHeaderBG() => MonaShared.drawerHeaderBG('minkey-drawer-header-bg');
  static BackgroundModel profileDrawerBG() => MonaShared.profileDrawerBG('minkey-profile-drawer-bg', appColor1(), appColor2());
  static BackgroundModel profileDrawerHeaderBG() => MonaShared.profileDrawerHeaderBG('minkey-profile-drawer-header-bg');
  static BackgroundModel backgroundHomeMenu() => MonaShared.homeMenuBG('minkey-homemenu', appColor1(), appColor2());
}

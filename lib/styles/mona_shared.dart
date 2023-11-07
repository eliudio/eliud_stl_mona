import 'package:eliud_core/model/background_model.dart';
import 'package:eliud_core/model/decoration_color_model.dart';
import 'package:eliud_core/model/rgb_model.dart';
import 'package:eliud_core/model/shadow_model.dart';
import 'package:eliud_core/style/tools/backgrounds.dart';
import 'package:eliud_stl_mona/tools/colors.dart';

abstract class MonaShared {
  static BackgroundModel pageBG(
    String bgName,
    RgbModel appColor3,
    RgbModel appColor4,
  ) {
    var decorationColorModels = <DecorationColorModel>[];
    var decorationColorModel1 = DecorationColorModel(
      documentID: '1',
      color: appColor4, // appColor4
      stop: .1,
    );
    decorationColorModels.add(decorationColorModel1);
    var decorationColorModel2 = DecorationColorModel(
      documentID: '2',
      color: appColor3, // appColor3
      stop: .9,
    );

    decorationColorModels.add(decorationColorModel2);
    var backgroundModel = BackgroundModel(
      beginGradientPosition: StartGradientPosition.centerLeft,
      endGradientPosition: EndGradientPosition.centerRight,
      decorationColors: decorationColorModels,
    );
    return backgroundModel;
  }

  static BackgroundModel appBarBG(
    String bgName,
    RgbModel appColor1,
    RgbModel appColor2,
  ) {
    return Backgrounds.gradient(
      fromColor: appColor1,
      toColor: appColor2,
      startPosition: StartGradientPosition.topLeft,
      endPosition: EndGradientPosition.bottomRight,
    );
  }

  static BackgroundModel bottomNavigationBarBG(
    String bgName,
    RgbModel appColor1,
    RgbModel appColor2,
  ) {
    return Backgrounds.gradient(
      fromColor: appColor1,
      toColor: appColor2,
      startPosition: StartGradientPosition.topLeft,
      endPosition: EndGradientPosition.bottomRight,
    );
  }

  static BackgroundModel drawerBG(
    String bgName,
    RgbModel appColor1,
    RgbModel appColor2,
  ) {
    var decorationColorModels = <DecorationColorModel>[];
    var decorationColorModel1 =
        DecorationColorModel(documentID: '1', color: appColor2, stop: -1);
    decorationColorModels.add(decorationColorModel1);
    var decorationColorModel2 =
        DecorationColorModel(documentID: '2', color: appColor1, stop: -1);
    decorationColorModels.add(decorationColorModel2);
    var backgroundModel = BackgroundModel(
      beginGradientPosition: StartGradientPosition.topLeft,
      endGradientPosition: EndGradientPosition.bottomRight,
      decorationColors: decorationColorModels,
    );
    return backgroundModel;
  }

  static BackgroundModel drawerHeaderBG(String bgName) {
    var decorationColorModels = <DecorationColorModel>[];
    var backgroundModel =
        BackgroundModel(decorationColors: decorationColorModels);
    return backgroundModel;
  }

  static BackgroundModel profileDrawerBG(
      String bgName, RgbModel appColor1, RgbModel appColor2) {
    var decorationColorModels = <DecorationColorModel>[];
    var decorationColorModel1 =
        DecorationColorModel(documentID: '1', color: appColor2, stop: -1);
    decorationColorModels.add(decorationColorModel1);
    var decorationColorModel2 =
        DecorationColorModel(documentID: '2', color: appColor1, stop: -1);
    decorationColorModels.add(decorationColorModel2);
    var backgroundModel = BackgroundModel(
      beginGradientPosition: StartGradientPosition.topRight,
      endGradientPosition: EndGradientPosition.bottomLeft,
      decorationColors: decorationColorModels,
    );
    return backgroundModel;
  }

  static BackgroundModel profileDrawerHeaderBG(String bgNBame) {
    var decorationColorModels = <DecorationColorModel>[];
    var backgroundModel = BackgroundModel(
        decorationColors: decorationColorModels,
        useProfilePhotoAsBackground: true);
    return backgroundModel;
  }

  static BackgroundModel homeMenuBG(
      String bgName, RgbModel appColor1, RgbModel appColor2) {
    // this is a clone of _pageBG
    var decorationColorModels = <DecorationColorModel>[];
    var decorationColorModel1 = DecorationColorModel(
      documentID: '1',
      color: appColor1,
      stop: .1,
    );
    decorationColorModels.add(decorationColorModel1);
    var decorationColorModel2 = DecorationColorModel(
      documentID: '2',
      color: appColor2,
      stop: .9,
    );

    decorationColorModels.add(decorationColorModel2);
    var backgroundModel = BackgroundModel(
      beginGradientPosition: StartGradientPosition.centerLeft,
      endGradientPosition: EndGradientPosition.centerRight,
      decorationColors: decorationColorModels,
      shadow: shadowModel(),
    );
    return backgroundModel;
  }

  static ShadowModel shadowModel() {
    var shadowModel = ShadowModel(
        color: MonaColors.gray,
        offsetDX: 4,
        offsetDY: 3,
        spreadRadius: 7,
        blurRadius: 7);
    return shadowModel;
  }
}

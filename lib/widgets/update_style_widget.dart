import 'package:eliud_core/core/widgets/background_widget.dart';
import 'package:eliud_core/core/widgets/background_widgets/style_color_widget.dart';
import 'package:eliud_core_main/model/app_model.dart';
import 'package:eliud_core_main/apis/style/frontend/has_button.dart';
import 'package:eliud_core_main/apis/style/frontend/has_container.dart';
import 'package:eliud_core_main/apis/style/frontend/has_text.dart';
import 'package:eliud_stl_mona/tools/font_tools.dart';
import 'package:eliud_stl_mona/widgets/update_style_widgets/font_widget.dart';
import 'package:eliud_stl_mona/widgets/update_style_widgets/page_transition_animation_widget.dart';
import 'package:eliud_stl_mona_model/model/mona_style_attributes_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../styles/mona_minkey_style.dart';

class UpdateStyleWidget extends StatefulWidget {
  final AppModel app;
  final MonaStyleAttributesModel value;
  final String memberId;

  UpdateStyleWidget({
    super.key,
    required this.app,
    required this.value,
    required this.memberId,
  });

  @override
  State<UpdateStyleWidget> createState() => _UpdateStyleWidgetState();
}

class _UpdateStyleWidgetState extends State<UpdateStyleWidget> {
  Widget _inContainer(
      BuildContext context, String label, List<Widget> widgets) {
    return topicContainer(widget.app, context,
        title: label, collapsible: true, collapsed: true, children: widgets);
  }

  @override
  void initState() {
    super.initState();
    widget.value.h1 = widget.value.h1 ?? FontTools.defaultH1();
    widget.value.h2 = widget.value.h2 ?? FontTools.defaultH2();
    widget.value.h3 = widget.value.h3 ?? FontTools.defaultH3();
    widget.value.h4 = widget.value.h4 ?? FontTools.defaultH4();
    widget.value.h5 = widget.value.h5 ?? FontTools.defaultH5();
    widget.value.fontHighlight1 =
        widget.value.fontHighlight1 ?? FontTools.defaultFontHighlight1();
    widget.value.fontHighlight2 =
        widget.value.fontHighlight2 ?? FontTools.defaultFontHighlight2();
    widget.value.fontLink =
        widget.value.fontLink ?? FontTools.defaultFontLink();
    widget.value.fontSmallText =
        widget.value.fontSmallText ?? FontTools.defaultFontSmallText();
    widget.value.fontText =
        widget.value.fontText ?? FontTools.defaultFontText();

    // just apply default values in case of null values
    var defaultStyleTemplate =
        MonaMinkeyStyle.styleAttributesModel(widget.app.documentID, 'template');
    widget.value.textFieldHeader =
        widget.value.textFieldHeader ?? defaultStyleTemplate.textFieldHeader;
    widget.value.fontText =
        widget.value.fontText ?? defaultStyleTemplate.fontText;
    widget.value.fontSmallText =
        widget.value.fontSmallText ?? defaultStyleTemplate.fontSmallText;
    widget.value.fontHighlight1 =
        widget.value.fontHighlight1 ?? defaultStyleTemplate.fontHighlight1;
    widget.value.fontHighlight2 =
        widget.value.fontHighlight2 ?? defaultStyleTemplate.fontHighlight2;
    widget.value.fontLink =
        widget.value.fontLink ?? defaultStyleTemplate.fontLink;
    widget.value.appBarIconColor =
        widget.value.appBarIconColor ?? defaultStyleTemplate.appBarIconColor;

    widget.value.appBarSelectedIconColor =
        widget.value.appBarSelectedIconColor ??
            defaultStyleTemplate.appBarMenuBackgroundColor;
    widget.value.appBarMenuBackgroundColor =
        widget.value.appBarMenuBackgroundColor ??
            defaultStyleTemplate.appBarMenuBackgroundColor;
    widget.value.bottomNavigationBarBG = widget.value.bottomNavigationBarBG ??
        defaultStyleTemplate.bottomNavigationBarBG;
    widget.value.drawerBG =
        widget.value.drawerBG ?? defaultStyleTemplate.drawerBG;
    widget.value.drawerHeaderBG =
        widget.value.drawerHeaderBG ?? defaultStyleTemplate.drawerHeaderBG;
    widget.value.profileDrawerBG =
        widget.value.profileDrawerBG ?? defaultStyleTemplate.profileDrawerBG;
    widget.value.profileDrawerHeaderBG = widget.value.profileDrawerHeaderBG ??
        defaultStyleTemplate.profileDrawerHeaderBG;
    widget.value.appBackground =
        widget.value.appBackground ?? defaultStyleTemplate.appBackground;
    widget.value.routeAnimationDuration = widget.value.routeAnimationDuration ??
        defaultStyleTemplate.routeAnimationDuration;
    widget.value.dividerColor =
        widget.value.dividerColor ?? defaultStyleTemplate.dividerColor;
    widget.value.backgroundColorHomeMenu =
        widget.value.backgroundColorHomeMenu ??
            defaultStyleTemplate.backgroundColorHomeMenu;
    widget.value.topicContainerBackground =
        widget.value.topicContainerBackground ??
            defaultStyleTemplate.topicContainerBackground;
    widget.value.actionContainerBackground =
        widget.value.actionContainerBackground ??
            defaultStyleTemplate.actionContainerBackground;
    widget.value.listBackground =
        widget.value.listBackground ?? defaultStyleTemplate.listBackground;
    widget.value.listTextItemColor = widget.value.listTextItemColor ??
        defaultStyleTemplate.listTextItemColor;
    widget.value.formBackground =
        widget.value.formBackground ?? defaultStyleTemplate.formBackground;
    widget.value.formGroupTitleColor = widget.value.formGroupTitleColor ??
        defaultStyleTemplate.formGroupTitleColor;
    widget.value.formFieldTextColor = widget.value.formFieldTextColor ??
        defaultStyleTemplate.formFieldTextColor;
    widget.value.formFieldHeaderColor = widget.value.formFieldHeaderColor ??
        defaultStyleTemplate.formFieldHeaderColor;
    widget.value.formFieldFocusColor = widget.value.formFieldFocusColor ??
        defaultStyleTemplate.formFieldFocusColor;
    widget.value.floatingButtonForegroundColor =
        widget.value.floatingButtonForegroundColor ??
            defaultStyleTemplate.floatingButtonForegroundColor;
    widget.value.floatingButtonBackgroundColor =
        widget.value.floatingButtonBackgroundColor ??
            defaultStyleTemplate.floatingButtonBackgroundColor;
    widget.value.appBarBG =
        widget.value.appBarBG ?? defaultStyleTemplate.appBarBG;
    widget.value.routeBuilder =
        widget.value.routeBuilder ?? defaultStyleTemplate.routeBuilder;
    widget.value.h1 = widget.value.h1 ?? defaultStyleTemplate.h1;
    widget.value.h2 = widget.value.h2 ?? defaultStyleTemplate.h2;
    widget.value.h3 = widget.value.h3 ?? defaultStyleTemplate.h3;
    widget.value.h4 = widget.value.h4 ?? defaultStyleTemplate.h4;
    widget.value.h5 = widget.value.h5 ?? defaultStyleTemplate.h4;
    widget.value.h5 = widget.value.h5 ?? defaultStyleTemplate.h4;

    widget.value.dialogBackgroundColor = widget.value.dialogBackgroundColor ??
        defaultStyleTemplate.dialogBackgroundColor;
    widget.value.dialogSeperatorColor = widget.value.dialogSeperatorColor ??
        defaultStyleTemplate.dialogSeperatorColor;
    widget.value.popupMenuButtonColor = widget.value.popupMenuButtonColor ??
        defaultStyleTemplate.popupMenuButtonColor;
    widget.value.textBubbleBackgroundColor =
        widget.value.textBubbleBackgroundColor ??
            defaultStyleTemplate.textBubbleBackgroundColor;
    widget.value.dropdownButtonnColor = widget.value.dropdownButtonnColor ??
        defaultStyleTemplate.dropdownButtonnColor;
    widget.value.listTileColor =
        widget.value.listTileColor ?? defaultStyleTemplate.listTileColor;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(shrinkWrap: true, physics: ScrollPhysics(), children: [
      _inContainer(context, 'Fonts', [
        _inContainer(context, 'Headers', [
          FontWidget(
              app: widget.app, value: widget.value.h1!, label: 'Font Header 1'),
          FontWidget(
              app: widget.app, value: widget.value.h2!, label: 'Font Header 2'),
          FontWidget(
              app: widget.app, value: widget.value.h3!, label: 'Font Header 3'),
          FontWidget(
              app: widget.app, value: widget.value.h4!, label: 'Font Header 4'),
          FontWidget(
              app: widget.app, value: widget.value.h5!, label: 'Font Header 5'),
        ]),
        _inContainer(context, 'Other', [
          FontWidget(
              app: widget.app,
              value: widget.value.textFieldHeader!,
              label: 'Input Field Header'),
          FontWidget(
              app: widget.app,
              value: widget.value.fontText!,
              label: 'Font Text'),
          FontWidget(
              app: widget.app,
              value: widget.value.fontSmallText!,
              label: 'Font Small Text'),
          FontWidget(
              app: widget.app,
              value: widget.value.fontHighlight1!,
              label: 'Font High Light 1'),
          FontWidget(
              app: widget.app,
              value: widget.value.fontHighlight2!,
              label: 'Font High Light 2'),
          FontWidget(
              app: widget.app,
              value: widget.value.fontLink!,
              label: 'Font Link'),
        ]),
      ]),
      _inContainer(context, 'App Bar', [
        BackgroundWidget(
            app: widget.app,
            memberId: widget.memberId,
            value: widget.value.appBarBG!,
            label: 'Background'),
        _inContainer(context, 'Colors', [
          StyleColorWidget(
              app: widget.app,
              value: widget.value.appBarIconColor!,
              label: 'Icon Color'),
          StyleColorWidget(
              app: widget.app,
              value: widget.value.appBarSelectedIconColor!,
              label: 'Selected Icon Color'),
          StyleColorWidget(
              app: widget.app,
              value: widget.value.appBarMenuBackgroundColor!,
              label: 'Menu background Color'),
        ]),
      ]),
      _inContainer(context, 'Navigation Bar', [
        BackgroundWidget(
            app: widget.app,
            memberId: widget.memberId,
            value: widget.value.bottomNavigationBarBG!,
            label: 'Background'),
      ]),
      _inContainer(context, 'Drawers', [
        _inContainer(context, 'Left Drawer', [
          BackgroundWidget(
              app: widget.app,
              memberId: widget.memberId,
              value: widget.value.drawerBG!,
              label: 'Background'),
          BackgroundWidget(
              app: widget.app,
              memberId: widget.memberId,
              value: widget.value.drawerHeaderBG!,
              label: 'Header background'),
        ]),
        _inContainer(context, 'Right (profile) Drawer', [
          BackgroundWidget(
              app: widget.app,
              memberId: widget.memberId,
              value: widget.value.profileDrawerBG!,
              label: 'Background'),
          BackgroundWidget(
              app: widget.app,
              memberId: widget.memberId,
              value: widget.value.profileDrawerHeaderBG!,
              label: 'Header background'),
        ]),
      ]),
      _inContainer(context, 'Dialog', [
        StyleColorWidget(
            app: widget.app,
            value: widget.value.dialogBackgroundColor!,
            label: 'Dialog Background Color'),
        StyleColorWidget(
            app: widget.app,
            value: widget.value.dialogSeperatorColor!,
            label: 'Dialog Separator Color'),
      ]),
      _inContainer(context, 'Page', [
        BackgroundWidget(
            app: widget.app,
            memberId: widget.memberId,
            value: widget.value.appBackground!,
            label: 'Background'),
      ]),
      PageTransitionAnimationWidget(
        app: widget.app,
        pageTransitionAnimation:
            widget.value.routeBuilder ?? PageTransitionAnimation.fadeRoute,
        routeAnimationDuration: widget.value.routeAnimationDuration ?? 1000,
        label: 'Page Transition Animation',
        routeAnimationDurationFeedback: (int routeAnimationDuration) =>
            widget.value.routeAnimationDuration = routeAnimationDuration,
        pageTransitionFeedback:
            (PageTransitionAnimation pageTransitionAnimation) =>
                widget.value.routeBuilder = pageTransitionAnimation,
      ),
      _inContainer(context, 'Text Bubble', [
        StyleColorWidget(
            app: widget.app,
            value: widget.value.textBubbleBackgroundColor!,
            label: 'Text bubble background Color'),
      ]),
      _inContainer(context, 'Drop down button', [
        StyleColorWidget(
            app: widget.app,
            value: widget.value.dropdownButtonnColor!,
            label: 'Drop down button background Color'),
      ]),
      _inContainer(context, 'Etc', [
        StyleColorWidget(
            app: widget.app,
            value: widget.value.dividerColor!,
            label: 'Divider Color'),
        StyleColorWidget(
            app: widget.app,
            value: widget.value.backgroundColorHomeMenu!,
            label: 'Background Color Popup Menu'),
        StyleColorWidget(
            app: widget.app,
            value: widget.value.popupMenuButtonColor!,
            label: 'Popup Menu Button Color'),
        BackgroundWidget(
            app: widget.app,
            memberId: widget.memberId,
            value: widget.value.topicContainerBackground!,
            label: 'Background topic container'),
        BackgroundWidget(
            app: widget.app,
            memberId: widget.memberId,
            value: widget.value.actionContainerBackground!,
            label: 'Background action container'),
        StyleColorWidget(
            app: widget.app,
            value: widget.value.listTileColor!,
            label: 'List tile Color'),
      ]),
      _inContainer(context, 'Admin', [
        _inContainer(context, 'List', [
          BackgroundWidget(
              app: widget.app,
              memberId: widget.memberId,
              value: widget.value.listBackground!,
              label: 'Background'),
          StyleColorWidget(
              app: widget.app,
              value: widget.value.listTextItemColor!,
              label: 'List Item Color'),
        ]),
        _inContainer(context, 'Form', [
          BackgroundWidget(
              app: widget.app,
              memberId: widget.memberId,
              value: widget.value.formBackground!,
              label: 'Background'),
          StyleColorWidget(
              app: widget.app,
              value: widget.value.formGroupTitleColor!,
              label: 'Field Title Color'),
          StyleColorWidget(
              app: widget.app,
              value: widget.value.formFieldTextColor!,
              label: 'Field Text Color'),
          StyleColorWidget(
              app: widget.app,
              value: widget.value.formFieldHeaderColor!,
              label: 'Field Header Color'),
          StyleColorWidget(
              app: widget.app,
              value: widget.value.formFieldFocusColor!,
              label: 'Field Focus Color'),
        ]),
        _inContainer(context, 'Floating action button', [
          StyleColorWidget(
              app: widget.app,
              value: widget.value.floatingButtonForegroundColor!,
              label: 'Foreground Color'),
          StyleColorWidget(
              app: widget.app,
              value: widget.value.floatingButtonBackgroundColor!,
              label: 'Background Color'),
        ]),
      ]),
      _inContainer(context, 'Json representation', [
        iconButton(widget.app, context, icon: Icon(Icons.copy),
            onPressed: () async {
          await Clipboard.setData(ClipboardData(
              text: widget.value
                  .toEntity(appId: widget.app.documentID)
                  .toJsonString()));
        }),
        text(widget.app, context,
            widget.value.toEntity(appId: widget.app.documentID).toJsonString()),
      ]),
    ]);
  }
}

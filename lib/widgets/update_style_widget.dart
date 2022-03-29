import 'package:eliud_core/style/frontend/has_container.dart';
import 'package:eliud_stl_mona/tools/font_tools.dart';
import 'package:eliud_pkg_medium/editors/widgets/background_widget.dart';
import 'package:eliud_stl_mona/widgets/update_style_widgets/font_widget.dart';
import 'package:eliud_stl_mona/widgets/update_style_widgets/page_transition_animation_widget.dart';
import 'package:eliud_stl_mona/widgets/update_style_widgets/style_color_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:eliud_core/model/model_export.dart';
import 'package:eliud_stl_mona/model/model_export.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_model.dart';

class UpdateStyleWidget extends StatefulWidget {
  AppModel app;
  MonaStyleAttributesModel value;
  String memberId;

  UpdateStyleWidget({
    Key? key,
    required this.app,
    required this.value,
    required this.memberId,
  }) : super(key: key);

  @override
  _UpdateStyleWidgetState createState() => _UpdateStyleWidgetState();
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
        widget.value.routeBuilder ?? PageTransitionAnimation.FadeRoute,
        routeAnimationDuration: widget.value.routeAnimationDuration ?? 1000,
        label: 'Page Transition Animation',
        routeAnimationDurationFeedback: (int routeAnimationDuration) =>
        widget.value.routeAnimationDuration = routeAnimationDuration,
        pageTransitionFeedback:
            (PageTransitionAnimation pageTransitionAnimation) =>
        widget.value.routeBuilder = pageTransitionAnimation,
      ),
      _inContainer(context, 'Etc', [
        StyleColorWidget(
            app: widget.app,
            value: widget.value.dividerColor!,
            label: 'Divider Color'),
        StyleColorWidget(
            app: widget.app,
            value: widget.value.backgroundColorHomeMenu!,
            label: 'Background Color Popup Menu'),
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
    ]);
  }
}

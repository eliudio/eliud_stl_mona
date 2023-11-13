/*
       _ _           _ 
      | (_)         | |
   ___| |_ _   _  __| |
  / _ \ | | | | |/ _` |
 |  __/ | | |_| | (_| |
  \___|_|_|\__,_|\__,_|
                       
 
 mona_style_attributes_form.dart
                       
 This code is generated. This is read only. Don't touch!

*/

import 'package:eliud_core/model/app_model.dart';
import 'package:eliud_core/core/blocs/access/state/access_state.dart';
import 'package:eliud_core/core/blocs/access/access_bloc.dart';
import '../tools/bespoke_models.dart';
import 'package:eliud_core/core/navigate/router.dart' as eliudrouter;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eliud_core/style/style_registry.dart';

import 'package:eliud_core/tools/bespoke_formfields.dart';

import 'package:eliud_core/tools/enums.dart';

import 'package:eliud_core/model/model_export.dart';
import 'package:eliud_stl_mona/model/model_export.dart';

import 'package:eliud_stl_mona/model/mona_style_attributes_list_bloc.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_list_event.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_model.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_form_bloc.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_form_event.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_form_state.dart';

class MonaStyleAttributesForm extends StatelessWidget {
  final AppModel app;
  final FormAction formAction;
  final MonaStyleAttributesModel? value;
  final ActionModel? submitAction;

  MonaStyleAttributesForm(
      {super.key,
      required this.app,
      required this.formAction,
      required this.value,
      this.submitAction});

  /// Build the MonaStyleAttributesForm
  @override
  Widget build(BuildContext context) {
    //var accessState = AccessBloc.getState(context);
    var appId = app.documentID;
    if (formAction == FormAction.showData) {
      return BlocProvider<MonaStyleAttributesFormBloc>(
        create: (context) => MonaStyleAttributesFormBloc(
          appId,
          formAction: formAction,
        )..add(InitialiseMonaStyleAttributesFormEvent(value: value)),
        child: _MyMonaStyleAttributesForm(
            app: app, submitAction: submitAction, formAction: formAction),
      );
    }
    if (formAction == FormAction.showPreloadedData) {
      return BlocProvider<MonaStyleAttributesFormBloc>(
        create: (context) => MonaStyleAttributesFormBloc(
          appId,
          formAction: formAction,
        )..add(InitialiseMonaStyleAttributesFormNoLoadEvent(value: value)),
        child: _MyMonaStyleAttributesForm(
            app: app, submitAction: submitAction, formAction: formAction),
      );
    } else {
      return Scaffold(
          appBar: StyleRegistry.registry()
              .styleWithApp(app)
              .adminFormStyle()
              .appBarWithString(app, context,
                  title: formAction == FormAction.updateAction
                      ? 'Update MonaStyleAttributes'
                      : 'Add MonaStyleAttributes'),
          body: BlocProvider<MonaStyleAttributesFormBloc>(
            create: (context) => MonaStyleAttributesFormBloc(
              appId,
              formAction: formAction,
            )..add((formAction == FormAction.updateAction
                ? InitialiseMonaStyleAttributesFormEvent(value: value)
                : InitialiseNewMonaStyleAttributesFormEvent())),
            child: _MyMonaStyleAttributesForm(
                app: app, submitAction: submitAction, formAction: formAction),
          ));
    }
  }
}

class _MyMonaStyleAttributesForm extends StatefulWidget {
  final AppModel app;
  final FormAction? formAction;
  final ActionModel? submitAction;

  _MyMonaStyleAttributesForm(
      {required this.app, this.formAction, this.submitAction});

  @override
  State<_MyMonaStyleAttributesForm> createState() =>
      _MyMonaStyleAttributesFormState(formAction);
}

class _MyMonaStyleAttributesFormState
    extends State<_MyMonaStyleAttributesForm> {
  final FormAction? formAction;
  late MonaStyleAttributesFormBloc _myFormBloc;

  final TextEditingController _documentIDController = TextEditingController();
  int? _routeBuilderSelectedRadioTile;
  final TextEditingController _routeAnimationDurationController =
      TextEditingController();

  _MyMonaStyleAttributesFormState(this.formAction);

  @override
  void initState() {
    super.initState();
    _myFormBloc = BlocProvider.of<MonaStyleAttributesFormBloc>(context);
    _documentIDController.addListener(_onDocumentIDChanged);
    _routeBuilderSelectedRadioTile = 0;
    _routeAnimationDurationController
        .addListener(_onRouteAnimationDurationChanged);
  }

  @override
  Widget build(BuildContext context) {
    var accessState = AccessBloc.getState(context);
    return BlocBuilder<MonaStyleAttributesFormBloc,
        MonaStyleAttributesFormState>(builder: (context, state) {
      if (state is MonaStyleAttributesFormUninitialized) {
        return Center(
          child: StyleRegistry.registry()
              .styleWithApp(widget.app)
              .adminListStyle()
              .progressIndicator(widget.app, context),
        );
      }

      if (state is MonaStyleAttributesFormLoaded) {
        _documentIDController.text = state.value!.documentID.toString();
        if (state.value!.routeBuilder != null) {
          _routeBuilderSelectedRadioTile = state.value!.routeBuilder!.index;
        } else {
          _routeBuilderSelectedRadioTile = 0;
        }
        _routeAnimationDurationController.text =
            state.value!.routeAnimationDuration.toString();
      }
      if (state is MonaStyleAttributesFormInitialized) {
        List<Widget> children = [];
        children.add(Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: StyleRegistry.registry()
                .styleWithApp(widget.app)
                .adminFormStyle()
                .groupTitle(widget.app, context, 'General')));

        children.add(RgbField(widget.app, "Text color",
            state.value!.appBarIconColor, _onAppBarIconColorChanged));

        children.add(RgbField(
            widget.app,
            "Selected Icon Color",
            state.value!.appBarSelectedIconColor,
            _onAppBarSelectedIconColorChanged));

        children.add(RgbField(
            widget.app,
            "AppBar Menu Background Color",
            state.value!.appBarMenuBackgroundColor,
            _onAppBarMenuBackgroundColorChanged));

        children.add(RgbField(
            widget.app,
            "Background Color Home Menu",
            state.value!.backgroundColorHomeMenu,
            _onBackgroundColorHomeMenuChanged));

        children.add(StyleRegistry.registry()
            .styleWithApp(widget.app)
            .adminFormStyle()
            .radioListTile(
                widget.app,
                context,
                0,
                _routeBuilderSelectedRadioTile,
                'slideRightToLeft',
                'slideRightToLeft',
                !accessState.memberIsOwner(widget.app.documentID)
                    ? null
                    : (dynamic val) => setSelectionRouteBuilder(val)));
        children.add(StyleRegistry.registry()
            .styleWithApp(widget.app)
            .adminFormStyle()
            .radioListTile(
                widget.app,
                context,
                0,
                _routeBuilderSelectedRadioTile,
                'slideBottomToTop',
                'slideBottomToTop',
                !accessState.memberIsOwner(widget.app.documentID)
                    ? null
                    : (dynamic val) => setSelectionRouteBuilder(val)));
        children.add(StyleRegistry.registry()
            .styleWithApp(widget.app)
            .adminFormStyle()
            .radioListTile(
                widget.app,
                context,
                0,
                _routeBuilderSelectedRadioTile,
                'scaleRoute',
                'scaleRoute',
                !accessState.memberIsOwner(widget.app.documentID)
                    ? null
                    : (dynamic val) => setSelectionRouteBuilder(val)));
        children.add(StyleRegistry.registry()
            .styleWithApp(widget.app)
            .adminFormStyle()
            .radioListTile(
                widget.app,
                context,
                0,
                _routeBuilderSelectedRadioTile,
                'rotationRoute',
                'rotationRoute',
                !accessState.memberIsOwner(widget.app.documentID)
                    ? null
                    : (dynamic val) => setSelectionRouteBuilder(val)));
        children.add(StyleRegistry.registry()
            .styleWithApp(widget.app)
            .adminFormStyle()
            .radioListTile(
                widget.app,
                context,
                0,
                _routeBuilderSelectedRadioTile,
                'fadeRoute',
                'fadeRoute',
                !accessState.memberIsOwner(widget.app.documentID)
                    ? null
                    : (dynamic val) => setSelectionRouteBuilder(val)));

        children.add(StyleRegistry.registry()
            .styleWithApp(widget.app)
            .adminFormStyle()
            .textFormField(widget.app, context,
                labelText: 'Page Animation (millisec)',
                icon: Icons.text_format,
                readOnly: _readOnly(accessState, state),
                textEditingController: _routeAnimationDurationController,
                keyboardType: TextInputType.number,
                validator: (_) =>
                    state is RouteAnimationDurationMonaStyleAttributesFormError
                        ? state.message
                        : null,
                hintText: null));

        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry()
            .styleWithApp(widget.app)
            .adminFormStyle()
            .divider(widget.app, context));

        children.add(Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: StyleRegistry.registry()
                .styleWithApp(widget.app)
                .adminFormStyle()
                .groupTitle(widget.app, context, 'General')));

        children.add(StyleRegistry.registry()
            .styleWithApp(widget.app)
            .adminFormStyle()
            .textFormField(widget.app, context,
                labelText: 'Document ID',
                icon: Icons.vpn_key,
                readOnly: (formAction == FormAction.updateAction),
                textEditingController: _documentIDController,
                keyboardType: TextInputType.text,
                validator: (_) =>
                    state is DocumentIDMonaStyleAttributesFormError
                        ? state.message
                        : null,
                hintText: null));

        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry()
            .styleWithApp(widget.app)
            .adminFormStyle()
            .divider(widget.app, context));

        children.add(Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: StyleRegistry.registry()
                .styleWithApp(widget.app)
                .adminFormStyle()
                .groupTitle(widget.app, context, 'Form Colors')));

        children.add(RgbField(widget.app, "Form Group Title Color",
            state.value!.formGroupTitleColor, _onFormGroupTitleColorChanged));

        children.add(RgbField(widget.app, "Form Field Text Color",
            state.value!.formFieldTextColor, _onFormFieldTextColorChanged));

        children.add(RgbField(widget.app, "Form Field Focus Color",
            state.value!.formFieldFocusColor, _onFormFieldFocusColorChanged));

        children.add(RgbField(
            widget.app,
            "Form Group Title Color",
            state.value!.dialogBackgroundColor,
            _onDialogBackgroundColorChanged));

        children.add(RgbField(widget.app, "Form Group Title Color",
            state.value!.dialogSeperatorColor, _onDialogSeperatorColorChanged));

        children.add(RgbField(widget.app, "Form Group Title Color",
            state.value!.popupMenuButtonColor, _onPopupMenuButtonColorChanged));

        children.add(RgbField(
            widget.app,
            "Form Group Title Color",
            state.value!.textBubbleBackgroundColor,
            _onTextBubbleBackgroundColorChanged));

        children.add(RgbField(widget.app, "Form Group Title Color",
            state.value!.dropdownButtonnColor, _onDropdownButtonnColorChanged));

        children.add(RgbField(widget.app, "List Title Color",
            state.value!.listTileColor, _onListTileColorChanged));

        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry()
            .styleWithApp(widget.app)
            .adminFormStyle()
            .divider(widget.app, context));

        children.add(Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: StyleRegistry.registry()
                .styleWithApp(widget.app)
                .adminFormStyle()
                .groupTitle(widget.app, context, 'List Items Colors')));

        children.add(RgbField(widget.app, "List Item Text Color",
            state.value!.listTextItemColor, _onListTextItemColorChanged));

        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry()
            .styleWithApp(widget.app)
            .adminFormStyle()
            .divider(widget.app, context));

        children.add(Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: StyleRegistry.registry()
                .styleWithApp(widget.app)
                .adminFormStyle()
                .groupTitle(widget.app, context, 'Floating Button Colors')));

        children.add(RgbField(
            widget.app,
            "List Item Text Color",
            state.value!.floatingButtonForegroundColor,
            _onFloatingButtonForegroundColorChanged));

        children.add(RgbField(
            widget.app,
            "List Item Text Color",
            state.value!.floatingButtonBackgroundColor,
            _onFloatingButtonBackgroundColorChanged));

        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry()
            .styleWithApp(widget.app)
            .adminFormStyle()
            .divider(widget.app, context));

        children.add(Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: StyleRegistry.registry()
                .styleWithApp(widget.app)
                .adminFormStyle()
                .groupTitle(widget.app, context, 'Other Colors')));

        children.add(RgbField(widget.app, "Form Field Header Color",
            state.value!.formFieldHeaderColor, _onFormFieldHeaderColorChanged));

        children.add(RgbField(widget.app, "Divider Color",
            state.value!.dividerColor, _onDividerColorChanged));

        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry()
            .styleWithApp(widget.app)
            .adminFormStyle()
            .divider(widget.app, context));

        children.add(Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: StyleRegistry.registry()
                .styleWithApp(widget.app)
                .adminFormStyle()
                .groupTitle(widget.app, context, 'Background forms')));

        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry()
            .styleWithApp(widget.app)
            .adminFormStyle()
            .divider(widget.app, context));

        children.add(Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: StyleRegistry.registry()
                .styleWithApp(widget.app)
                .adminFormStyle()
                .groupTitle(widget.app, context, 'AppBar Background')));

        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry()
            .styleWithApp(widget.app)
            .adminFormStyle()
            .divider(widget.app, context));

        children.add(Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: StyleRegistry.registry()
                .styleWithApp(widget.app)
                .adminFormStyle()
                .groupTitle(widget.app, context, 'List Background')));

        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry()
            .styleWithApp(widget.app)
            .adminFormStyle()
            .divider(widget.app, context));

        children.add(Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: StyleRegistry.registry()
                .styleWithApp(widget.app)
                .adminFormStyle()
                .groupTitle(widget.app, context, 'Font header 1')));

        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry()
            .styleWithApp(widget.app)
            .adminFormStyle()
            .divider(widget.app, context));

        children.add(Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: StyleRegistry.registry()
                .styleWithApp(widget.app)
                .adminFormStyle()
                .groupTitle(widget.app, context, 'Font header 2')));

        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry()
            .styleWithApp(widget.app)
            .adminFormStyle()
            .divider(widget.app, context));

        children.add(Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: StyleRegistry.registry()
                .styleWithApp(widget.app)
                .adminFormStyle()
                .groupTitle(widget.app, context, 'Font header 3')));

        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry()
            .styleWithApp(widget.app)
            .adminFormStyle()
            .divider(widget.app, context));

        children.add(Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: StyleRegistry.registry()
                .styleWithApp(widget.app)
                .adminFormStyle()
                .groupTitle(widget.app, context, 'Font header 4')));

        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry()
            .styleWithApp(widget.app)
            .adminFormStyle()
            .divider(widget.app, context));

        children.add(Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: StyleRegistry.registry()
                .styleWithApp(widget.app)
                .adminFormStyle()
                .groupTitle(widget.app, context, 'Font header 5')));

        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry()
            .styleWithApp(widget.app)
            .adminFormStyle()
            .divider(widget.app, context));

        children.add(Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: StyleRegistry.registry()
                .styleWithApp(widget.app)
                .adminFormStyle()
                .groupTitle(widget.app, context, 'Font header 5')));

        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry()
            .styleWithApp(widget.app)
            .adminFormStyle()
            .divider(widget.app, context));

        children.add(Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: StyleRegistry.registry()
                .styleWithApp(widget.app)
                .adminFormStyle()
                .groupTitle(widget.app, context, 'Font highlight 1')));

        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry()
            .styleWithApp(widget.app)
            .adminFormStyle()
            .divider(widget.app, context));

        children.add(Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: StyleRegistry.registry()
                .styleWithApp(widget.app)
                .adminFormStyle()
                .groupTitle(widget.app, context, 'Font hightlight 2')));

        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry()
            .styleWithApp(widget.app)
            .adminFormStyle()
            .divider(widget.app, context));

        children.add(Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: StyleRegistry.registry()
                .styleWithApp(widget.app)
                .adminFormStyle()
                .groupTitle(widget.app, context, 'Font Link')));

        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry()
            .styleWithApp(widget.app)
            .adminFormStyle()
            .divider(widget.app, context));

        if ((formAction != FormAction.showData) &&
            (formAction != FormAction.showPreloadedData)) {
          children.add(StyleRegistry.registry()
              .styleWithApp(widget.app)
              .adminFormStyle()
              .button(
                widget.app,
                context,
                label: 'Submit',
                onPressed: _readOnly(accessState, state)
                    ? null
                    : () {
                        if (state is MonaStyleAttributesFormError) {
                          return;
                        } else {
                          if (formAction == FormAction.updateAction) {
                            BlocProvider.of<MonaStyleAttributesListBloc>(
                                    context)
                                .add(UpdateMonaStyleAttributesList(
                                    value: state.value!.copyWith(
                              documentID: state.value!.documentID,
                              appId: state.value!.appId,
                              formBackground: state.value!.formBackground,
                              appBackground: state.value!.appBackground,
                              formGroupTitleColor:
                                  state.value!.formGroupTitleColor,
                              formFieldTextColor:
                                  state.value!.formFieldTextColor,
                              formFieldHeaderColor:
                                  state.value!.formFieldHeaderColor,
                              formFieldFocusColor:
                                  state.value!.formFieldFocusColor,
                              listBackground: state.value!.listBackground,
                              listTextItemColor: state.value!.listTextItemColor,
                              floatingButtonForegroundColor:
                                  state.value!.floatingButtonForegroundColor,
                              floatingButtonBackgroundColor:
                                  state.value!.floatingButtonBackgroundColor,
                              dividerColor: state.value!.dividerColor,
                              topicContainerBackground:
                                  state.value!.topicContainerBackground,
                              actionContainerBackground:
                                  state.value!.actionContainerBackground,
                              appBarBG: state.value!.appBarBG,
                              appBarIconColor: state.value!.appBarIconColor,
                              appBarSelectedIconColor:
                                  state.value!.appBarSelectedIconColor,
                              appBarMenuBackgroundColor:
                                  state.value!.appBarMenuBackgroundColor,
                              bottomNavigationBarBG:
                                  state.value!.bottomNavigationBarBG,
                              drawerBG: state.value!.drawerBG,
                              drawerHeaderBG: state.value!.drawerHeaderBG,
                              profileDrawerBG: state.value!.profileDrawerBG,
                              profileDrawerHeaderBG:
                                  state.value!.profileDrawerHeaderBG,
                              backgroundColorHomeMenu:
                                  state.value!.backgroundColorHomeMenu,
                              h1: state.value!.h1,
                              h2: state.value!.h2,
                              h3: state.value!.h3,
                              h4: state.value!.h4,
                              h5: state.value!.h5,
                              textFieldHeader: state.value!.textFieldHeader,
                              fontText: state.value!.fontText,
                              fontSmallText: state.value!.fontSmallText,
                              fontHighlight1: state.value!.fontHighlight1,
                              fontHighlight2: state.value!.fontHighlight2,
                              fontLink: state.value!.fontLink,
                              routeBuilder: state.value!.routeBuilder,
                              routeAnimationDuration:
                                  state.value!.routeAnimationDuration,
                              dialogBackgroundColor:
                                  state.value!.dialogBackgroundColor,
                              dialogSeperatorColor:
                                  state.value!.dialogSeperatorColor,
                              popupMenuButtonColor:
                                  state.value!.popupMenuButtonColor,
                              textBubbleBackgroundColor:
                                  state.value!.textBubbleBackgroundColor,
                              dropdownButtonnColor:
                                  state.value!.dropdownButtonnColor,
                              listTileColor: state.value!.listTileColor,
                            )));
                          } else {
                            BlocProvider.of<MonaStyleAttributesListBloc>(
                                    context)
                                .add(AddMonaStyleAttributesList(
                                    value: MonaStyleAttributesModel(
                              documentID: state.value!.documentID,
                              appId: state.value!.appId,
                              formBackground: state.value!.formBackground,
                              appBackground: state.value!.appBackground,
                              formGroupTitleColor:
                                  state.value!.formGroupTitleColor,
                              formFieldTextColor:
                                  state.value!.formFieldTextColor,
                              formFieldHeaderColor:
                                  state.value!.formFieldHeaderColor,
                              formFieldFocusColor:
                                  state.value!.formFieldFocusColor,
                              listBackground: state.value!.listBackground,
                              listTextItemColor: state.value!.listTextItemColor,
                              floatingButtonForegroundColor:
                                  state.value!.floatingButtonForegroundColor,
                              floatingButtonBackgroundColor:
                                  state.value!.floatingButtonBackgroundColor,
                              dividerColor: state.value!.dividerColor,
                              topicContainerBackground:
                                  state.value!.topicContainerBackground,
                              actionContainerBackground:
                                  state.value!.actionContainerBackground,
                              appBarBG: state.value!.appBarBG,
                              appBarIconColor: state.value!.appBarIconColor,
                              appBarSelectedIconColor:
                                  state.value!.appBarSelectedIconColor,
                              appBarMenuBackgroundColor:
                                  state.value!.appBarMenuBackgroundColor,
                              bottomNavigationBarBG:
                                  state.value!.bottomNavigationBarBG,
                              drawerBG: state.value!.drawerBG,
                              drawerHeaderBG: state.value!.drawerHeaderBG,
                              profileDrawerBG: state.value!.profileDrawerBG,
                              profileDrawerHeaderBG:
                                  state.value!.profileDrawerHeaderBG,
                              backgroundColorHomeMenu:
                                  state.value!.backgroundColorHomeMenu,
                              h1: state.value!.h1,
                              h2: state.value!.h2,
                              h3: state.value!.h3,
                              h4: state.value!.h4,
                              h5: state.value!.h5,
                              textFieldHeader: state.value!.textFieldHeader,
                              fontText: state.value!.fontText,
                              fontSmallText: state.value!.fontSmallText,
                              fontHighlight1: state.value!.fontHighlight1,
                              fontHighlight2: state.value!.fontHighlight2,
                              fontLink: state.value!.fontLink,
                              routeBuilder: state.value!.routeBuilder,
                              routeAnimationDuration:
                                  state.value!.routeAnimationDuration,
                              dialogBackgroundColor:
                                  state.value!.dialogBackgroundColor,
                              dialogSeperatorColor:
                                  state.value!.dialogSeperatorColor,
                              popupMenuButtonColor:
                                  state.value!.popupMenuButtonColor,
                              textBubbleBackgroundColor:
                                  state.value!.textBubbleBackgroundColor,
                              dropdownButtonnColor:
                                  state.value!.dropdownButtonnColor,
                              listTileColor: state.value!.listTileColor,
                            )));
                          }
                          if (widget.submitAction != null) {
                            eliudrouter.Router.navigateTo(
                                context, widget.submitAction!);
                          } else {
                            Navigator.pop(context);
                          }
                        }
                      },
              ));
        }

        return StyleRegistry.registry()
            .styleWithApp(widget.app)
            .adminFormStyle()
            .container(
                widget.app,
                context,
                Form(
                  child: ListView(
                      padding: const EdgeInsets.all(8),
                      physics: ((formAction == FormAction.showData) ||
                              (formAction == FormAction.showPreloadedData))
                          ? NeverScrollableScrollPhysics()
                          : null,
                      shrinkWrap: ((formAction == FormAction.showData) ||
                          (formAction == FormAction.showPreloadedData)),
                      children: children),
                ),
                formAction!);
      } else {
        return StyleRegistry.registry()
            .styleWithApp(widget.app)
            .adminListStyle()
            .progressIndicator(widget.app, context);
      }
    });
  }

  void _onDocumentIDChanged() {
    _myFormBloc.add(ChangedMonaStyleAttributesDocumentID(
        value: _documentIDController.text));
  }

  void _onFormGroupTitleColorChanged(value) {
    _myFormBloc
        .add(ChangedMonaStyleAttributesFormGroupTitleColor(value: value));
  }

  void _onFormFieldTextColorChanged(value) {
    _myFormBloc.add(ChangedMonaStyleAttributesFormFieldTextColor(value: value));
  }

  void _onFormFieldHeaderColorChanged(value) {
    _myFormBloc
        .add(ChangedMonaStyleAttributesFormFieldHeaderColor(value: value));
  }

  void _onFormFieldFocusColorChanged(value) {
    _myFormBloc
        .add(ChangedMonaStyleAttributesFormFieldFocusColor(value: value));
  }

  void _onListTextItemColorChanged(value) {
    _myFormBloc.add(ChangedMonaStyleAttributesListTextItemColor(value: value));
  }

  void _onFloatingButtonForegroundColorChanged(value) {
    _myFormBloc.add(
        ChangedMonaStyleAttributesFloatingButtonForegroundColor(value: value));
  }

  void _onFloatingButtonBackgroundColorChanged(value) {
    _myFormBloc.add(
        ChangedMonaStyleAttributesFloatingButtonBackgroundColor(value: value));
  }

  void _onDividerColorChanged(value) {
    _myFormBloc.add(ChangedMonaStyleAttributesDividerColor(value: value));
  }

  void _onAppBarIconColorChanged(value) {
    _myFormBloc.add(ChangedMonaStyleAttributesAppBarIconColor(value: value));
  }

  void _onAppBarSelectedIconColorChanged(value) {
    _myFormBloc
        .add(ChangedMonaStyleAttributesAppBarSelectedIconColor(value: value));
  }

  void _onAppBarMenuBackgroundColorChanged(value) {
    _myFormBloc
        .add(ChangedMonaStyleAttributesAppBarMenuBackgroundColor(value: value));
  }

  void _onBackgroundColorHomeMenuChanged(value) {
    _myFormBloc
        .add(ChangedMonaStyleAttributesBackgroundColorHomeMenu(value: value));
  }

  void setSelectionRouteBuilder(int? val) {
    setState(() {
      _routeBuilderSelectedRadioTile = val;
    });
    _myFormBloc.add(ChangedMonaStyleAttributesRouteBuilder(
        value: toPageTransitionAnimation(val)));
  }

  void _onRouteAnimationDurationChanged() {
    _myFormBloc.add(ChangedMonaStyleAttributesRouteAnimationDuration(
        value: _routeAnimationDurationController.text));
  }

  void _onDialogBackgroundColorChanged(value) {
    _myFormBloc
        .add(ChangedMonaStyleAttributesDialogBackgroundColor(value: value));
  }

  void _onDialogSeperatorColorChanged(value) {
    _myFormBloc
        .add(ChangedMonaStyleAttributesDialogSeperatorColor(value: value));
  }

  void _onPopupMenuButtonColorChanged(value) {
    _myFormBloc
        .add(ChangedMonaStyleAttributesPopupMenuButtonColor(value: value));
  }

  void _onTextBubbleBackgroundColorChanged(value) {
    _myFormBloc
        .add(ChangedMonaStyleAttributesTextBubbleBackgroundColor(value: value));
  }

  void _onDropdownButtonnColorChanged(value) {
    _myFormBloc
        .add(ChangedMonaStyleAttributesDropdownButtonnColor(value: value));
  }

  void _onListTileColorChanged(value) {
    _myFormBloc.add(ChangedMonaStyleAttributesListTileColor(value: value));
  }

  @override
  void dispose() {
    _documentIDController.dispose();
    _routeAnimationDurationController.dispose();
    super.dispose();
  }

  /// Is the form read-only?
  bool _readOnly(
      AccessState accessState, MonaStyleAttributesFormInitialized state) {
    return (formAction == FormAction.showData) ||
        (formAction == FormAction.showPreloadedData) ||
        (!accessState.memberIsOwner(widget.app.documentID));
  }
}

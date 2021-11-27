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

import 'package:eliud_core/core/blocs/access/state/access_state.dart';
import 'package:eliud_core/core/blocs/access/state/logged_in.dart';
import 'package:eliud_core/core/blocs/access/access_bloc.dart';
import '../tools/bespoke_models.dart';
import 'package:eliud_core/core/navigate/router.dart' as eliudrouter;
import 'package:eliud_core/tools/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:eliud_core/tools/common_tools.dart';
import 'package:eliud_core/style/style_registry.dart';
import 'package:eliud_core/style/admin/admin_form_style.dart';

import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

import 'package:intl/intl.dart';

import 'package:eliud_core/eliud.dart';

import 'package:eliud_core/model/internal_component.dart';
import 'package:eliud_stl_mona/model/embedded_component.dart';
import 'package:eliud_stl_mona/tools/bespoke_formfields.dart';
import 'package:eliud_core/tools/bespoke_formfields.dart';

import 'package:eliud_core/tools/enums.dart';
import 'package:eliud_core/tools/etc.dart';

import 'package:eliud_core/model/repository_export.dart';
import 'package:eliud_core/model/abstract_repository_singleton.dart';
import 'package:eliud_core/tools/main_abstract_repository_singleton.dart';
import 'package:eliud_stl_mona/model/abstract_repository_singleton.dart';
import 'package:eliud_stl_mona/model/repository_export.dart';
import 'package:eliud_core/model/embedded_component.dart';
import 'package:eliud_stl_mona/model/embedded_component.dart';
import 'package:eliud_core/model/model_export.dart';
import '../tools/bespoke_models.dart';
import 'package:eliud_stl_mona/model/model_export.dart';
import 'package:eliud_core/model/entity_export.dart';
import '../tools/bespoke_entities.dart';
import 'package:eliud_stl_mona/model/entity_export.dart';

import 'package:eliud_stl_mona/model/mona_style_attributes_list_bloc.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_list_event.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_model.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_form_bloc.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_form_event.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_form_state.dart';


class MonaStyleAttributesForm extends StatelessWidget {
  FormAction formAction;
  MonaStyleAttributesModel? value;
  ActionModel? submitAction;

  MonaStyleAttributesForm({Key? key, required this.formAction, required this.value, this.submitAction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var accessState = AccessBloc.getState(context);
    var app = AccessBloc.currentApp(context);
    if (app == null) return Text("No app available");
    var appId = app.documentID!;
    if (formAction == FormAction.ShowData) {
      return BlocProvider<MonaStyleAttributesFormBloc >(
            create: (context) => MonaStyleAttributesFormBloc(appId,
                                       formAction: formAction,

                                                )..add(InitialiseMonaStyleAttributesFormEvent(value: value)),
  
        child: MyMonaStyleAttributesForm(submitAction: submitAction, formAction: formAction),
          );
    } if (formAction == FormAction.ShowPreloadedData) {
      return BlocProvider<MonaStyleAttributesFormBloc >(
            create: (context) => MonaStyleAttributesFormBloc(appId,
                                       formAction: formAction,

                                                )..add(InitialiseMonaStyleAttributesFormNoLoadEvent(value: value)),
  
        child: MyMonaStyleAttributesForm(submitAction: submitAction, formAction: formAction),
          );
    } else {
      return Scaffold(
        appBar: StyleRegistry.registry().styleWithContext(context).adminFormStyle().appBarWithString(context, title: formAction == FormAction.UpdateAction ? 'Update MonaStyleAttributes' : 'Add MonaStyleAttributes'),
        body: BlocProvider<MonaStyleAttributesFormBloc >(
            create: (context) => MonaStyleAttributesFormBloc(appId,
                                       formAction: formAction,

                                                )..add((formAction == FormAction.UpdateAction ? InitialiseMonaStyleAttributesFormEvent(value: value) : InitialiseNewMonaStyleAttributesFormEvent())),
  
        child: MyMonaStyleAttributesForm(submitAction: submitAction, formAction: formAction),
          ));
    }
  }
}


class MyMonaStyleAttributesForm extends StatefulWidget {
  final FormAction? formAction;
  final ActionModel? submitAction;

  MyMonaStyleAttributesForm({this.formAction, this.submitAction});

  _MyMonaStyleAttributesFormState createState() => _MyMonaStyleAttributesFormState(this.formAction);
}


class _MyMonaStyleAttributesFormState extends State<MyMonaStyleAttributesForm> {
  final FormAction? formAction;
  late MonaStyleAttributesFormBloc _myFormBloc;

  final TextEditingController _documentIDController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  String? _formBackground;
  String? _appBackground;
  String? _listBackground;
  String? _appBarBG;
  String? _bottomNavigationBarBG;
  String? _drawerBG;
  String? _drawerHeaderBG;
  String? _profileDrawerBG;
  String? _profileDrawerHeaderBG;
  String? _backgroundHomeMenu;
  String? _h1;
  String? _h2;
  String? _h3;
  String? _h4;
  String? _h5;
  String? _textFieldHeader;
  String? _fontText;
  String? _fontSmallText;
  String? _fontHighlight1;
  String? _fontHighlight2;
  String? _fontLink;


  _MyMonaStyleAttributesFormState(this.formAction);

  @override
  void initState() {
    super.initState();
    _myFormBloc = BlocProvider.of<MonaStyleAttributesFormBloc>(context);
    _documentIDController.addListener(_onDocumentIDChanged);
    _descriptionController.addListener(_onDescriptionChanged);
  }

  @override
  Widget build(BuildContext context) {
    var app = AccessBloc.currentApp(context);
    if (app == null) return Text('No app available');
    var appId = app.documentID!;
    var accessState = AccessBloc.getState(context);
    return BlocBuilder<MonaStyleAttributesFormBloc, MonaStyleAttributesFormState>(builder: (context, state) {
      if (state is MonaStyleAttributesFormUninitialized) return Center(
        child: StyleRegistry.registry().styleWithContext(context).adminListStyle().progressIndicator(context),
      );

      if (state is MonaStyleAttributesFormLoaded) {
        if (state.value!.documentID != null)
          _documentIDController.text = state.value!.documentID.toString();
        else
          _documentIDController.text = "";
        if (state.value!.description != null)
          _descriptionController.text = state.value!.description.toString();
        else
          _descriptionController.text = "";
        if (state.value!.formBackground != null)
          _formBackground= state.value!.formBackground!.documentID;
        else
          _formBackground= "";
        if (state.value!.appBackground != null)
          _appBackground= state.value!.appBackground!.documentID;
        else
          _appBackground= "";
        if (state.value!.listBackground != null)
          _listBackground= state.value!.listBackground!.documentID;
        else
          _listBackground= "";
        if (state.value!.appBarBG != null)
          _appBarBG= state.value!.appBarBG!.documentID;
        else
          _appBarBG= "";
        if (state.value!.bottomNavigationBarBG != null)
          _bottomNavigationBarBG= state.value!.bottomNavigationBarBG!.documentID;
        else
          _bottomNavigationBarBG= "";
        if (state.value!.drawerBG != null)
          _drawerBG= state.value!.drawerBG!.documentID;
        else
          _drawerBG= "";
        if (state.value!.drawerHeaderBG != null)
          _drawerHeaderBG= state.value!.drawerHeaderBG!.documentID;
        else
          _drawerHeaderBG= "";
        if (state.value!.profileDrawerBG != null)
          _profileDrawerBG= state.value!.profileDrawerBG!.documentID;
        else
          _profileDrawerBG= "";
        if (state.value!.profileDrawerHeaderBG != null)
          _profileDrawerHeaderBG= state.value!.profileDrawerHeaderBG!.documentID;
        else
          _profileDrawerHeaderBG= "";
        if (state.value!.backgroundHomeMenu != null)
          _backgroundHomeMenu= state.value!.backgroundHomeMenu!.documentID;
        else
          _backgroundHomeMenu= "";
        if (state.value!.h1 != null)
          _h1= state.value!.h1!.documentID;
        else
          _h1= "";
        if (state.value!.h2 != null)
          _h2= state.value!.h2!.documentID;
        else
          _h2= "";
        if (state.value!.h3 != null)
          _h3= state.value!.h3!.documentID;
        else
          _h3= "";
        if (state.value!.h4 != null)
          _h4= state.value!.h4!.documentID;
        else
          _h4= "";
        if (state.value!.h5 != null)
          _h5= state.value!.h5!.documentID;
        else
          _h5= "";
        if (state.value!.textFieldHeader != null)
          _textFieldHeader= state.value!.textFieldHeader!.documentID;
        else
          _textFieldHeader= "";
        if (state.value!.fontText != null)
          _fontText= state.value!.fontText!.documentID;
        else
          _fontText= "";
        if (state.value!.fontSmallText != null)
          _fontSmallText= state.value!.fontSmallText!.documentID;
        else
          _fontSmallText= "";
        if (state.value!.fontHighlight1 != null)
          _fontHighlight1= state.value!.fontHighlight1!.documentID;
        else
          _fontHighlight1= "";
        if (state.value!.fontHighlight2 != null)
          _fontHighlight2= state.value!.fontHighlight2!.documentID;
        else
          _fontHighlight2= "";
        if (state.value!.fontLink != null)
          _fontLink= state.value!.fontLink!.documentID;
        else
          _fontLink= "";
      }
      if (state is MonaStyleAttributesFormInitialized) {
        List<Widget> children = [];
         children.add(Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: StyleRegistry.registry().styleWithContext(context).adminFormStyle().groupTitle(context, 'General')
                ));

        children.add(

                RgbField("Text color", state.value!.appBarIconColor, _onAppBarIconColorChanged)
          );

        children.add(

                RgbField("Selected Icon Color", state.value!.appBarSelectedIconColor, _onAppBarSelectedIconColorChanged)
          );

        children.add(

                RgbField("AppBar Menu Background Color", state.value!.appBarMenuBackgroundColor, _onAppBarMenuBackgroundColorChanged)
          );

        children.add(

                DropdownButtonComponentFactory().createNew(appId: appId, id: "backgrounds", value: _bottomNavigationBarBG, trigger: _onBottomNavigationBarBGSelected, optional: true),
          );

        children.add(

                DropdownButtonComponentFactory().createNew(appId: appId, id: "backgrounds", value: _drawerBG, trigger: _onDrawerBGSelected, optional: true),
          );

        children.add(

                DropdownButtonComponentFactory().createNew(appId: appId, id: "backgrounds", value: _drawerHeaderBG, trigger: _onDrawerHeaderBGSelected, optional: true),
          );

        children.add(

                DropdownButtonComponentFactory().createNew(appId: appId, id: "backgrounds", value: _profileDrawerBG, trigger: _onProfileDrawerBGSelected, optional: true),
          );

        children.add(

                DropdownButtonComponentFactory().createNew(appId: appId, id: "backgrounds", value: _profileDrawerHeaderBG, trigger: _onProfileDrawerHeaderBGSelected, optional: true),
          );

        children.add(

                DropdownButtonComponentFactory().createNew(appId: appId, id: "backgrounds", value: _backgroundHomeMenu, trigger: _onBackgroundHomeMenuSelected, optional: true),
          );

        children.add(

                RgbField("Background Color Home Menu", state.value!.backgroundColorHomeMenu, _onBackgroundColorHomeMenuChanged)
          );

        children.add(

                RgbField("Icon Color Home Menu", state.value!.iconColorHomeMenu, _onIconColorHomeMenuChanged)
          );

        children.add(

                DropdownButtonComponentFactory().createNew(appId: appId, id: "fonts", value: _fontLink, trigger: _onFontLinkSelected, optional: true),
          );


        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry().styleWithContext(context).adminFormStyle().divider(context));


         children.add(Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: StyleRegistry.registry().styleWithContext(context).adminFormStyle().groupTitle(context, 'General')
                ));

        children.add(

                  StyleRegistry.registry().styleWithContext(context).adminFormStyle().textFormField(context, labelText: 'Document ID', icon: Icons.vpn_key, readOnly: (formAction == FormAction.UpdateAction), textEditingController: _documentIDController, keyboardType: TextInputType.text, validator: (_) => state is DocumentIDMonaStyleAttributesFormError ? state.message : null, hintText: null)
          );

        children.add(

                  StyleRegistry.registry().styleWithContext(context).adminFormStyle().textFormField(context, labelText: 'Description', icon: Icons.text_format, readOnly: _readOnly(accessState, state), textEditingController: _descriptionController, keyboardType: TextInputType.text, validator: (_) => state is DescriptionMonaStyleAttributesFormError ? state.message : null, hintText: null)
          );


        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry().styleWithContext(context).adminFormStyle().divider(context));


         children.add(Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: StyleRegistry.registry().styleWithContext(context).adminFormStyle().groupTitle(context, 'Form Colors')
                ));

        children.add(

                RgbField("Form Submit Button Color", state.value!.formSubmitButtonColor, _onFormSubmitButtonColorChanged)
          );

        children.add(

                RgbField("Form Submit Button Text Color", state.value!.formSubmitButtonTextColor, _onFormSubmitButtonTextColorChanged)
          );

        children.add(

                RgbField("Form Group Title Color", state.value!.formGroupTitleColor, _onFormGroupTitleColorChanged)
          );

        children.add(

                RgbField("Form Field Text Color", state.value!.formFieldTextColor, _onFormFieldTextColorChanged)
          );

        children.add(

                RgbField("Form Field Focus Color", state.value!.formFieldFocusColor, _onFormFieldFocusColorChanged)
          );


        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry().styleWithContext(context).adminFormStyle().divider(context));


         children.add(Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: StyleRegistry.registry().styleWithContext(context).adminFormStyle().groupTitle(context, 'List Items Colors')
                ));

        children.add(

                RgbField("List Item Text Color", state.value!.listTextItemColor, _onListTextItemColorChanged)
          );


        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry().styleWithContext(context).adminFormStyle().divider(context));


         children.add(Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: StyleRegistry.registry().styleWithContext(context).adminFormStyle().groupTitle(context, 'Floating Button Colors')
                ));

        children.add(

                RgbField("List Item Text Color", state.value!.floatingButtonForegroundColor, _onFloatingButtonForegroundColorChanged)
          );

        children.add(

                RgbField("List Item Text Color", state.value!.floatingButtonBackgroundColor, _onFloatingButtonBackgroundColorChanged)
          );


        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry().styleWithContext(context).adminFormStyle().divider(context));


         children.add(Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: StyleRegistry.registry().styleWithContext(context).adminFormStyle().groupTitle(context, 'Other Colors')
                ));

        children.add(

                RgbField("Form Field Header Color", state.value!.formFieldHeaderColor, _onFormFieldHeaderColorChanged)
          );

        children.add(

                RgbField("Divider Color", state.value!.dividerColor, _onDividerColorChanged)
          );


        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry().styleWithContext(context).adminFormStyle().divider(context));


         children.add(Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: StyleRegistry.registry().styleWithContext(context).adminFormStyle().groupTitle(context, 'Background forms')
                ));

        children.add(

                DropdownButtonComponentFactory().createNew(appId: appId, id: "backgrounds", value: _formBackground, trigger: _onFormBackgroundSelected, optional: true),
          );

        children.add(

                DropdownButtonComponentFactory().createNew(appId: appId, id: "backgrounds", value: _appBackground, trigger: _onAppBackgroundSelected, optional: true),
          );


        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry().styleWithContext(context).adminFormStyle().divider(context));


         children.add(Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: StyleRegistry.registry().styleWithContext(context).adminFormStyle().groupTitle(context, 'AppBar Background')
                ));

        children.add(

                DropdownButtonComponentFactory().createNew(appId: appId, id: "backgrounds", value: _appBarBG, trigger: _onAppBarBGSelected, optional: true),
          );


        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry().styleWithContext(context).adminFormStyle().divider(context));


         children.add(Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: StyleRegistry.registry().styleWithContext(context).adminFormStyle().groupTitle(context, 'List Background')
                ));

        children.add(

                DropdownButtonComponentFactory().createNew(appId: appId, id: "backgrounds", value: _listBackground, trigger: _onListBackgroundSelected, optional: true),
          );


        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry().styleWithContext(context).adminFormStyle().divider(context));


         children.add(Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: StyleRegistry.registry().styleWithContext(context).adminFormStyle().groupTitle(context, 'Font header 1')
                ));

        children.add(

                DropdownButtonComponentFactory().createNew(appId: appId, id: "fonts", value: _h1, trigger: _onH1Selected, optional: true),
          );


        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry().styleWithContext(context).adminFormStyle().divider(context));


         children.add(Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: StyleRegistry.registry().styleWithContext(context).adminFormStyle().groupTitle(context, 'Font header 2')
                ));

        children.add(

                DropdownButtonComponentFactory().createNew(appId: appId, id: "fonts", value: _h2, trigger: _onH2Selected, optional: true),
          );


        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry().styleWithContext(context).adminFormStyle().divider(context));


         children.add(Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: StyleRegistry.registry().styleWithContext(context).adminFormStyle().groupTitle(context, 'Font header 3')
                ));

        children.add(

                DropdownButtonComponentFactory().createNew(appId: appId, id: "fonts", value: _h3, trigger: _onH3Selected, optional: true),
          );


        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry().styleWithContext(context).adminFormStyle().divider(context));


         children.add(Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: StyleRegistry.registry().styleWithContext(context).adminFormStyle().groupTitle(context, 'Font header 4')
                ));

        children.add(

                DropdownButtonComponentFactory().createNew(appId: appId, id: "fonts", value: _h4, trigger: _onH4Selected, optional: true),
          );


        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry().styleWithContext(context).adminFormStyle().divider(context));


         children.add(Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: StyleRegistry.registry().styleWithContext(context).adminFormStyle().groupTitle(context, 'Font header 5')
                ));

        children.add(

                DropdownButtonComponentFactory().createNew(appId: appId, id: "fonts", value: _h5, trigger: _onH5Selected, optional: true),
          );


        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry().styleWithContext(context).adminFormStyle().divider(context));


         children.add(Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: StyleRegistry.registry().styleWithContext(context).adminFormStyle().groupTitle(context, 'Font header 5')
                ));

        children.add(

                DropdownButtonComponentFactory().createNew(appId: appId, id: "fonts", value: _textFieldHeader, trigger: _onTextFieldHeaderSelected, optional: true),
          );

        children.add(

                DropdownButtonComponentFactory().createNew(appId: appId, id: "fonts", value: _fontText, trigger: _onFontTextSelected, optional: true),
          );

        children.add(

                DropdownButtonComponentFactory().createNew(appId: appId, id: "fonts", value: _fontSmallText, trigger: _onFontSmallTextSelected, optional: true),
          );


        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry().styleWithContext(context).adminFormStyle().divider(context));


         children.add(Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: StyleRegistry.registry().styleWithContext(context).adminFormStyle().groupTitle(context, 'Font highlight 1')
                ));

        children.add(

                DropdownButtonComponentFactory().createNew(appId: appId, id: "fonts", value: _fontHighlight1, trigger: _onFontHighlight1Selected, optional: true),
          );


        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry().styleWithContext(context).adminFormStyle().divider(context));


         children.add(Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: StyleRegistry.registry().styleWithContext(context).adminFormStyle().groupTitle(context, 'Font hightlight 2')
                ));

        children.add(

                DropdownButtonComponentFactory().createNew(appId: appId, id: "fonts", value: _fontHighlight2, trigger: _onFontHighlight2Selected, optional: true),
          );


        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry().styleWithContext(context).adminFormStyle().divider(context));


         children.add(Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: StyleRegistry.registry().styleWithContext(context).adminFormStyle().groupTitle(context, 'Font Link')
                ));


        children.add(Container(height: 20.0));
        children.add(StyleRegistry.registry().styleWithContext(context).adminFormStyle().divider(context));


        if ((formAction != FormAction.ShowData) && (formAction != FormAction.ShowPreloadedData))
          children.add(StyleRegistry.registry().styleWithContext(context).adminFormStyle().button(context, label: 'Submit',
                  onPressed: _readOnly(accessState, state) ? null : () {
                    if (state is MonaStyleAttributesFormError) {
                      return null;
                    } else {
                      if (formAction == FormAction.UpdateAction) {
                        BlocProvider.of<MonaStyleAttributesListBloc>(context).add(
                          UpdateMonaStyleAttributesList(value: state.value!.copyWith(
                              documentID: state.value!.documentID, 
                              description: state.value!.description, 
                              formSubmitButtonColor: state.value!.formSubmitButtonColor, 
                              formBackground: state.value!.formBackground, 
                              appBackground: state.value!.appBackground, 
                              formSubmitButtonTextColor: state.value!.formSubmitButtonTextColor, 
                              formGroupTitleColor: state.value!.formGroupTitleColor, 
                              formFieldTextColor: state.value!.formFieldTextColor, 
                              formFieldHeaderColor: state.value!.formFieldHeaderColor, 
                              formFieldFocusColor: state.value!.formFieldFocusColor, 
                              listBackground: state.value!.listBackground, 
                              listTextItemColor: state.value!.listTextItemColor, 
                              floatingButtonForegroundColor: state.value!.floatingButtonForegroundColor, 
                              floatingButtonBackgroundColor: state.value!.floatingButtonBackgroundColor, 
                              dividerColor: state.value!.dividerColor, 
                              appBarBG: state.value!.appBarBG, 
                              appBarIconColor: state.value!.appBarIconColor, 
                              appBarSelectedIconColor: state.value!.appBarSelectedIconColor, 
                              appBarMenuBackgroundColor: state.value!.appBarMenuBackgroundColor, 
                              bottomNavigationBarBG: state.value!.bottomNavigationBarBG, 
                              drawerBG: state.value!.drawerBG, 
                              drawerHeaderBG: state.value!.drawerHeaderBG, 
                              profileDrawerBG: state.value!.profileDrawerBG, 
                              profileDrawerHeaderBG: state.value!.profileDrawerHeaderBG, 
                              backgroundHomeMenu: state.value!.backgroundHomeMenu, 
                              backgroundColorHomeMenu: state.value!.backgroundColorHomeMenu, 
                              iconColorHomeMenu: state.value!.iconColorHomeMenu, 
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
                        )));
                      } else {
                        BlocProvider.of<MonaStyleAttributesListBloc>(context).add(
                          AddMonaStyleAttributesList(value: MonaStyleAttributesModel(
                              documentID: state.value!.documentID, 
                              description: state.value!.description, 
                              formSubmitButtonColor: state.value!.formSubmitButtonColor, 
                              formBackground: state.value!.formBackground, 
                              appBackground: state.value!.appBackground, 
                              formSubmitButtonTextColor: state.value!.formSubmitButtonTextColor, 
                              formGroupTitleColor: state.value!.formGroupTitleColor, 
                              formFieldTextColor: state.value!.formFieldTextColor, 
                              formFieldHeaderColor: state.value!.formFieldHeaderColor, 
                              formFieldFocusColor: state.value!.formFieldFocusColor, 
                              listBackground: state.value!.listBackground, 
                              listTextItemColor: state.value!.listTextItemColor, 
                              floatingButtonForegroundColor: state.value!.floatingButtonForegroundColor, 
                              floatingButtonBackgroundColor: state.value!.floatingButtonBackgroundColor, 
                              dividerColor: state.value!.dividerColor, 
                              appBarBG: state.value!.appBarBG, 
                              appBarIconColor: state.value!.appBarIconColor, 
                              appBarSelectedIconColor: state.value!.appBarSelectedIconColor, 
                              appBarMenuBackgroundColor: state.value!.appBarMenuBackgroundColor, 
                              bottomNavigationBarBG: state.value!.bottomNavigationBarBG, 
                              drawerBG: state.value!.drawerBG, 
                              drawerHeaderBG: state.value!.drawerHeaderBG, 
                              profileDrawerBG: state.value!.profileDrawerBG, 
                              profileDrawerHeaderBG: state.value!.profileDrawerHeaderBG, 
                              backgroundHomeMenu: state.value!.backgroundHomeMenu, 
                              backgroundColorHomeMenu: state.value!.backgroundColorHomeMenu, 
                              iconColorHomeMenu: state.value!.iconColorHomeMenu, 
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
                          )));
                      }
                      if (widget.submitAction != null) {
                        eliudrouter.Router.navigateTo(context, widget.submitAction!);
                      } else {
                        Navigator.pop(context);
                      }
                    }
                  },
                ));

        return StyleRegistry.registry().styleWithContext(context).adminFormStyle().container(context, Form(
            child: ListView(
              padding: const EdgeInsets.all(8),
              physics: ((formAction == FormAction.ShowData) || (formAction == FormAction.ShowPreloadedData)) ? NeverScrollableScrollPhysics() : null,
              shrinkWrap: ((formAction == FormAction.ShowData) || (formAction == FormAction.ShowPreloadedData)),
              children: children as List<Widget>
            ),
          ), formAction!
        );
      } else {
        return StyleRegistry.registry().styleWithContext(context).adminListStyle().progressIndicator(context);
      }
    });
  }

  void _onDocumentIDChanged() {
    _myFormBloc.add(ChangedMonaStyleAttributesDocumentID(value: _documentIDController.text));
  }


  void _onDescriptionChanged() {
    _myFormBloc.add(ChangedMonaStyleAttributesDescription(value: _descriptionController.text));
  }


  void _onFormSubmitButtonColorChanged(value) {
    _myFormBloc.add(ChangedMonaStyleAttributesFormSubmitButtonColor(value: value));
    
  }


  void _onFormBackgroundSelected(String? val) {
    setState(() {
      _formBackground = val;
    });
    _myFormBloc.add(ChangedMonaStyleAttributesFormBackground(value: val));
  }


  void _onAppBackgroundSelected(String? val) {
    setState(() {
      _appBackground = val;
    });
    _myFormBloc.add(ChangedMonaStyleAttributesAppBackground(value: val));
  }


  void _onFormSubmitButtonTextColorChanged(value) {
    _myFormBloc.add(ChangedMonaStyleAttributesFormSubmitButtonTextColor(value: value));
    
  }


  void _onFormGroupTitleColorChanged(value) {
    _myFormBloc.add(ChangedMonaStyleAttributesFormGroupTitleColor(value: value));
    
  }


  void _onFormFieldTextColorChanged(value) {
    _myFormBloc.add(ChangedMonaStyleAttributesFormFieldTextColor(value: value));
    
  }


  void _onFormFieldHeaderColorChanged(value) {
    _myFormBloc.add(ChangedMonaStyleAttributesFormFieldHeaderColor(value: value));
    
  }


  void _onFormFieldFocusColorChanged(value) {
    _myFormBloc.add(ChangedMonaStyleAttributesFormFieldFocusColor(value: value));
    
  }


  void _onListBackgroundSelected(String? val) {
    setState(() {
      _listBackground = val;
    });
    _myFormBloc.add(ChangedMonaStyleAttributesListBackground(value: val));
  }


  void _onListTextItemColorChanged(value) {
    _myFormBloc.add(ChangedMonaStyleAttributesListTextItemColor(value: value));
    
  }


  void _onFloatingButtonForegroundColorChanged(value) {
    _myFormBloc.add(ChangedMonaStyleAttributesFloatingButtonForegroundColor(value: value));
    
  }


  void _onFloatingButtonBackgroundColorChanged(value) {
    _myFormBloc.add(ChangedMonaStyleAttributesFloatingButtonBackgroundColor(value: value));
    
  }


  void _onDividerColorChanged(value) {
    _myFormBloc.add(ChangedMonaStyleAttributesDividerColor(value: value));
    
  }


  void _onAppBarBGSelected(String? val) {
    setState(() {
      _appBarBG = val;
    });
    _myFormBloc.add(ChangedMonaStyleAttributesAppBarBG(value: val));
  }


  void _onAppBarIconColorChanged(value) {
    _myFormBloc.add(ChangedMonaStyleAttributesAppBarIconColor(value: value));
    
  }


  void _onAppBarSelectedIconColorChanged(value) {
    _myFormBloc.add(ChangedMonaStyleAttributesAppBarSelectedIconColor(value: value));
    
  }


  void _onAppBarMenuBackgroundColorChanged(value) {
    _myFormBloc.add(ChangedMonaStyleAttributesAppBarMenuBackgroundColor(value: value));
    
  }


  void _onBottomNavigationBarBGSelected(String? val) {
    setState(() {
      _bottomNavigationBarBG = val;
    });
    _myFormBloc.add(ChangedMonaStyleAttributesBottomNavigationBarBG(value: val));
  }


  void _onDrawerBGSelected(String? val) {
    setState(() {
      _drawerBG = val;
    });
    _myFormBloc.add(ChangedMonaStyleAttributesDrawerBG(value: val));
  }


  void _onDrawerHeaderBGSelected(String? val) {
    setState(() {
      _drawerHeaderBG = val;
    });
    _myFormBloc.add(ChangedMonaStyleAttributesDrawerHeaderBG(value: val));
  }


  void _onProfileDrawerBGSelected(String? val) {
    setState(() {
      _profileDrawerBG = val;
    });
    _myFormBloc.add(ChangedMonaStyleAttributesProfileDrawerBG(value: val));
  }


  void _onProfileDrawerHeaderBGSelected(String? val) {
    setState(() {
      _profileDrawerHeaderBG = val;
    });
    _myFormBloc.add(ChangedMonaStyleAttributesProfileDrawerHeaderBG(value: val));
  }


  void _onBackgroundHomeMenuSelected(String? val) {
    setState(() {
      _backgroundHomeMenu = val;
    });
    _myFormBloc.add(ChangedMonaStyleAttributesBackgroundHomeMenu(value: val));
  }


  void _onBackgroundColorHomeMenuChanged(value) {
    _myFormBloc.add(ChangedMonaStyleAttributesBackgroundColorHomeMenu(value: value));
    
  }


  void _onIconColorHomeMenuChanged(value) {
    _myFormBloc.add(ChangedMonaStyleAttributesIconColorHomeMenu(value: value));
    
  }


  void _onH1Selected(String? val) {
    setState(() {
      _h1 = val;
    });
    _myFormBloc.add(ChangedMonaStyleAttributesH1(value: val));
  }


  void _onH2Selected(String? val) {
    setState(() {
      _h2 = val;
    });
    _myFormBloc.add(ChangedMonaStyleAttributesH2(value: val));
  }


  void _onH3Selected(String? val) {
    setState(() {
      _h3 = val;
    });
    _myFormBloc.add(ChangedMonaStyleAttributesH3(value: val));
  }


  void _onH4Selected(String? val) {
    setState(() {
      _h4 = val;
    });
    _myFormBloc.add(ChangedMonaStyleAttributesH4(value: val));
  }


  void _onH5Selected(String? val) {
    setState(() {
      _h5 = val;
    });
    _myFormBloc.add(ChangedMonaStyleAttributesH5(value: val));
  }


  void _onTextFieldHeaderSelected(String? val) {
    setState(() {
      _textFieldHeader = val;
    });
    _myFormBloc.add(ChangedMonaStyleAttributesTextFieldHeader(value: val));
  }


  void _onFontTextSelected(String? val) {
    setState(() {
      _fontText = val;
    });
    _myFormBloc.add(ChangedMonaStyleAttributesFontText(value: val));
  }


  void _onFontSmallTextSelected(String? val) {
    setState(() {
      _fontSmallText = val;
    });
    _myFormBloc.add(ChangedMonaStyleAttributesFontSmallText(value: val));
  }


  void _onFontHighlight1Selected(String? val) {
    setState(() {
      _fontHighlight1 = val;
    });
    _myFormBloc.add(ChangedMonaStyleAttributesFontHighlight1(value: val));
  }


  void _onFontHighlight2Selected(String? val) {
    setState(() {
      _fontHighlight2 = val;
    });
    _myFormBloc.add(ChangedMonaStyleAttributesFontHighlight2(value: val));
  }


  void _onFontLinkSelected(String? val) {
    setState(() {
      _fontLink = val;
    });
    _myFormBloc.add(ChangedMonaStyleAttributesFontLink(value: val));
  }



  @override
  void dispose() {
    _documentIDController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  bool _readOnly(AccessState accessState, MonaStyleAttributesFormInitialized state) {
    return (formAction == FormAction.ShowData) || (formAction == FormAction.ShowPreloadedData) || (!accessState.memberIsOwner(AccessBloc.currentAppId(context)));
  }
  

}




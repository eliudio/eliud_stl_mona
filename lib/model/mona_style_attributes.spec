{
  "id": "MonaStyleAttributes",
  "packageName": "eliud_stl_mona",
  "packageFriendlyName": "mona-style",
  "isAppModel": true,
  "generate": {
    "generateComponent": true,
    "generateRepository": true,
    "generateCache": true,
    "generateFirestoreRepository": true,
    "generateRepositorySingleton": true,
    "generateModel": true,
    "generateEntity": true,
    "generateForm": true,
    "generateList": true,
    "generateDropDownButton": true,
    "generateInternalComponent": true,
    "generateEmbeddedComponent": false,
    "documentSubCollectionOf": "app"
  },
  "fields": [
    {
      "fieldName": "documentID",
      "required": true,
      "displayName": "Document ID",
      "fieldType": "String",
      "iconName": "vpn_key",
      "group": "general"
    },
    {
      "fieldName": "appId",
      "required": true,
      "displayName": "App ID",
      "fieldType": "String",
      "iconName": "vpn_key",
      "hidden": true,
      "group": "general"
    },
    {
      "fieldName": "formBackground",
      "remark": "Background of forms in admin section",
      "displayName": "Form Background",
      "fieldType": "Background",
      "optional": true,
      "group": "formBackground"
    },
    {
      "fieldName": "appBackground",
      "remark": "Background of pages in app",
      "displayName": "Form Background",
      "fieldType": "Background",
      "optional": true,
      "group": "formBackground"
    },
    {
      "fieldName": "formGroupTitleColor",
      "displayName": "Form Group Title Color",
      "defaultValue": "RgbModel(r: 255, g: 0, b: 0, opacity: 1.00)",
      "fieldType": "Rgb",
      "group": "formColors",
      "iconName": "color_lens",
      "bespokeFormField": "RgbField(widget.app, \"Form Group Title Color\", state.value!.formGroupTitleColor, _onFormGroupTitleColorChanged)"
    },
    {
      "fieldName": "formFieldTextColor",
      "displayName": "Form Field Text Color",
      "defaultValue": "RgbModel(r: 255, g: 255, b: 255, opacity: 1.00)",
      "fieldType": "Rgb",
      "group": "formColors",
      "iconName": "color_lens",
      "bespokeFormField": "RgbField(widget.app, \"Form Field Text Color\", state.value!.formFieldTextColor, _onFormFieldTextColorChanged)"
    },
    {
      "fieldName": "formFieldHeaderColor",
      "displayName": "Form Field Header Color",
      "defaultValue": "RgbModel(r: 255, g: 0, b: 0, opacity: 1.00)",
      "fieldType": "Rgb",
      "group": "otherColors",
      "iconName": "color_lens",
      "bespokeFormField": "RgbField(widget.app, \"Form Field Header Color\", state.value!.formFieldHeaderColor, _onFormFieldHeaderColorChanged)"
    },
    {
      "fieldName": "formFieldFocusColor",
      "displayName": "Form Field Focus Color",
      "defaultValue": "RgbModel(r: 255, g: 0, b: 0, opacity: 1.00)",
      "fieldType": "Rgb",
      "group": "formColors",
      "iconName": "color_lens",
      "bespokeFormField": "RgbField(widget.app, \"Form Field Focus Color\", state.value!.formFieldFocusColor, _onFormFieldFocusColorChanged)"
    },
    {
      "fieldName": "listBackground",
      "remark": "Background of list in admin section",
      "displayName": "List Background",
      "fieldType": "Background",
      "optional": true,
      "group": "listBackground"
    },
    {
      "fieldName": "listTextItemColor",
      "displayName": "List Item Text Color",
      "defaultValue": "RgbModel(r: 255, g: 255, b: 255, opacity: 1.00)",
      "fieldType": "Rgb",
      "group": "listColors",
      "iconName": "color_lens",
      "bespokeFormField": "RgbField(widget.app, \"List Item Text Color\", state.value!.listTextItemColor, _onListTextItemColorChanged)"
    },
    {
      "fieldName": "floatingButtonForegroundColor",
      "displayName": "Floating Button Foreground Color",
      "defaultValue": "RgbModel(r: 255, g: 255, b: 255, opacity: 1.00)",
      "fieldType": "Rgb",
      "group": "floatingbuttonColors",
      "iconName": "color_lens",
      "bespokeFormField": "RgbField(widget.app, \"List Item Text Color\", state.value!.floatingButtonForegroundColor, _onFloatingButtonForegroundColorChanged)"
    },
    {
      "fieldName": "floatingButtonBackgroundColor",
      "displayName": "Floating Button Background Color",
      "defaultValue": "RgbModel(r: 255, g: 0, b: 255, opacity: 1.00)",
      "fieldType": "Rgb",
      "group": "floatingbuttonColors",
      "iconName": "color_lens",
      "bespokeFormField": "RgbField(widget.app, \"List Item Text Color\", state.value!.floatingButtonBackgroundColor, _onFloatingButtonBackgroundColorChanged)"
    },
    {
      "fieldName": "dividerColor",
      "displayName": "Divider Color",
      "defaultValue": "RgbModel(r: 255, g: 0, b: 0, opacity: 1.00)",
      "fieldType": "Rgb",
      "group": "otherColors",
      "iconName": "color_lens",
      "bespokeFormField": "RgbField(widget.app, \"Divider Color\", state.value!.dividerColor, _onDividerColorChanged)"
    },
    {
      "fieldName": "topicContainerBackground",
      "remark": "Background for topic container",
      "displayName": "Topic Background",
      "fieldType": "Background",
      "optional": true
    },
    {
      "fieldName": "actionContainerBackground",
      "remark": "Background for action container",
      "displayName": "Action Background",
      "fieldType": "Background",
      "optional": true
    },
    {
      "fieldName": "appBarBG",
      "displayName": "AppBar Background",
      "fieldType": "Background",
      "optional": true,
      "group": "appBarBackground"
    },
    {
      "fieldName": "appBarIconColor",
      "displayName": "Icon Color",
      "defaultValue": "RgbModel(r: 255, g: 255, b: 255, opacity: 1.00)",
      "fieldType": "Rgb",
      "group": "iconColors",
      "iconName": "color_lens",
      "bespokeFormField": "RgbField(widget.app, \"Text color\", state.value!.appBarIconColor, _onAppBarIconColorChanged)"
    },
    {
      "fieldName": "appBarSelectedIconColor",
      "displayName": "Selected Icon Color",
      "fieldType": "Rgb",
      "group": "iconColors",
      "iconName": "color_lens",
      "defaultValue": "RgbModel(r: 255, g: 255, b: 255, opacity: 1.00)",
      "bespokeFormField": "RgbField(widget.app, \"Selected Icon Color\", state.value!.appBarSelectedIconColor, _onAppBarSelectedIconColorChanged)"
    },
    {
      "fieldName": "appBarMenuBackgroundColor",
      "displayName": "Background Color",
      "defaultValue": "RgbModel(r: 64, g: 6, b: 64, opacity: 1.00)",
      "fieldType": "Rgb",
      "group": "menuColors",
      "iconName": "color_lens",
      "bespokeFormField": "RgbField(widget.app, \"AppBar Menu Background Color\", state.value!.appBarMenuBackgroundColor, _onAppBarMenuBackgroundColorChanged)"
    },
    {
      "fieldName": "bottomNavigationBarBG",
      "displayName": "Bottom NavigationBar Background",
      "fieldType": "Background",
      "optional": true,
      "group": "bottomNavigationBarBG"
    },
    {
      "fieldName": "drawerBG",
      "displayName": "Left Drawer Background",
      "fieldType": "Background",
      "optional": true,
      "group": "drawerBarBackground"
    },
    {
      "fieldName": "drawerHeaderBG",
      "displayName": "Left Drawer Header Background",
      "fieldType": "Background",
      "optional": true,
      "group": "drawerBarBackground"
    },
    {
      "fieldName": "profileDrawerBG",
      "displayName": "Right Drawer Background",
      "fieldType": "Background",
      "optional": true,
      "group": "drawerBarBackground"
    },
    {
      "fieldName": "profileDrawerHeaderBG",
      "displayName": "Right Drawer Header Background",
      "fieldType": "Background",
      "optional": true,
      "group": "drawerBarBackground"
    },
    {
      "fieldName": "backgroundColorHomeMenu",
      "displayName": "Popup Menu Background Color Override",
      "fieldType": "Rgb",
      "group": "popupMenuBackgroundColor",
      "iconName": "color_lens",
      "defaultValue": "RgbModel(r: 255, g: 255, b: 255, opacity: 1.00)",
      "bespokeFormField": "RgbField(widget.app, \"Background Color Home Menu\", state.value!.backgroundColorHomeMenu, _onBackgroundColorHomeMenuChanged)"
    },
    {
      "fieldName": "h1",
      "displayName": "Font header 1",
      "fieldType": "Font",
      "optional": true,
      "group": "fontH1"
    },
    {
      "fieldName": "h2",
      "displayName": "Font header 2",
      "fieldType": "Font",
      "optional": true,
      "group": "fontH2"
    },
    {
      "fieldName": "h3",
      "displayName": "Font header 3",
      "fieldType": "Font",
      "optional": true,
      "group": "fontH3"
    },
    {
      "fieldName": "h4",
      "displayName": "Font header 4",
      "fieldType": "Font",
      "optional": true,
      "group": "fontH4"
    },
    {
      "fieldName": "h5",
      "displayName": "Font header 5",
      "fieldType": "Font",
      "optional": true,
      "group": "fontH5"
    },
    {
      "fieldName": "textFieldHeader",
      "displayName": "Text Field Header Font Text",
      "fieldType": "Font",
      "optional": true,
      "group": "fontText"
    },
    {
      "fieldName": "fontText",
      "displayName": "Font Text",
      "fieldType": "Font",
      "optional": true,
      "group": "fontText"
    },
    {
      "fieldName": "fontSmallText",
      "displayName": "Font Small Text",
      "fieldType": "Font",
      "optional": true,
      "group": "fontText"
    },
    {
      "fieldName": "fontHighlight1",
      "displayName": "Font Bold Text",
      "fieldType": "Font",
      "optional": true,
      "group": "fontHighlight1"
    },
    {
      "fieldName": "fontHighlight2",
      "displayName": "Font Bold Text",
      "fieldType": "Font",
      "optional": true,
      "group": "fontHighlight2"
    },
    {
      "fieldName": "fontLink",
      "displayName": "Font Link",
      "fieldType": "Font",
      "optional": true,
      "group": "fontLink"
    },
    {
      "fieldName": "routeBuilder",
      "displayName": "Page Route Builder",
      "fieldType": "enum",
      "enumName": "PageTransitionAnimation",
      "enumValues" : [ "slideRightToLeft", "slideBottomToTop", "scaleRoute", "rotationRoute", "fadeRoute" ],
      "group": "route"
    },
    {
      "fieldName": "routeAnimationDuration",
      "displayName": "Page Animation (millisec)",
      "fieldType": "int",
      "defaultValue": "1000",
      "group": "route"
    },
    {
      "fieldName": "dialogBackgroundColor",
      "displayName": "Dialog BG Color",
      "defaultValue": "RgbModel(r: 255, g: 0, b: 0, opacity: 1.00)",
      "fieldType": "Rgb",
      "group": "formColors",
      "iconName": "color_lens",
      "bespokeFormField": "RgbField(widget.app, \"Form Group Title Color\", state.value!.dialogBackgroundColor, _onDialogBackgroundColorChanged)"
    },
    {
      "fieldName": "dialogSeperatorColor",
      "displayName": "Dialog BG Color",
      "defaultValue": "RgbModel(r: 255, g: 0, b: 0, opacity: 1.00)",
      "fieldType": "Rgb",
      "group": "formColors",
      "iconName": "color_lens",
      "bespokeFormField": "RgbField(widget.app, \"Form Group Title Color\", state.value!.dialogSeperatorColor, _onDialogSeperatorColorChanged)"
    },
    {
      "fieldName": "popupMenuButtonColor",
      "displayName": "Dialog BG Color",
      "defaultValue": "RgbModel(r: 255, g: 0, b: 0, opacity: 1.00)",
      "fieldType": "Rgb",
      "group": "formColors",
      "iconName": "color_lens",
      "bespokeFormField": "RgbField(widget.app, \"Form Group Title Color\", state.value!.popupMenuButtonColor, _onPopupMenuButtonColorChanged)"
    },
    {
      "fieldName": "textBubbleBackgroundColor",
      "displayName": "Dialog BG Color",
      "defaultValue": "RgbModel(r: 255, g: 0, b: 0, opacity: 1.00)",
      "fieldType": "Rgb",
      "group": "formColors",
      "iconName": "color_lens",
      "bespokeFormField": "RgbField(widget.app, \"Form Group Title Color\", state.value!.textBubbleBackgroundColor, _onTextBubbleBackgroundColorChanged)"
    },
    {
      "fieldName": "dropdownButtonnColor",
      "displayName": "Dialog BG Color",
      "defaultValue": "RgbModel(r: 255, g: 0, b: 0, opacity: 1.00)",
      "fieldType": "Rgb",
      "group": "formColors",
      "iconName": "color_lens",
      "bespokeFormField": "RgbField(widget.app, \"Form Group Title Color\", state.value!.dropdownButtonnColor, _onDropdownButtonnColorChanged)"
    },
    {
      "fieldName": "listTileColor",
      "displayName": "List Tile Color",
      "defaultValue": "RgbModel(r: 255, g: 0, b: 0, opacity: 1.00)",
      "fieldType": "Rgb",
      "group": "formColors",
      "iconName": "color_lens",
      "bespokeFormField": "RgbField(widget.app, \"List Title Color\", state.value!.listTileColor, _onListTileColorChanged)"
    }
  ],
  "groups": [
    {
        "group": "general",
        "description": "General"
    },
    {
        "group": "formColors",
        "description": "Form Colors"
    },
    {
        "group": "listColors",
        "description": "List Items Colors"
    },
    {
        "group": "floatingbuttonColors",
        "description": "Floating Button Colors"
    },
    {
        "group": "otherColors",
        "description": "Other Colors"
    },
    {
        "group": "formBackground",
        "description": "Background forms"
    },
    {
        "group": "appBarBackground",
        "description": "AppBar Background"
    },
    {
        "group": "listBackground",
        "description": "List Background"
    },
    {
        "group": "fontH1",
        "description": "Font header 1"
    },
    {
        "group": "fontH2",
        "description": "Font header 2"
    },
    {
        "group": "fontH3",
        "description": "Font header 3"
    },
    {
        "group": "fontH4",
        "description": "Font header 4"
    },
    {
        "group": "fontH5",
        "description": "Font header 5"
    },
    {
        "group": "fontText",
        "description": "Font header 5"
    },
    {
        "group": "fontHighlight1",
        "description": "Font highlight 1"
    },
    {
        "group": "fontHighlight2",
        "description": "Font hightlight 2"
    },
    {
        "group": "linkFont",
        "description": "Font Link"
    }
  ],
  "listFields": {
    "title": "Center(child: StyleRegistry.registry().styleWithApp(app).frontEndStyle().textStyle().text(app, context, value.documentID))"
  },
  "depends": ["eliud_core_model"]
}
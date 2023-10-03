import 'package:eliud_core/model/app_model.dart';
import 'package:eliud_core/style/_default/frontend/helper/dialog/dialog_field.dart';
import 'package:eliud_core/style/_default/frontend/helper/dialog/dialog_helper.dart';
import 'package:eliud_core/style/frontend/has_dialog_widget.dart';
import 'package:eliud_core/style/frontend/types.dart';
import 'package:eliud_core/style/style.dart';
import 'package:eliud_core/tools/screen_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../styles/mona_style.dart';

class MonaDialogWidgetImpl implements HasDialogWidget {
  final MonaStyle _style;
  late DialogStateHelper dialogHelper;

  MonaDialogWidgetImpl(this._style) {
    dialogHelper = DialogStateHelper();
  }

  @override
  Widget messageDialog(AppModel app,
    BuildContext context, {
    Key? key,
    bool? includeHeading,
    required String title,
    required String message,
    String? closeLabel,
    double? widthFraction, // percentage of screen width
  }) {
    return dialogHelper.build(app, context,
        width: widthFraction == null
            ? null
            : fullScreenWidth(context) * widthFraction,
        key: key,
        includeHeading: includeHeading,
        title: title,
        dialogButtonPosition: DialogButtonPosition.TopRight,
        contents: _style.frontEndStyle().textStyle().text(app, context, message),
        buttons: dialogHelper.getCloseButton(app, context,
            onPressed: () => Navigator.pop(context), buttonLabel: closeLabel),
        dialogBackgroundColor: _style.monaStyleAttributesModel.dialogBackgroundColor,
        dialogSeperatorColor: _style.monaStyleAttributesModel.dialogSeperatorColor,
    );
  }

  @override
  Widget errorDialog(AppModel app,
    BuildContext context, {
    Key? key,
    bool? includeHeading,
    required String title,
    required String errorMessage,
    String? closeLabel,
    double? widthFraction, // percentage of screen width
  }) {
    return dialogHelper.build(app, context,
        width: widthFraction == null
            ? null
            : fullScreenWidth(context) * widthFraction,
        key: key,
        includeHeading: includeHeading,
        title: title,
        contents:
            _style.frontEndStyle().textStyle().text(app, context, errorMessage),
        dialogButtonPosition: DialogButtonPosition.TopRight,
        buttons: dialogHelper.getCloseButton(app, context,
            buttonLabel: closeLabel, onPressed: () => Navigator.pop(context)),
        dialogBackgroundColor: _style.monaStyleAttributesModel.dialogBackgroundColor,
        dialogSeperatorColor: _style.monaStyleAttributesModel.dialogSeperatorColor,
    );
  }

  @override
  Widget ackNackDialog(AppModel app,
    BuildContext context, {
    Key? key,
    bool? includeHeading,
    required String title,
    required String message,
    required OnSelection onSelection,
    String? ackButtonLabel,
    String? nackButtonLabel,
    double? widthFraction, // percentage of screen width
  }) {
    return dialogHelper.build(app, context,
        width: widthFraction == null
            ? null
            : fullScreenWidth(context) * widthFraction,
        key: key,
        includeHeading: includeHeading,
        dialogButtonPosition: DialogButtonPosition.TopRight,
        title: title,
        contents: _style.frontEndStyle().textStyle().text(app, context, message),
        buttons: dialogHelper.getAckNackButtons(app, context, ackFunction: () {
          Navigator.of(context).pop();
          onSelection(0);
        }, nackFunction: () {
          Navigator.of(context).pop();
          onSelection(1);
        }, ackButtonLabel: ackButtonLabel, nackButtonLabel: nackButtonLabel),
      dialogBackgroundColor: _style.monaStyleAttributesModel.dialogBackgroundColor,
      dialogSeperatorColor: _style.monaStyleAttributesModel.dialogSeperatorColor,
    );
  }

  @override
  Widget entryDialog(AppModel app,
    BuildContext context, {
    Key? key,
    bool? includeHeading,
    required String title,
    String? ackButtonLabel,
    String? nackButtonLabel,
    String? hintText,
    required Function(String? response) onPressed,
    String? initialValue,
    double? widthFraction, // percentage of screen width
  }) {
    String? feedback;
    return dialogHelper.build(app, context,
        width: widthFraction == null
            ? null
            : fullScreenWidth(context) * widthFraction,
        key: key,
        includeHeading: includeHeading,
        dialogButtonPosition: DialogButtonPosition.TopRight,
        title: title,
        contents: dialogHelper.getListTile(
            leading: Icon(Icons.message),
            title: DialogField(app: app,
              valueChanged: (value) => feedback = value,
              initialValue: initialValue,
              decoration: InputDecoration(
                hintText: hintText,
                labelText: hintText,
              ),
            )),
        buttons: dialogHelper.getAckNackButtons(app,
          context,
          ackFunction: () {
            Navigator.of(context).pop();
            onPressed(feedback);
          },
          nackFunction: () {
            Navigator.of(context).pop();
            onPressed(null);
          },
          ackButtonLabel: ackButtonLabel,
          nackButtonLabel: nackButtonLabel,
        ),
      dialogBackgroundColor: _style.monaStyleAttributesModel.dialogBackgroundColor,
      dialogSeperatorColor: _style.monaStyleAttributesModel.dialogSeperatorColor,
    );
  }

/*
  =>
      RequestValueDialog(
        _monaStyle.frontEndStyle(),
        title: title,
        ackButtonLabel: ackButtonLabel,
        nackButtonLabel: nackButtonLabel,
        hintText: hintText,
        onPressed: (value) {
          Navigator.of(context).pop();
          onPressed(value);
        },
        initialValue: initialValue,
        dialogButtonPosition: DialogButtonPosition.TopRight,
      );
*/

  @override
  Widget selectionDialog(AppModel app,
    BuildContext context, {
    required String title,
    bool? includeHeading,
    Key? key,
    required List<String> options,
    required OnSelection onSelection,
    String? buttonLabel,
    double? widthFraction, // percentage of screen width
  }) {
    return dialogHelper.build(app, context,
        width: widthFraction == null
            ? null
            : fullScreenWidth(context) * widthFraction,
        key: key,
        includeHeading: includeHeading,
        dialogButtonPosition: DialogButtonPosition.TopRight,
        title: title,
        buttons: dialogHelper.getCloseButton(app, context, onPressed: () {
          Navigator.of(context).pop();
        }),
        contents: ListView.builder(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            itemCount: options.length,
            itemBuilder: (context, i) {
              return _style.frontEndStyle().buttonStyle().dialogButton(app,
                context,
                label: options[i],
                onPressed: () {
                  onSelection(i);
                  Navigator.of(context).pop();
                },
              );
            }),
      dialogBackgroundColor: _style.monaStyleAttributesModel.dialogBackgroundColor,
      dialogSeperatorColor: _style.monaStyleAttributesModel.dialogSeperatorColor,
    );
  }

  @override
  Widget complexAckNackDialog(AppModel app,
    BuildContext context, {
    bool? includeHeading,
    Key? key,
    required String title,
    required Widget child,
    required OnSelection onSelection,
    String? ackButtonLabel,
    String? nackButtonLabel,
    double? widthFraction, // percentage of screen width
  }) {
    return dialogHelper.build(app, context,
        width: widthFraction == null
            ? null
            : fullScreenWidth(context) * widthFraction,
        key: key,
        includeHeading: includeHeading,
        title: title,
        dialogButtonPosition: DialogButtonPosition.TopRight,
        contents: child,
        buttons: dialogHelper.getAckNackButtons(app, context, ackFunction: () {
          Navigator.of(context).pop();
          onSelection(0);
        }, nackFunction: () {
          Navigator.of(context).pop();
          onSelection(1);
        }, ackButtonLabel: ackButtonLabel, nackButtonLabel: nackButtonLabel),
      dialogBackgroundColor: _style.monaStyleAttributesModel.dialogBackgroundColor,
      dialogSeperatorColor: _style.monaStyleAttributesModel.dialogSeperatorColor,
    );
  }

  @override
  Widget complexDialog(AppModel app,
    BuildContext context, {
    bool? includeHeading,
    Key? key,
    required String title,
    required Widget child,
    VoidCallback? onPressed,
    String? buttonLabel,
    double? widthFraction, // percentage of screen width
  }) {
    return dialogHelper.build(app, context,
        width: widthFraction == null
            ? null
            : fullScreenWidth(context) * widthFraction,
        key: key,
        includeHeading: includeHeading,
        title: title,
        dialogButtonPosition: DialogButtonPosition.TopRight,
        contents: child,
        buttons: dialogHelper.getCloseButton(app, context, onPressed: () {
          Navigator.of(context).pop();
          if (onPressed != null) {
            onPressed();
          }
        }, buttonLabel: buttonLabel),
        dialogBackgroundColor: _style.monaStyleAttributesModel.dialogBackgroundColor,
        dialogSeperatorColor: _style.monaStyleAttributesModel.dialogSeperatorColor,
    );
  }

  @override
  Widget flexibleDialog(AppModel app,
    BuildContext context, {
    Key? key,
    String? title,
    required Widget child,
    List<Widget>? buttons,
    bool? includeHeading,
    double? widthFraction, // percentage of screen width
  }) {
    return dialogHelper.build(app, context,
        width: widthFraction == null
            ? null
            : fullScreenWidth(context) * widthFraction,
        includeHeading: includeHeading,
        key: key,
        title: title,
        dialogButtonPosition: DialogButtonPosition.TopRight,
        contents: child,
        buttons: buttons,
        dialogBackgroundColor: _style.monaStyleAttributesModel.dialogBackgroundColor,
        dialogSeperatorColor: _style.monaStyleAttributesModel.dialogSeperatorColor,
    );
  }
}

import 'package:eliud_core/style/_default/frontend/helper/dialog/dialog_field.dart';
import 'package:eliud_core/style/_default/frontend/helper/dialog/dialog_helper.dart';
import 'package:eliud_core/style/frontend/has_dialog_widget.dart';
import 'package:eliud_core/style/frontend/types.dart';
import 'package:eliud_core/style/style.dart';
import 'package:eliud_core/tools/screen_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../mona_style.dart';

class MonaDialogWidgetImpl implements HasDialogWidget {
  final Style _style;
  late DialogStateHelper dialogHelper;

  MonaDialogWidgetImpl(this._style) {
    dialogHelper = DialogStateHelper();
  }

  @override
  Widget messageDialog(
    BuildContext context, {
    Key? key,
    bool? includeHeading,
    required String title,
    required String message,
    String? closeLabel,
    double? widthFraction, // percentage of screen width
  }) {
    return dialogHelper.build(context,
        width: widthFraction == null
            ? null
            : fullScreenWidth(context) * widthFraction,
        key: key,
        includeHeading: includeHeading,
        title: title,
        dialogButtonPosition: DialogButtonPosition.TopRight,
        contents: _style.frontEndStyle().textStyle().text(context, message),
        buttons: dialogHelper.getCloseButton(context,
            onPressed: () => Navigator.pop(context), buttonLabel: closeLabel));
  }

  @override
  Widget errorDialog(
    BuildContext context, {
    Key? key,
    bool? includeHeading,
    required String title,
    required String errorMessage,
    String? closeLabel,
    double? widthFraction, // percentage of screen width
  }) {
    return dialogHelper.build(context,
        width: widthFraction == null
            ? null
            : fullScreenWidth(context) * widthFraction,
        key: key,
        includeHeading: includeHeading,
        title: title,
        contents:
            _style.frontEndStyle().textStyle().text(context, errorMessage),
        dialogButtonPosition: DialogButtonPosition.TopRight,
        buttons: dialogHelper.getCloseButton(context,
            buttonLabel: closeLabel, onPressed: () => Navigator.pop(context)));
  }

  @override
  Widget ackNackDialog(
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
    return dialogHelper.build(context,
        width: widthFraction == null
            ? null
            : fullScreenWidth(context) * widthFraction,
        key: key,
        includeHeading: includeHeading,
        dialogButtonPosition: DialogButtonPosition.TopRight,
        title: title,
        contents: _style.frontEndStyle().textStyle().text(context, message),
        buttons: dialogHelper.getAckNackButtons(context, ackFunction: () {
          Navigator.of(context).pop();
          onSelection(0);
        }, nackFunction: () {
          Navigator.of(context).pop();
          onSelection(1);
        }, ackButtonLabel: ackButtonLabel, nackButtonLabel: nackButtonLabel));
  }

  @override
  Widget entryDialog(
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
    return dialogHelper.build(context,
        width: widthFraction == null
            ? null
            : fullScreenWidth(context) * widthFraction,
        key: key,
        includeHeading: includeHeading,
        dialogButtonPosition: DialogButtonPosition.TopRight,
        title: title,
        contents: dialogHelper.getListTile(
            leading: Icon(Icons.message),
            title: DialogField(
              valueChanged: (value) => feedback = value,
              initialValue: initialValue,
              decoration: InputDecoration(
                hintText: hintText,
                labelText: hintText,
              ),
            )),
        buttons: dialogHelper.getAckNackButtons(
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
        ));
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
  Widget selectionDialog(
    BuildContext context, {
    required String title,
    bool? includeHeading,
    Key? key,
    required List<String> options,
    required OnSelection onSelection,
    String? buttonLabel,
    double? widthFraction, // percentage of screen width
  }) {
    return dialogHelper.build(context,
        width: widthFraction == null
            ? null
            : fullScreenWidth(context) * widthFraction,
        key: key,
        includeHeading: includeHeading,
        dialogButtonPosition: DialogButtonPosition.TopRight,
        title: title,
        buttons: dialogHelper.getCloseButton(context, onPressed: () {
          Navigator.of(context).pop();
        }),
        contents: ListView.builder(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            itemCount: options.length,
            itemBuilder: (context, i) {
              return _style.frontEndStyle().buttonStyle().dialogButton(
                context,
                label: options[i],
                onPressed: () {
                  onSelection(i);
                  Navigator.of(context).pop();
                },
              );
            }));
  }

  @override
  Widget complexAckNackDialog(
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
    return dialogHelper.build(context,
        width: widthFraction == null
            ? null
            : fullScreenWidth(context) * widthFraction,
        key: key,
        includeHeading: includeHeading,
        title: title,
        dialogButtonPosition: DialogButtonPosition.TopRight,
        contents: child,
        buttons: dialogHelper.getAckNackButtons(context, ackFunction: () {
          Navigator.of(context).pop();
          onSelection(0);
        }, nackFunction: () {
          Navigator.of(context).pop();
          onSelection(1);
        }, ackButtonLabel: ackButtonLabel, nackButtonLabel: nackButtonLabel));
  }

  @override
  Widget complexDialog(
    BuildContext context, {
    bool? includeHeading,
    Key? key,
    required String title,
    required Widget child,
    VoidCallback? onPressed,
    String? buttonLabel,
    double? widthFraction, // percentage of screen width
  }) {
    return dialogHelper.build(context,
        width: widthFraction == null
            ? null
            : fullScreenWidth(context) * widthFraction,
        key: key,
        includeHeading: includeHeading,
        title: title,
        dialogButtonPosition: DialogButtonPosition.TopRight,
        contents: child,
        buttons: dialogHelper.getCloseButton(context, onPressed: () {
          Navigator.of(context).pop();
          if (onPressed != null) {
            onPressed();
          }
        }, buttonLabel: buttonLabel));
  }

  @override
  Widget flexibleDialog(
    BuildContext context, {
    Key? key,
    String? title,
    required Widget child,
    List<Widget>? buttons,
    bool? includeHeading,
    double? widthFraction, // percentage of screen width
  }) {
    return dialogHelper.build(context,
        width: widthFraction == null
            ? null
            : fullScreenWidth(context) * widthFraction,
        includeHeading: includeHeading,
        key: key,
        title: title,
        dialogButtonPosition: DialogButtonPosition.TopRight,
        contents: child,
        buttons: buttons,
    );
  }
}

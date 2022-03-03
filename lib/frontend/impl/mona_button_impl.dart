import 'package:eliud_core/model/app_model.dart';
import 'package:eliud_core/style/frontend/has_button.dart';
import 'package:eliud_core/style/style.dart';
import 'package:flutter/material.dart';

import '../../styles/mona_style.dart';

class MonaButtonImpl implements HasButton {
  final Style _style;

  MonaButtonImpl(this._style);

  @override
  Widget button(AppModel app,BuildContext context,
      {Icon? icon, required String label, VoidCallback? onPressed}) {
    if (icon != null) {
      return GestureDetector(
          onTap: onPressed,
          child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: _style
                  .frontEndStyle()
                  .containerStyle()
                  .actionContainer(app, context, child: icon)));
    } else {
      return GestureDetector(
          onTap: onPressed,
          child: _style.frontEndStyle().containerStyle().actionContainer(app,
              context,
              child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: FittedBox(fit: BoxFit.scaleDown, child:
                  _style
                      .frontEndStyle()
                      .textStyle()
                      .text(app, context, label)))));
    }
  }

  @override
  Widget dialogButton(AppModel app,BuildContext context,
      {VoidCallback? onPressed, required String label, bool? selected}) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        primary: Colors.pink,
      ),
      child: selected == null || selected == false
          ? _style.frontEndStyle().textStyle().text(app, context, label)
          : _style.frontEndStyle().textStyle().highLight1(app, context, label),
    );
  }

  @override
  List<Widget> dialogButtons(AppModel app,BuildContext context,
      {required List<String> labels, required List<VoidCallback?> functions}) {
    if (labels.length != functions.length) {
      throw Exception(
          'Amount of labels of buttons does not correspond functions');
    }
    var buttons = <Widget>[];
    for (var i = 0; i < labels.length; i++) {
      var label = labels[i];
      var function = functions[i];
      buttons.add(dialogButton(app, context, onPressed: function, label: label));
    }
    return buttons;
  }

  @override
  Widget iconButton(AppModel app,BuildContext context,
      {VoidCallback? onPressed,
      Color? color,
      String? tooltip,
      required Widget icon}) {
    return /*_style.frontEndStyle().containerStyle().actionContainer(context,
        child: */IconButton(
            icon: icon, color: color, tooltip: tooltip, onPressed: onPressed)/*)*/;
  }

  @override
  Widget simpleButton(AppModel app,BuildContext context,
      {VoidCallback? onPressed, required String label}) {
    return /*_style.frontEndStyle().containerStyle().actionContainer(context,
        child: */TextButton(onPressed: onPressed, child: _style.frontEndStyle().textStyle().text(app, context, label),);
  }
}

import 'package:eliud_core/model/app_model.dart';
import 'package:eliud_core/style/frontend/has_button.dart';
import 'package:eliud_core/style/frontend/has_text.dart';
import 'package:eliud_core/tools/etc.dart';
import 'package:flutter/material.dart';

import '../../styles/mona_style.dart';

class MonaButtonImpl implements HasButton {
  final MonaStyle _style;

  MonaButtonImpl(this._style);

  @override
  Widget button(AppModel app,BuildContext context,
      {Icon? icon, required String label, String? tooltip, VoidCallback? onPressed}) {
    var returnMe;
    if (icon != null) {
      returnMe = GestureDetector(
          onTap: onPressed,
          child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: _style
                  .frontEndStyle()
                  .containerStyle()
                  .actionContainer(app, context, child: icon)));
    } else {
      returnMe = GestureDetector(
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
    if (tooltip == null) {
      return returnMe;
    } else {
      return Tooltip(message: tooltip, child: returnMe);
    }
  }

  @override
  Widget dialogButton(AppModel app,BuildContext context,
      {VoidCallback? onPressed, required String label, String? tooltip, bool? selected}) {
    var returnMe = OutlinedButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: Colors.pink,
      ),

      child: selected == null || selected == false
          ? _style.frontEndStyle().textStyle().text(app, context, label)
          : _style.frontEndStyle().textStyle().highLight1(app, context, label),
    );
    if (tooltip == null) {
      return returnMe;
    } else {
      return Tooltip(message: tooltip, child: returnMe);
    }
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
    return IconButton(
      padding: const EdgeInsets.all(8.0),
            icon: icon, color: color, tooltip: tooltip, onPressed: onPressed)/*)*/;
  }

  @override
  Widget simpleButton(AppModel app,BuildContext context,
      {VoidCallback? onPressed, required String label}) {
    return TextButton(onPressed: onPressed, child: text(app, context, label),);
  }

  @override
  PopupMenuItem<T> popupMenuItem<T>(AppModel app, BuildContext context, {required String label, bool enabled = true, T? value}) {
    return PopupMenuItem<T>(child: text(app, context, label), enabled: enabled, value: value);
  }

  @override
  PopupMenuButton<T> popupMenuButton<T>(AppModel app, BuildContext context, {String? tooltip, Widget? child, Widget? icon, required PopupMenuItemBuilder<T> itemBuilder,
    PopupMenuItemSelected<T>? onSelected}) {
    return PopupMenuButton<T>(
      color: _style.monaStyleAttributesModel.popupMenuButtonColor != null ? RgbHelper.color(
          rgbo: _style.monaStyleAttributesModel.popupMenuButtonColor) : Colors.grey,
        tooltip: tooltip,
        elevation: 10,
        padding: EdgeInsets.all(8.0),
        child: child,
        icon: icon,
        itemBuilder: itemBuilder,
        onSelected: onSelected);
  }

  @override
  PopupMenuDivider popupMenuDivider(AppModel app, BuildContext context) => PopupMenuDivider();

  @override
  DropdownButton<T> dropdownButton<T>(AppModel app, BuildContext context, {T? value, List<DropdownMenuItem<T>>? items, Widget? hint, ValueChanged<T?>? onChanged, bool isDense = false, bool isExpanded = false}) {
    return DropdownButton<T>(
      value: value,
      items: items,
      hint: hint,
      onChanged: onChanged,
      isDense: isDense,
      isExpanded: isExpanded,
      dropdownColor: RgbHelper.color(
          rgbo: _style.monaStyleAttributesModel.dropdownButtonnColor),
    );
  }
}

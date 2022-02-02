import 'package:eliud_core/style/frontend/has_container.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:eliud_core/model/model_export.dart';
import 'package:eliud_stl_mona/model/model_export.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_model.dart';

class UpdateStyleWidget extends StatefulWidget {
  AppModel app;
  MonaStyleAttributesModel value;

  UpdateStyleWidget({Key? key, required this.app, required this.value, }) : super(key: key);

  @override
  _UpdateStyleWidgetState createState() => _UpdateStyleWidgetState();
}

class _UpdateStyleWidgetState extends State<UpdateStyleWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(shrinkWrap: true, physics: ScrollPhysics(), children: [
      StyleColorWidget(
          app: widget.app,
          value: widget.value.appBarIconColor!,
          label: 'Appbar Icon Color'),
      StyleColorWidget(
          app: widget.app,
          value: widget.value.backgroundColorHomeMenu!,
          label: 'Background colour home menu'),
    ]);
  }
}

class StyleColorWidget extends StatefulWidget {
  final AppModel app;
  final RgbModel value;
  final String label;

  StyleColorWidget({Key? key, required this.app, required this.label, required this.value, }) : super(key: key);

  @override
  _StyleColorWidgetState createState() => _StyleColorWidgetState();
}

class _StyleColorWidgetState extends State<StyleColorWidget> {
  Color? color;

  @override
  void initState() {
    super.initState();
    if (widget.value != null)
      color = Color.fromRGBO(widget.value.r!, widget.value.g!, widget.value.b!, widget.value.opacity!);
    else
      color = Color.fromRGBO(255, 0, 0, 1.0);
  }

  @override
  Widget build(BuildContext context) {
    return topicContainer(widget.app, context,
        title: widget.label,
        collapsible: true,
        collapsed: true,
        children: [
          ColorPicker(
            pickerColor: color!,
            onColorChanged: changeColor,
            //enableLabel: true,
            pickerAreaHeightPercent: 0.8,
          )
        ]);

  }

  void changeColor(Color c) {
    setState(() {
      color = c;
      widget.value.r = c.red;
      widget.value.g = c.green;
      widget.value.b = c.blue;
      widget.value.opacity = c.opacity;
    });
  }
}

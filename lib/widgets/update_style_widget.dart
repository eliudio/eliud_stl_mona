import 'package:eliud_core/core/blocs/access/state/access_state.dart';
import 'package:eliud_core/core/blocs/access/state/logged_in.dart';
import 'package:eliud_core/core/blocs/access/access_bloc.dart';
import 'package:eliud_core/style/frontend/has_container.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
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

class UpdateStyleWidget extends StatefulWidget {
  MonaStyleAttributesModel value;

  UpdateStyleWidget({Key? key, required this.value, }) : super(key: key);

  @override
  _UpdateStyleWidgetState createState() => _UpdateStyleWidgetState();

}


class _UpdateStyleWidgetState extends State<UpdateStyleWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(shrinkWrap: true, physics: ScrollPhysics(), children: [
      StyleColorWidget(
        value: widget.value.appBarIconColor!,
        label: 'Appbar Icon Color'),
    ]);

  }
}

class StyleColorWidget extends StatefulWidget {
  final RgbModel value;
  final String label;

  StyleColorWidget({Key? key, required this.label, required this.value, }) : super(key: key);

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
    return topicContainer(context,
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

import 'package:eliud_core/style/frontend/has_container.dart';
import 'package:eliud_core/style/frontend/has_divider.dart';
import 'package:eliud_core/style/frontend/has_text.dart';
import 'package:eliud_stl_mona/widgets/update_style_widgets/background_widget.dart';
import 'package:eliud_stl_mona/widgets/update_style_widgets/style_color_widget.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:eliud_core/model/model_export.dart';
import 'package:eliud_stl_mona/model/model_export.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_model.dart';
import 'package:eliud_core/style/frontend/has_list_tile.dart';

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
  @override
  Widget build(BuildContext context) {
    return ListView(shrinkWrap: true, physics: ScrollPhysics(), children: [
      StyleColorWidget(
          app: widget.app,
          value: widget.value.appBarIconColor!,
          label: 'Appbar Icon Color'),
      BackgroundWidget(
          app: widget.app,
          memberId: widget.memberId,
          value: widget.value.appBackground ?? BackgroundModel(),
          label: 'Page background'),
      StyleColorWidget(
          app: widget.app,
          value: widget.value.backgroundColorHomeMenu!,
          label: 'Background colour home menu'),
    ]);
  }
}

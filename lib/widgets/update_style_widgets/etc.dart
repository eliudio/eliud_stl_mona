import 'package:eliud_core/style/frontend/has_container.dart';
import 'package:eliud_core/style/frontend/has_divider.dart';
import 'package:eliud_core/style/frontend/has_text.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:eliud_core/model/model_export.dart';
import 'package:eliud_stl_mona/model/model_export.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_model.dart';
import 'package:eliud_core/style/frontend/has_list_tile.dart';

Widget groupTitle(AppModel app, BuildContext context, String title) =>
    h5(app, context, title);

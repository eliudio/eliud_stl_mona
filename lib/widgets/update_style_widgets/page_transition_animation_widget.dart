import 'package:eliud_core/model/app_model.dart';
import 'package:eliud_core/model/rgb_model.dart';
import 'package:eliud_core/style/frontend/has_container.dart';
import 'package:eliud_core/style/frontend/has_dialog_field.dart';
import 'package:eliud_core/style/frontend/has_list_tile.dart';
import 'package:eliud_core/tools/helpers/parse_helper.dart';
import 'package:eliud_stl_mona/model/font_model.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_model.dart';
import 'package:eliud_stl_mona/tools/font_tools.dart';
import 'package:eliud_stl_mona/widgets/update_style_widgets/style_color_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

typedef PageTransitionFeedback(PageTransitionAnimation pageTransitionAnimation);
typedef RouteAnimationDurationFeedback(int routeAnimationDuration);

class PageTransitionAnimationWidget extends StatefulWidget {
  final AppModel app;
  PageTransitionAnimation pageTransitionAnimation;
  int routeAnimationDuration;
  final String label;
  final PageTransitionFeedback pageTransitionFeedback;
  final RouteAnimationDurationFeedback routeAnimationDurationFeedback;

  PageTransitionAnimationWidget({
    Key? key,
    required this.app,
    required this.label,
    required this.pageTransitionAnimation,
    required this.routeAnimationDuration,
    required this.pageTransitionFeedback,
    required this.routeAnimationDurationFeedback,
  }) : super(key: key);

  @override
  _PageTransitionAnimationState createState() =>
      _PageTransitionAnimationState();
}

class _PageTransitionAnimationState
    extends State<PageTransitionAnimationWidget> {
  @override
  Widget build(BuildContext context) {
    return topicContainer(widget.app, context,
        title: widget.label,
        collapsible: true,
        collapsed: true,
        children: [
          topicContainer(widget.app, context,
              title: 'Animation',
              collapsible: true,
              collapsed: true,
              children: [
                radioListTile(
                    widget.app,
                    context,
                    0,
                    widget.pageTransitionAnimation.index,
                    'Slide Right To Left',
                    'Slide Right To Left', (int? newValue) {
                  setState(() {
                    widget.pageTransitionAnimation =
                        toPageTransitionAnimation(newValue);
                    widget.pageTransitionFeedback(widget.pageTransitionAnimation);
                  });
                }),
                radioListTile(
                    widget.app,
                    context,
                    1,
                    widget.pageTransitionAnimation.index,
                    'Slide Bottom To Top',
                    'Slide Bottom To Top', (int? newValue) {
                  setState(() {
                    widget.pageTransitionAnimation =
                        toPageTransitionAnimation(newValue);
                    widget.pageTransitionFeedback(widget.pageTransitionAnimation);
                  });
                }),
                radioListTile(
                    widget.app,
                    context,
                    2,
                    widget.pageTransitionAnimation.index,
                    'Scale Route',
                    'Scale Route', (int? newValue) {
                  setState(() {
                    widget.pageTransitionAnimation =
                        toPageTransitionAnimation(newValue);
                    widget.pageTransitionFeedback(widget.pageTransitionAnimation);
                  });
                }),
                radioListTile(
                    widget.app,
                    context,
                    3,
                    widget.pageTransitionAnimation.index,
                    'Rotation Route',
                    'Rotation Route', (int? newValue) {
                  setState(() {
                    widget.pageTransitionAnimation =
                        toPageTransitionAnimation(newValue);
                    widget.pageTransitionFeedback(widget.pageTransitionAnimation);
                  });
                }),
                radioListTile(
                    widget.app,
                    context,
                    4,
                    widget.pageTransitionAnimation.index,
                    'Fade Route',
                    'Fade Route', (int? newValue) {
                  setState(() {
                    widget.pageTransitionAnimation =
                        toPageTransitionAnimation(newValue);
                    widget.pageTransitionFeedback(widget.pageTransitionAnimation);
                  });
                }),
              ]),
          topicContainer(widget.app, context,
              title: 'Duration',
              collapsible: true,
              collapsed: true,
              children: [
                getListTile(context, widget.app,
                    leading: Icon(Icons.description),
                    title: dialogField(
                      widget.app,
                      context,
                      initialValue: widget.routeAnimationDuration.toString(),
                      valueChanged: (value) {
                        setState(() {
                          widget.routeAnimationDuration = int_parse(value);
                        });
                      },
                      keyboardType: TextInputType.numberWithOptions(signed: false, ),
                      decoration: const InputDecoration(
                        hintText: 'Duration',
                        labelText: 'Duration',
                      ),
                    ))
              ]),
        ]);
  }
}

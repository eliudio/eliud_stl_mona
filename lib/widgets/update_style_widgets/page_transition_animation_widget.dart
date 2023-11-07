import 'package:eliud_core/model/app_model.dart';
import 'package:eliud_core/style/frontend/has_container.dart';
import 'package:eliud_core/style/frontend/has_dialog_field.dart';
import 'package:eliud_core/style/frontend/has_list_tile.dart';
import 'package:eliud_core/tools/helpers/parse_helper.dart';
import 'package:eliud_stl_mona/model/mona_style_attributes_model.dart';
import 'package:flutter/material.dart';

typedef PageTransitionFeedback = Function(
    PageTransitionAnimation pageTransitionAnimation);
typedef RouteAnimationDurationFeedback = Function(int routeAnimationDuration);

class PageTransitionAnimationWidget extends StatefulWidget {
  final AppModel app;
  final PageTransitionAnimation pageTransitionAnimation;
  final int routeAnimationDuration;
  final String label;
  final PageTransitionFeedback pageTransitionFeedback;
  final RouteAnimationDurationFeedback routeAnimationDurationFeedback;

  PageTransitionAnimationWidget({
    super.key,
    required this.app,
    required this.label,
    required this.pageTransitionAnimation,
    required this.routeAnimationDuration,
    required this.pageTransitionFeedback,
    required this.routeAnimationDurationFeedback,
  });

  @override
  State<PageTransitionAnimationWidget> createState() =>
      _PageTransitionAnimationState(
          pageTransitionAnimation, routeAnimationDuration);
}

class _PageTransitionAnimationState
    extends State<PageTransitionAnimationWidget> {
  PageTransitionAnimation pageTransitionAnimation;
  int routeAnimationDuration;

  _PageTransitionAnimationState(
      this.pageTransitionAnimation, this.routeAnimationDuration);

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
                    pageTransitionAnimation.index,
                    'Slide Right To Left',
                    'Slide Right To Left', (int? newValue) {
                  setState(() {
                    pageTransitionAnimation =
                        toPageTransitionAnimation(newValue);
                    widget.pageTransitionFeedback(pageTransitionAnimation);
                  });
                }),
                radioListTile(
                    widget.app,
                    context,
                    1,
                    pageTransitionAnimation.index,
                    'Slide Bottom To Top',
                    'Slide Bottom To Top', (int? newValue) {
                  setState(() {
                    pageTransitionAnimation =
                        toPageTransitionAnimation(newValue);
                    widget.pageTransitionFeedback(pageTransitionAnimation);
                  });
                }),
                radioListTile(
                    widget.app,
                    context,
                    2,
                    pageTransitionAnimation.index,
                    'Scale Route',
                    'Scale Route', (int? newValue) {
                  setState(() {
                    pageTransitionAnimation =
                        toPageTransitionAnimation(newValue);
                    widget.pageTransitionFeedback(pageTransitionAnimation);
                  });
                }),
                radioListTile(
                    widget.app,
                    context,
                    3,
                    pageTransitionAnimation.index,
                    'Rotation Route',
                    'Rotation Route', (int? newValue) {
                  setState(() {
                    pageTransitionAnimation =
                        toPageTransitionAnimation(newValue);
                    widget.pageTransitionFeedback(pageTransitionAnimation);
                  });
                }),
                radioListTile(
                    widget.app,
                    context,
                    4,
                    pageTransitionAnimation.index,
                    'Fade Route',
                    'Fade Route', (int? newValue) {
                  setState(() {
                    pageTransitionAnimation =
                        toPageTransitionAnimation(newValue);
                    widget.pageTransitionFeedback(pageTransitionAnimation);
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
                      initialValue: routeAnimationDuration.toString(),
                      valueChanged: (value) {
                        setState(() {
                          routeAnimationDuration = intParse(value);
                        });
                      },
                      keyboardType: TextInputType.numberWithOptions(
                        signed: false,
                      ),
                      decoration: const InputDecoration(
                        hintText: 'Duration',
                        labelText: 'Duration',
                      ),
                    ))
              ]),
        ]);
  }
}

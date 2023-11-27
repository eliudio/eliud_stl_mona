import 'package:eliud_core_main/model/app_model.dart';
import 'package:eliud_core_main/model/background_model.dart';
import 'package:eliud_core_main/apis/style/frontend/has_container.dart';
import 'package:eliud_core_main/apis/style/frontend/has_divider.dart';
import 'package:eliud_core_main/apis/style/frontend/has_text.dart';
import 'package:eliud_core_main/tools/etc/etc.dart';
import 'package:flutter/material.dart';
import '../../styles/mona_style.dart';

class MonaContainerImpl implements HasContainer {
  final MonaStyle _monaStyle;

  MonaContainerImpl(this._monaStyle);

  @override
  Widget actionContainer(
    AppModel app,
    BuildContext context, {
    required Widget child,
    double? height,
    double? width,
    BackgroundModel? backgroundOverride,
  }) {
    return Container(
        width: width,
        height: height,
        clipBehavior: BoxDecorationHelper.determineClipBehaviour(
          app,
          null,
          backgroundOverride ??
              _monaStyle.monaStyleAttributesModel.actionContainerBackground,
        ),
        decoration: BoxDecorationHelper.boxDecoration(
          app,
          null,
          backgroundOverride ??
              _monaStyle.monaStyleAttributesModel.actionContainerBackground,
        ),
        margin: BoxDecorationHelper.determineMargin(
            app,
            null,
            backgroundOverride ??
                _monaStyle.monaStyleAttributesModel.actionContainerBackground),
        padding: BoxDecorationHelper.determinePadding(
            app,
            null,
            backgroundOverride ??
                _monaStyle.monaStyleAttributesModel.actionContainerBackground),
        child: child);
  }

  @override
  Widget topicContainer(AppModel app, BuildContext context,
      {required List<Widget> children,
      DecorationImage? image,
      double? height,
      double? width,
      String? title,
      bool? collapsible,
      bool? collapsed = false,
      BackgroundModel? backgroundOverride}) {
    return TopicContainerWidget(
        app: app,
        children: children,
        image: image,
        height: height,
        width: width,
        title: title,
        collapsible: collapsible ?? false,
        collapsed: collapsed ?? false,
        bdm: backgroundOverride ??
            _monaStyle.monaStyleAttributesModel.topicContainerBackground);
  }

  @override
  Widget simpleTopicContainer(AppModel app, BuildContext context,
      {required List<Widget> children,
      DecorationImage? image,
      double? height,
      double? width}) {
    return Padding(
        padding: const EdgeInsets.all(7.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        ));
  }
}

class TopicContainerWidget extends StatefulWidget {
  final AppModel app;
  final List<Widget> children;
  final DecorationImage? image;
  final double? height;
  final double? width;
  final String? title;
  final bool collapsible;
  final bool collapsed;
  final BackgroundModel? bdm;

  const TopicContainerWidget(
      {super.key,
      this.image,
      this.height,
      this.width,
      this.title,
      required this.app,
      required this.collapsible,
      required this.collapsed,
      required this.children,
      required this.bdm});

  @override
  State<StatefulWidget> createState() => _TopicContainerState();
}

class _TopicContainerState extends State<TopicContainerWidget> {
  bool collapsed = false;

  @override
  void initState() {
    collapsed = widget.collapsed;
    super.initState();
  }

  void _expand() {
    setState(() => collapsed = !collapsed);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> allChildren = [];
    if (widget.collapsible) {
      allChildren.add(GestureDetector(
          onTap: () => _expand(),
          child: Row(
            children: [
              if (widget.title != null)
                text(widget.app, context, widget.title!),
              Spacer(),
              collapsed ? Icon(Icons.expand_more) : Icon(Icons.expand_less)
            ],
          )));
      allChildren.add(divider(widget.app, context));
    } else {
      if (widget.title != null) {
        allChildren.add(text(widget.app, context, widget.title!));
        allChildren.add(divider(widget.app, context));
      }
    }
    if (!collapsed) {
      allChildren.addAll(widget.children);
    }
    return Padding(
        padding: const EdgeInsets.all(7.0),
        child: Container(
            width: widget.width,
            height: widget.height,
            clipBehavior: BoxDecorationHelper.determineClipBehaviour(
              widget.app,
              null,
              widget.bdm,
            ),
            decoration: BoxDecorationHelper.boxDecoration(
              widget.app,
              null,
              widget.bdm,
              overridingImage: widget.image,
            ),
            margin: BoxDecorationHelper.determineMargin(
              widget.app,
              null,
              widget.bdm,
            ),
            padding: BoxDecorationHelper.determinePadding(
              widget.app,
              null,
              widget.bdm,
            ),
            child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: allChildren,
                ))));
  }
}

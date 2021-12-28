import 'package:eliud_core/model/app_model.dart';
import 'package:eliud_core/style/frontend/has_container.dart';
import 'package:eliud_core/style/frontend/has_divider.dart';
import 'package:eliud_core/style/frontend/has_text.dart';
import 'package:eliud_core/style/style.dart';
import 'package:flutter/material.dart';

class MonaContainerImpl implements HasContainer {
  final Style _style;

  MonaContainerImpl(this._style);

  @override
  Widget actionContainer(AppModel app, BuildContext context,
      {required Widget child, double? height, double? width}) {
    return Container(
        margin: EdgeInsets.all(7.0),
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: Color.fromRGBO(220, 200, 200, 1),
            border: Border.all(color: Colors.white, width: 1),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 5.0,
              ),
            ],
            borderRadius: BorderRadius.all(
              const Radius.circular(10.0),
            )),
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
      bool? collapsed = false}) {
    return TopicContainerWidget(
      app: app,
      children: children,
      image: image,
      height: height,
      width: width,
      title: title,
      collapsible: collapsible ?? false,
      collapsed: collapsed ?? false,
    );
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

  const TopicContainerWidget(
      {Key? key,
      this.image,
      this.height,
      this.width,
      this.title,
      required this.app,
      required this.collapsible,
      required this.collapsed,
      required this.children})
      : super(key: key);

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
            decoration: BoxDecoration(
                color: Colors.white,
                image: widget.image,
                border: Border.all(color: Colors.white, width: 1),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 5.0,
                  ),
                ],
                borderRadius: BorderRadius.all(
                  const Radius.circular(10.0),
                )),
            child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: allChildren,
                ))));
  }
}

import 'package:eliud_core/model/app_model.dart';
import 'package:eliud_core/model/icon_model.dart';
import 'package:eliud_core/style/frontend/has_divider.dart';
import 'package:eliud_core/style/frontend/has_split.dart';
import 'package:eliud_core/tools/etc.dart';
import 'package:flutter/material.dart';
import 'package:split_view/split_view.dart';

import '../../styles/mona_style.dart';

class MonaSplitImpl
    implements HasSplit {
  final MonaStyle _monaStyle;

  MonaSplitImpl(this._monaStyle);

  @override
  Widget splitView(AppModel app, BuildContext context, Widget container1, Widget container2, double ratio, double minRatio, double maxRatio) =>
      SplitViewWidget(
        container1: container1,
        container2: container2,
        ratio: ratio,
        maxRatio: maxRatio,
        minRatio: minRatio,
        dividerColor: RgbHelper.color(
            rgbo: _monaStyle.monaStyleAttributesModel.dividerColor),
      );

}


class SplitViewWidget extends StatefulWidget {
  final Widget container1;
  final Widget container2;
  final double ratio;
  final double minRatio;
  final double maxRatio;
  final Color dividerColor;

  const SplitViewWidget({
    Key? key,
    required this.container1,
    required this.container2,
    required this.ratio,
    required this.minRatio,
    required this.maxRatio,
    required this.dividerColor,
  }) : super(key: key);

  @override
  SplitViewWidgetState createState() => SplitViewWidgetState();
}

class SplitViewWidgetState extends State<SplitViewWidget> {
  SplitViewController? _splitViewController;

  @override
  void initState() {
    _splitViewController = SplitViewController(weights: [
      widget.ratio,
      1 - widget.ratio
    ], limits: [
      WeightLimit(min: widget.minRatio, max: widget.maxRatio),
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      //var weight = _splitViewController!.weights[0]!;
      return SplitView(
          gripSize: 1,
          gripColor: widget.dividerColor,
          controller: _splitViewController,
          onWeightChanged: (newWeight) {
            setState(() {});
          },
          children: [widget.container1, widget.container2],
          viewMode: orientation == Orientation.landscape
              ? SplitViewMode.Horizontal
              : SplitViewMode.Vertical);
    });
  }
}

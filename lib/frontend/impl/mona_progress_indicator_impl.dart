import 'package:delayed_display/delayed_display.dart';
import 'package:eliud_core/model/app_model.dart';
import 'package:eliud_core/style/frontend/has_progress_indicator.dart';
import 'package:flutter/material.dart';

class MonaProgressIndicatorImpl implements HasProgressIndicator {
  MonaProgressIndicatorImpl();

  @override
  Widget progressIndicator(AppModel app, BuildContext context,
      {Animation<Color>? valueColor}) {
    return Center(
        child: DelayedCircularProgressIndicator(
      valueColor: valueColor,
    ));
  }

  @override
  Widget progressIndicatorWithValue(AppModel app, BuildContext context,
      {Animation<Color>? valueColor, required double value}) {
    return Container(
        height: 100,
        child: Center(
            child: CircularProgressIndicator(
                value: value, valueColor: valueColor)));
  }
}

class DelayedCircularProgressIndicator extends StatelessWidget {
  final Animation<Color>? valueColor;
  DelayedCircularProgressIndicator({
    this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    Animation<Color>? vColor;
    if (valueColor == null) {
      vColor = AlwaysStoppedAnimation<Color>(Colors.white);
    } else {
      vColor = valueColor;
    }
    return DelayedDisplay(
        delay: Duration(seconds: 1),
        child: CircularProgressIndicator(valueColor: vColor));
  }
}

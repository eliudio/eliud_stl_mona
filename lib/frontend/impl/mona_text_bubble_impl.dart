import 'package:eliud_core_model/model/app_model.dart';
import 'package:eliud_core_model/style/frontend/has_text_bubble.dart';
import 'package:eliud_core_model/tools/etc/etc.dart';
import 'package:flutter/material.dart';

import '../../styles/mona_style.dart';

class MonaTextBubbleImpl implements HasTextBubble {
  final MonaStyle _monaStyle;

  MonaTextBubbleImpl(this._monaStyle);

  @override
  Widget textBubble(AppModel app, BuildContext context,
      {bool isSender = true,
      required String text,
      Widget? button,
      Widget? widget,
      String? time,
      bool tail = true,
      bool sent = false,
      bool delivered = false,
      bool seen = false}) {
    return TextBubble1(
      isSender: isSender,
      text: text,
      time: time,
      tail: tail,
      color: RgbHelper.color(
          rgbo: _monaStyle.monaStyleAttributesModel.textBubbleBackgroundColor),
      sent: sent,
      widget: widget,
      delivered: delivered,
      seen: seen,
      textStyle:
          _monaStyle.frontEndStyle().textStyleStyle().styleText(app, context)!,
      timeTextStyle: _monaStyle
          .frontEndStyle()
          .textStyleStyle()
          .styleSmallText(app, context)!,
      button: button,
    );
  }
}

class TextBubble1 extends TextBubble {
  TextBubble1(
      {super.isSender,
      required String text,
      Widget? button,
      Widget? widget,
      String? time,
      super.tail,
      super.color,
      super.sent,
      super.delivered,
      super.seen,
      TextStyle textStyle = const TextStyle(
        color: Colors.black87,
        fontSize: 16,
      ),
      TextStyle timeTextStyle = const TextStyle(
        color: Colors.black87,
        fontSize: 10,
      )})
      : super(
          widget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (text.isNotEmpty)
                  Text(
                    text,
                    style: textStyle,
                    textAlign: TextAlign.left,
                  ),
                if (widget != null) widget,
                if (button != null) button
              ]),
          timeWidget: time != null
              ? Text(
                  time,
                  style: timeTextStyle,
                  textAlign: TextAlign.right,
                )
              : null,
        );
}

class TextBubble extends StatelessWidget {
  final bool isSender;
  final Widget widget;
  final Widget? timeWidget;
  final bool tail;
  final Color color;
  final bool sent;
  final bool delivered;
  final bool seen;

  const TextBubble({
    super.key,
    this.isSender = true,
    required this.widget,
    this.timeWidget,
    this.color = Colors.white70,
    this.tail = true,
    this.sent = false,
    this.delivered = false,
    this.seen = false,
  });

  ///chat bubble builder method
  @override
  Widget build(BuildContext context) {
    bool stateTick = false;
    Widget? stateIcon;
    if (sent) {
      stateTick = true;
      stateIcon = Icon(
        Icons.done,
        size: 18,
        color: Color(0xFF97AD8E),
      );
    }
    if (delivered) {
      stateTick = true;
      stateIcon = Icon(
        Icons.done_all,
        size: 18,
        color: Color(0xFF97AD8E),
      );
    }
    if (seen) {
      stateTick = true;
      stateIcon = Icon(
        Icons.done_all,
        size: 18,
        color: Color(0xFF92DEDA),
      );
    }

    if (timeWidget != null) {
      if (stateIcon != null) {
        stateIcon = Row(children: [
          timeWidget!,
          SizedBox(width: 3),
          stateIcon,
        ]);
      } else {
        stateIcon = timeWidget;
      }
    }

    return Align(
      alignment: isSender ? Alignment.topRight : Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        child: CustomPaint(
          painter: SpecialChatBubbleOne(
              color: color,
              alignment: isSender ? Alignment.topRight : Alignment.topLeft,
              tail: tail),
          child: Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * .7,
            ),
            margin: isSender
                ? stateTick || timeWidget != null
                    ? EdgeInsets.fromLTRB(7, 7, 14, 7)
                    : EdgeInsets.fromLTRB(7, 7, 17, 7)
                : EdgeInsets.fromLTRB(17, 7, 7, 7),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: stateTick
                      ? timeWidget != null
                          ? EdgeInsets.only(right: 50)
                          : EdgeInsets.only(right: 20)
                      : timeWidget != null
                          ? EdgeInsets.only(right: 30)
                          : EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  child: Column(children: [widget]),
                ),
                stateIcon != null && (stateTick || timeWidget != null)
                    ? Positioned(
                        bottom: 0,
                        right: 0,
                        child: stateIcon,
                      )
                    : SizedBox(
                        width: 1,
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

///custom painter use to create the shape of the chat bubble
///
/// [color],[alignment] and [tail] can be changed

class SpecialChatBubbleOne extends CustomPainter {
  final Color color;
  final Alignment alignment;
  final bool tail;

  SpecialChatBubbleOne({
    required this.color,
    required this.alignment,
    required this.tail,
  });

  final double _radius = 10.0;
  final double _x = 10.0;

  @override
  void paint(Canvas canvas, Size size) {
    if (alignment == Alignment.topRight) {
      if (tail) {
        canvas.drawRRect(
            RRect.fromLTRBAndCorners(
              0,
              0,
              size.width - _x,
              size.height,
              bottomLeft: Radius.circular(_radius),
              bottomRight: Radius.circular(_radius),
              topLeft: Radius.circular(_radius),
            ),
            Paint()
              ..color = color
              ..style = PaintingStyle.fill);
        var path = Path();
        path.moveTo(size.width - _x, 0);
        path.lineTo(size.width - _x, 10);
        path.lineTo(size.width, 0);
        canvas.clipPath(path);
        canvas.drawRRect(
            RRect.fromLTRBAndCorners(
              size.width - _x,
              0.0,
              size.width,
              size.height,
              topRight: Radius.circular(3),
            ),
            Paint()
              ..color = color
              ..style = PaintingStyle.fill);
      } else {
        canvas.drawRRect(
            RRect.fromLTRBAndCorners(
              0,
              0,
              size.width - _x,
              size.height,
              bottomLeft: Radius.circular(_radius),
              bottomRight: Radius.circular(_radius),
              topLeft: Radius.circular(_radius),
              topRight: Radius.circular(_radius),
            ),
            Paint()
              ..color = color
              ..style = PaintingStyle.fill);
      }
    } else {
      if (tail) {
        canvas.drawRRect(
            RRect.fromLTRBAndCorners(
              _x,
              0,
              size.width,
              size.height,
              bottomRight: Radius.circular(_radius),
              topRight: Radius.circular(_radius),
              bottomLeft: Radius.circular(_radius),
            ),
            Paint()
              ..color = color
              ..style = PaintingStyle.fill);
        var path = Path();
        path.moveTo(_x, 0);
        path.lineTo(_x, 10);
        path.lineTo(0, 0);
        canvas.clipPath(path);
        canvas.drawRRect(
            RRect.fromLTRBAndCorners(
              0,
              0.0,
              _x,
              size.height,
              topLeft: Radius.circular(3),
            ),
            Paint()
              ..color = color
              ..style = PaintingStyle.fill);
      } else {
        canvas.drawRRect(
            RRect.fromLTRBAndCorners(
              _x,
              0,
              size.width,
              size.height,
              bottomRight: Radius.circular(_radius),
              topRight: Radius.circular(_radius),
              bottomLeft: Radius.circular(_radius),
              topLeft: Radius.circular(_radius),
            ),
            Paint()
              ..color = color
              ..style = PaintingStyle.fill);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

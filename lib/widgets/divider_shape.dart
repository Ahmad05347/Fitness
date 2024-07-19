import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class DividerShape extends SfDividerShape {
  @override
  void paint(PaintingContext context, Offset center, Offset? thumbCenter,
      Offset? startThumbCenter, Offset? endThumbCenter,
      {required RenderBox parentBox,
      required SfSliderThemeData themeData,
      SfRangeValues? currentValues,
      dynamic currentValue,
      required Paint? paint,
      required Animation<double> enableAnimation,
      required TextDirection textDirection}) {
    bool isActive;

    switch (textDirection) {
      case TextDirection.ltr:
        isActive = center.dx <= thumbCenter!.dx;
        break;
      case TextDirection.rtl:
        isActive = center.dx >= thumbCenter!.dx;
        break;
    }

    context.canvas.drawRect(
        Rect.fromCenter(center: center, width: 5.0, height: 10.0),
        Paint()
          ..isAntiAlias = true
          ..style = PaintingStyle.fill
          ..color = isActive ? themeData.activeTrackColor! : Colors.white);
  }
}

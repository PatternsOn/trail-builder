import 'dart:math';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trail_builder/features/roller_calculator/model/roller.dart';
import 'package:trail_builder/features/roller_calculator/model/roller_date.dart';

final rollerCalculatorProvider =
NotifierProvider<RollerCalculatorNotifier, Roller>(
  RollerCalculatorNotifier.new,
);

class RollerCalculatorNotifier extends Notifier<Roller> {
  @override
  Roller build() {
    return Roller(length: 5000, ratio: 10, distanceBetweenMeasurePoints: 100);
  }

  void updateLength(String value) =>
      state = state.copyWith(length: int.parse(value.isEmpty ? '0' : value));

  void updateRatio(String value) =>
      state = state.copyWith(ratio: int.parse(value.isEmpty ? '0' : value));

  Roller updateDistanceBetweenMeasurePoints(String value) =>
      state = state.copyWith(
        distanceBetweenMeasurePoints: int.parse(value.isEmpty ? '0' : value),
      );

  void calculate() {
    if (_isFormValid()) {
      List<RollerData> data = [];

      for (
      int i = 0;
      i <= state.length!;
      i += state.distanceBetweenMeasurePoints!
      ) {
        int height = _calculateHeight(
          length: state.length!,
          distance: i,
          ratio: state.ratio!,
        );

        data.add(RollerData(distance: i, height: height));
      }
      state = state.copyWith(data: data);
    }
  }

  void copyRollerData() {
    StringBuffer buffer = StringBuffer();

    buffer.writeln("Roller Calculator Data");
    buffer.writeln("Length - ${state.length}");
    buffer.writeln("Ratio - ${state.ratio}");

    buffer.writeln("Distance - Height");
    for (RollerData item in state.data!) {
      buffer.writeln("${item.distance} - ${item.height}");
    }

    Clipboard.setData(ClipboardData(text: buffer.toString()));
  }

  bool _isFormValid() =>
      state.length != null &&
          state.ratio != null &&
          state.distanceBetweenMeasurePoints != null;

  int _calculateHeight({
    required int length,
    required int distance,
    required int ratio,
  }) {
    double height = (-(length / ratio)) * (cos((2 * pi / length) * distance));
    height = height + (length / ratio);
    double result = (height / 2).roundToDouble();
    return result.toInt();
  }
}

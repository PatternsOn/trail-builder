import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trail_builder/features/roller_calculator/model/roller.dart';

class RollerCalculatorController extends StateNotifier<Roller> {
  RollerCalculatorController()
      : super(
          Roller(
            length: 5000,
            ratio: 10,
            distanceBetweenMeasurePoints: 100,
          ),
        );

  void updateLength(String value) =>
      state = state.copyWith(length: int.parse(value.isEmpty ? '0' : value));

  void updateRatio(String value) =>
      state = state.copyWith(ratio: int.parse(value.isEmpty ? '0' : value));

  updateDistanceBetweenMeasurePoints(String value) => state = state.copyWith(
      distanceBetweenMeasurePoints: int.parse(value.isEmpty ? '0' : value));

  bool _isFormValid() =>
      state.length != null &&
      state.ratio != null &&
      state.distanceBetweenMeasurePoints != null;

  calculate() {
    if (_isFormValid()) {
      List<RollerData> data = [];

      for (int i = 0;
          i <= state.length!;
          i += state.distanceBetweenMeasurePoints!) {
        double height = _calculateHeight(
          length: state.length!,
          distance: i,
          ratio: state.ratio!,
        );

        data.add(RollerData(distance: i, height: height));
      }
      state = state.copyWith(data: data);

      print('state = ${state.toString()}');
    }
  }

  double _calculateHeight({
    required int length,
    required int distance,
    required int ratio,
  }) {
    double height = (-(length / ratio)) * (cos((2 * pi / length) * distance));
    height = height + (length / ratio);
    return (height / 2).roundToDouble();
  }
}

final rollerCalculatorController =
    StateNotifierProvider<RollerCalculatorController, Roller>((ref) {
  return RollerCalculatorController();
});

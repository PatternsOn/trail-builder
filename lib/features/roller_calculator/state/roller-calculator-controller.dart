import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trail_builder/features/roller_calculator/model/roller.dart';

class RollerCalculatorController extends StateNotifier<Roller?> {
  RollerCalculatorController() : super(Roller());

  void updateLength(String value) {
    state = state?.copyWith(length: int.parse(value.isEmpty ? '0' : value));
    print('state = $state');
  }

  void updateRatio(String value) {
    state = state?.copyWith(ratio: int.parse(value.isEmpty ? '0' : value));
    print('state = $state');
  }

  calculate() {
    print('Length = ${state?.length}');
    print('Ratio = ${state?.ratio}');
  }
}

final rollerCalculatorController = StateNotifierProvider<RollerCalculatorController, Roller?>((ref) {
  return RollerCalculatorController();
});
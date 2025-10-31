import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trail_builder/features/roller_calculator/state/roller_calculator_provider.dart';
import 'package:trail_builder/features/roller_calculator/ui/distance_between_measure_points_input.dart';
import 'package:trail_builder/features/roller_calculator/ui/length_input.dart';
import 'package:trail_builder/features/roller_calculator/ui/ratio_input.dart';
import 'package:trail_builder/features/roller_calculator/ui/result_table.dart';
import 'package:trail_builder/shared/ui/buttons/action_button.dart';
import 'package:trail_builder/shared/ui/c_scaffold.dart';
import 'package:trail_builder/shared/ui/keyboard_hide.dart';

class RollerCalculatorPage extends ConsumerWidget {
  const RollerCalculatorPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CScaffold(
      title: "Roller Calculator",
      body: KeyboardHide(
        child: SingleChildScrollView(
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 900),
              child: Column(
                children: [
                  LengthInput(),
                  RatioInput(),
                  DistanceBetweenMeasurePointsInput(),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ActionButton(
                      label: "Calculate",
                      onPressed:
                          () =>
                              ref.read(rollerCalculatorProvider.notifier).calculate(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: ResultTable(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

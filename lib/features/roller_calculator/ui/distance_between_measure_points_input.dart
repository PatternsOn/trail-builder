import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trail_builder/features/roller_calculator/state/roller_calculator_provider.dart';
import 'package:trail_builder/shared/ui/form/c_integer_form_field.dart';

class DistanceBetweenMeasurePointsInput extends ConsumerWidget {
  const DistanceBetweenMeasurePointsInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CIntegerFormField(
      label: "Distance between measure points",
      suffixText: "mm",
      initialValue:
          ref.read(rollerCalculatorProvider).distanceBetweenMeasurePoints,
      onChanged:
          (value) => ref
              .read(rollerCalculatorProvider.notifier)
              .updateDistanceBetweenMeasurePoints(value ?? ""),
    );
  }
}

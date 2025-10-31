import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trail_builder/features/roller_calculator/state/roller_calculator_provider.dart';
import 'package:trail_builder/shared/ui/form/c_integer_form_field.dart';

class LengthInput extends ConsumerWidget {
  const LengthInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CIntegerFormField(
      label: "Length",
      initialValue: ref.read(rollerCalculatorProvider).length,
      suffixText: "mm",
      onChanged:
          (value) => ref
              .read(rollerCalculatorProvider.notifier)
              .updateLength(value ?? ""),
    );
  }
}

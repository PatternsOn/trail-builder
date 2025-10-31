import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trail_builder/features/roller_calculator/model/roller.dart';
import 'package:trail_builder/features/roller_calculator/state/roller-calculator-controller.dart';
import 'package:trail_builder/shared/style/c_color.dart';
import 'package:trail_builder/shared/style/c_text.dart';
import 'package:trail_builder/shared/ui/snack_bars/snack_bar.dart';

class ResultTable extends ConsumerWidget {
  const ResultTable({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<RollerData>? data = ref.watch(rollerCalculatorProvider).data;

    return data == null
        ? Container()
        : Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Distance",
                      style: CText.body.bold.onSurface(context),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Height",
                      style: CText.body.bold.onSurface(context),
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              itemCount: data.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 16),
                        color:
                            index.isOdd
                                ? CColor.surfaceBright(context)
                                : CColor.surfaceDim(context),
                        child: SelectableText(
                          data[index].distance.toString(),
                          style: CText.body.onSurface(context),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(right: 16),
                        color:
                            index.isOdd
                                ? CColor.surfaceBright(context)
                                : CColor.surfaceDim(context),
                        child: SelectableText(
                          data[index].height.toString(),
                          style: CText.body.onSurface(context),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton.icon(
                  onPressed: () {
                    ref
                        .read(rollerCalculatorProvider.notifier)
                        .copyRollerData();
                    Snackbar.success(context, "Copied to clipboard!");
                  },
                  icon: Icon(Icons.copy),
                  label: Text("Copy"),
                ),
                TextButton.icon(
                  onPressed: () {
                    ref
                        .read(rollerCalculatorProvider.notifier)
                        .copyRollerData();
                    Snackbar.success(context, "Saved");
                  },
                  icon: Icon(Icons.save),
                  label: Text("Save"),
                ),
              ],
            ),
          ],
        );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trail_builder/features/roller_calculator/model/roller.dart';
import 'package:trail_builder/features/roller_calculator/state/roller-calculator-controller.dart';

class ResultTable extends ConsumerWidget {
  const ResultTable({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<RollerData>? data = ref.watch(rollerCalculatorController).data;

    return data == null
        ? Container()
        : Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Distance"),
                    Text("Height"),
                  ],
                ),
                ListView.builder(
                  itemCount: data!.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(data![index].distance.toString()),
                        Text(data![index].height.toString()),
                      ],
                    );
                  },
                ),
              ],
            ),
          );
  }
}

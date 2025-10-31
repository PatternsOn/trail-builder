import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trail_builder/features/roller_calculator/ui/roller_calculator_page.dart';

void main() {
  testWidgets('RollerCalculatorPage shows title', (WidgetTester tester) async {
    await tester.pumpWidget(
      const ProviderScope(child: MaterialApp(home: RollerCalculatorPage())),
    );

    await tester.pumpAndSettle();

    expect(find.text('Roller Calculator'), findsOneWidget);
  });
}

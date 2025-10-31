import 'package:flutter/material.dart';
import 'package:trail_builder/shared/style/c_color.dart';

class CScaffold extends StatelessWidget {
  final Widget body;
  final FloatingActionButton? floatingActionButton;
  final String title;

  const CScaffold({
    super.key,
    required this.title,
    this.floatingActionButton,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CColor.surface(context),
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: SafeArea(child: body),
      ),
      floatingActionButton: floatingActionButton,
    );
  }
}

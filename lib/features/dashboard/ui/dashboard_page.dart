import 'package:flutter/material.dart';
import 'package:trail_builder/shared/ui/c_scaffold.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CScaffold(
      title: "Trail builder",
      body: Center(
        child: Text("Hello World!"),
      ),
    );
  }
}

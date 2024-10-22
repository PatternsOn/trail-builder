import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: SafeArea(child: body),
      ),
      floatingActionButton: floatingActionButton,
      endDrawer: Drawer(
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  context.pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Roller Calculator'),
                onTap: () {
                  context.push("/roller-calculator");
                  // Handle navigation to Settings
                  Navigator.pop(context); // Close the drawer
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trail_builder/routes/routes.dart';
import 'package:trail_builder/shared/style/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    ProviderScope(
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}

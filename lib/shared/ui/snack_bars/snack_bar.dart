import 'package:flutter/material.dart';
import 'package:trail_builder/shared/style/c_text.dart';

class Snackbar {
  static success(BuildContext context, String message) {
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            duration: Duration(seconds: 1),
            content: Text(message, style: CText.body)),
      );
    }
  }
}

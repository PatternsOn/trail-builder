import 'package:flutter/material.dart';

class KeyboardHide extends StatelessWidget {
  final Widget child;

  const KeyboardHide({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: child,
    );
  }
}

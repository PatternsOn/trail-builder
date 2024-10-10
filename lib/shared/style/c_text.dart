import 'package:flutter/material.dart';
import 'package:trail_builder/shared/style/c_color.dart';

class CText {
  static const TextStyle largeHeading =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const TextStyle mediumHeading =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w600);

  static const TextStyle subtitle = TextStyle(fontSize: 12);

  static const TextStyle detail = TextStyle(fontSize: 13);
  static const TextStyle numericText =
      TextStyle(fontFamily: 'Roboto', fontSize: 16);

  static const TextStyle body = TextStyle(fontSize: 16);
  static const TextStyle bodySmall = TextStyle(fontSize: 14);
  static const TextStyle bodyLarge = TextStyle(fontSize: 18);

  TextTheme theme() => const TextTheme(
        titleLarge: largeHeading,
        bodyLarge: body,
        bodyMedium: bodySmall,
        titleSmall: subtitle,
      );
}

extension TextStyleExtension on TextStyle {
  TextStyle primary(BuildContext context) =>
      _color(Theme.of(context).colorScheme.primary);

  TextStyle onPrimary(BuildContext context) =>
      _color(Theme.of(context).colorScheme.onPrimary);

  TextStyle onPrimaryContainer(BuildContext context) =>
      _color(Theme.of(context).colorScheme.onPrimaryContainer);

  TextStyle secondary(BuildContext context) =>
      _color(Theme.of(context).colorScheme.secondary);

  TextStyle onSecondary(BuildContext context) =>
      _color(Theme.of(context).colorScheme.onSecondary);

  TextStyle secondaryContainer(BuildContext context) =>
      _color(Theme.of(context).colorScheme.secondaryContainer);

  TextStyle onSecondaryContainer(BuildContext context) =>
      _color(Theme.of(context).colorScheme.onSecondaryContainer);

  TextStyle tertiary(BuildContext context) =>
      _color(Theme.of(context).colorScheme.tertiary);

  TextStyle onTertiary(BuildContext context) =>
      _color(Theme.of(context).colorScheme.onTertiary);

  TextStyle onTertiaryContainer(BuildContext context) =>
      _color(Theme.of(context).colorScheme.onTertiaryContainer);

  TextStyle surface(BuildContext context) =>
      _color(Theme.of(context).colorScheme.surface);

  TextStyle onSurface(BuildContext context) =>
      _color(Theme.of(context).colorScheme.onSurface);

  TextStyle onSurfaceVariant(BuildContext context) =>
      _color(Theme.of(context).colorScheme.onSurfaceVariant);

  TextStyle error(BuildContext context) =>
      _color(Theme.of(context).colorScheme.error);

  TextStyle onError(BuildContext context) =>
      _color(Theme.of(context).colorScheme.onError);

  TextStyle onColorByType(ColorType type, BuildContext context) {
    return _color(_typeToOnColor(type, Theme.of(context).colorScheme));
  }

  Color _typeToOnColor(ColorType type, ColorScheme colorScheme) {
    switch (type) {
      case ColorType.primary:
        return colorScheme.onPrimary;
      case ColorType.secondary:
        return colorScheme.onSecondary;
      case ColorType.tertiary:
        return colorScheme.onTertiary;
      case ColorType.surface:
        return colorScheme.onSurface;
      case ColorType.error:
        return colorScheme.onError;
      case ColorType.onSecondary:
        return colorScheme.secondary;
      default:
        return colorScheme.onSurface;
    }
  }

  TextStyle get bold => _weight(FontWeight.bold);

  TextStyle get italic => _fontStyle(FontStyle.italic);

  TextStyle get underline => _fontDecoration(TextDecoration.underline);

  TextStyle get lineThrough => _fontDecoration(TextDecoration.lineThrough);

  TextStyle _weight(FontWeight v) => copyWith(fontWeight: v);

  TextStyle _fontStyle(FontStyle i) => copyWith(fontStyle: i);

  TextStyle _fontDecoration(TextDecoration i) => copyWith(decoration: i);

  TextStyle _color(Color c) => copyWith(color: c);
}

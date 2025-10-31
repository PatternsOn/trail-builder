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
      _color(_colorScheme(context).primary);

  TextStyle onPrimary(BuildContext context) =>
      _color(_colorScheme(context).onPrimary);

  TextStyle primaryContainer(BuildContext context) =>
      _color(_colorScheme(context).primaryContainer);

  TextStyle onPrimaryContainer(BuildContext context) =>
      _color(_colorScheme(context).onPrimaryContainer);

  TextStyle primaryFixed(BuildContext context) =>
      _color(_colorScheme(context).primaryFixed);

  TextStyle onPrimaryFixed(BuildContext context) =>
      _color(_colorScheme(context).onPrimaryFixed);

  TextStyle primaryFixedDim(BuildContext context) =>
      _color(_colorScheme(context).primaryFixedDim);

  TextStyle onPrimaryFixedVariant(BuildContext context) =>
      _color(_colorScheme(context).onPrimaryFixedVariant);

  TextStyle secondary(BuildContext context) =>
      _color(_colorScheme(context).secondary);

  TextStyle onSecondary(BuildContext context) =>
      _color(_colorScheme(context).onSecondary);

  TextStyle secondaryContainer(BuildContext context) =>
      _color(_colorScheme(context).secondaryContainer);

  TextStyle onSecondaryContainer(BuildContext context) =>
      _color(_colorScheme(context).onSecondaryContainer);

  TextStyle secondaryFixed(BuildContext context) =>
      _color(_colorScheme(context).secondaryFixed);

  TextStyle onSecondaryFixed(BuildContext context) =>
      _color(_colorScheme(context).onSecondaryFixed);

  TextStyle secondaryFixedDim(BuildContext context) =>
      _color(_colorScheme(context).secondaryFixedDim);

  TextStyle onSecondaryFixedVariant(BuildContext context) =>
      _color(_colorScheme(context).onSecondaryFixedVariant);

  TextStyle tertiary(BuildContext context) =>
      _color(_colorScheme(context).tertiary);

  TextStyle onTertiary(BuildContext context) =>
      _color(_colorScheme(context).onTertiary);

  TextStyle tertiaryContainer(BuildContext context) =>
      _color(_colorScheme(context).tertiaryContainer);

  TextStyle onTertiaryContainer(BuildContext context) =>
      _color(_colorScheme(context).onTertiaryContainer);

  TextStyle tertiaryFixed(BuildContext context) =>
      _color(_colorScheme(context).tertiaryFixed);

  TextStyle onTertiaryFixed(BuildContext context) =>
      _color(_colorScheme(context).onTertiaryFixed);

  TextStyle tertiaryFixedDim(BuildContext context) =>
      _color(_colorScheme(context).tertiaryFixedDim);

  TextStyle onTertiaryFixedVariant(BuildContext context) =>
      _color(_colorScheme(context).onTertiaryFixedVariant);

  TextStyle surface(BuildContext context) =>
      _color(_colorScheme(context).surface);

  TextStyle surfaceDim(BuildContext context) =>
      _color(_colorScheme(context).surfaceDim);

  TextStyle surfaceBright(BuildContext context) =>
      _color(_colorScheme(context).surfaceBright);

  TextStyle surfaceContainerLowest(BuildContext context) =>
      _color(_colorScheme(context).surfaceContainerLowest);

  TextStyle surfaceContainerLow(BuildContext context) =>
      _color(_colorScheme(context).surfaceContainerLow);

  TextStyle surfaceContainer(BuildContext context) =>
      _color(_colorScheme(context).surfaceContainer);

  TextStyle surfaceContainerHigh(BuildContext context) =>
      _color(_colorScheme(context).surfaceContainerHigh);

  TextStyle surfaceContainerHighest(BuildContext context) =>
      _color(_colorScheme(context).surfaceContainerHighest);

  TextStyle onSurface(BuildContext context) =>
      _color(_colorScheme(context).onSurface);

  TextStyle error(BuildContext context) => _color(_colorScheme(context).error);

  TextStyle onError(BuildContext context) =>
      _color(_colorScheme(context).onError);

  TextStyle errorContainer(BuildContext context) =>
      _color(_colorScheme(context).errorContainer);

  TextStyle onErrorContainer(BuildContext context) =>
      _color(_colorScheme(context).onErrorContainer);

  TextStyle inverseSurface(BuildContext context) =>
      _color(_colorScheme(context).inverseSurface);

  TextStyle inversePrimary(BuildContext context) =>
      _color(_colorScheme(context).inversePrimary);

  TextStyle scrim(BuildContext context) => _color(_colorScheme(context).scrim);

  TextStyle shadow(BuildContext context) =>
      _color(_colorScheme(context).shadow);

  TextStyle onColorByType(ColorType type, BuildContext context) {
    return _color(_typeToOnColor(type, _colorScheme(context)));
  }

  Color _typeToOnColor(ColorType type, ColorScheme colorScheme) {
    switch (type) {
      case ColorType.primary:
        return colorScheme.onPrimary;
      case ColorType.primaryContainer:
        return colorScheme.onPrimaryContainer;
      case ColorType.primaryFixed:
        return colorScheme.onPrimaryFixed;
      case ColorType.primaryFixedDim:
        return colorScheme.onPrimaryFixedVariant;

      case ColorType.secondary:
        return colorScheme.onSecondary;
      case ColorType.secondaryContainer:
        return colorScheme.onSecondaryContainer;
      case ColorType.secondaryFixed:
        return colorScheme.onSecondaryFixed;
      case ColorType.secondaryFixedDim:
        return colorScheme.onSecondaryFixedVariant;

      case ColorType.tertiary:
        return colorScheme.onTertiary;
      case ColorType.tertiaryContainer:
        return colorScheme.onTertiaryContainer;
      case ColorType.tertiaryFixed:
        return colorScheme.onTertiaryFixed;
      case ColorType.tertiaryFixedDim:
        return colorScheme.onTertiaryFixedVariant;

      case ColorType.surface:
        return colorScheme.onSurface;

      case ColorType.error:
        return colorScheme.onError;
      case ColorType.errorContainer:
        return colorScheme.onErrorContainer;

      default:
        return colorScheme.onSurface;
    }
  }

  ColorScheme _colorScheme(BuildContext context) =>
      Theme.of(context).colorScheme;

  TextStyle get bold => _weight(FontWeight.bold);

  TextStyle get italic => _fontStyle(FontStyle.italic);

  TextStyle get underline => _fontDecoration(TextDecoration.underline);

  TextStyle get lineThrough => _fontDecoration(TextDecoration.lineThrough);

  TextStyle _weight(FontWeight v) => copyWith(fontWeight: v);

  TextStyle _fontStyle(FontStyle i) => copyWith(fontStyle: i);

  TextStyle _fontDecoration(TextDecoration i) => copyWith(decoration: i);

  TextStyle _color(Color c) => copyWith(color: c);
}

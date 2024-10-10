import 'package:flutter/material.dart';

class CColor {
  static Color primary(BuildContext context) => Theme.of(context).colorScheme.primary;

  static Color onPrimary(BuildContext context) => Theme.of(context).colorScheme.onPrimary;

  static Color primaryContainer(BuildContext context) => Theme.of(context).colorScheme.primaryContainer;

  static Color onPrimaryContainer(BuildContext context) => Theme.of(context).colorScheme.onPrimaryContainer;

  static Color secondary(BuildContext context) => Theme.of(context).colorScheme.secondary;

  static Color onSecondary(BuildContext context) => Theme.of(context).colorScheme.onSecondary;

  static Color secondaryContainer(BuildContext context) => Theme.of(context).colorScheme.secondaryContainer;

  static Color onSecondaryContainer(BuildContext context) => Theme.of(context).colorScheme.onSecondaryContainer;

  static Color tertiary(BuildContext context) => Theme.of(context).colorScheme.tertiary;

  static Color onTertiary(BuildContext context) => Theme.of(context).colorScheme.onTertiary;

  static Color onTertiaryTemp(BuildContext context) => Theme.of(context).colorScheme.onTertiary;

  static Color tertiaryContainer(BuildContext context) => Theme.of(context).colorScheme.tertiaryContainer;

  static Color onTertiaryContainer(BuildContext context) => Theme.of(context).colorScheme.onTertiaryContainer;

  static Color surface(BuildContext context) => Theme.of(context).colorScheme.surface;

  static Color onSurface(BuildContext context) => Theme.of(context).colorScheme.onSurface;

  static Color surfaceVariant(BuildContext context) => Theme.of(context).colorScheme.surfaceContainerHighest;

  static Color onSurfaceVariant(BuildContext context) => Theme.of(context).colorScheme.onSurfaceVariant;

  static Color error(BuildContext context) => Theme.of(context).colorScheme.error;

  static Color onError(BuildContext context) => Theme.of(context).colorScheme.onError;

  static Color shadow(BuildContext context) => Theme.of(context).colorScheme.shadow;

  static Color colorByType(ColorType type, BuildContext context) {
    switch (type) {
      case ColorType.primary:
        return CColor.primary(context);
      case ColorType.secondary:
        return CColor.secondary(context);
      case ColorType.tertiary:
        return CColor.tertiary(context);
      case ColorType.surface:
      case ColorType.primaryContainer:
        return CColor.primaryContainer(context);
      case ColorType.secondaryContainer:
        return CColor.secondaryContainer(context);
      case ColorType.tertiaryContainer:
        return CColor.tertiaryContainer(context);
      case ColorType.error:
        return CColor.error(context);
      case ColorType.onPrimary:
        return CColor.onPrimary(context);
      case ColorType.onSecondary:
        return CColor.onSecondary(context);
    }
  }

  static Color onColorByType(ColorType type, BuildContext context) {
    switch (type) {
      case ColorType.primary:
        return CColor.onPrimary(context);
      case ColorType.secondary:
        return CColor.onSecondary(context);
      case ColorType.tertiary:
        return CColor.onTertiary(context);
      case ColorType.error:
        return CColor.onError(context);
      default:
        return CColor.onSurface(context);
    }
  }
}

enum ColorType {
  surface,
  primary,
  secondary,
  onSecondary,
  tertiary,
  primaryContainer,
  secondaryContainer,
  tertiaryContainer,
  error,
  onPrimary,
}
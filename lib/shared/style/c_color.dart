import 'package:flutter/material.dart';

class CColor {
  static Color primary(BuildContext context) =>
      Theme.of(context).colorScheme.primary;

  static Color onPrimary(BuildContext context) =>
      Theme.of(context).colorScheme.onPrimary;

  static Color primaryContainer(BuildContext context) =>
      Theme.of(context).colorScheme.primaryContainer;

  static Color onPrimaryContainer(BuildContext context) =>
      Theme.of(context).colorScheme.onPrimaryContainer;

  static Color primaryFixed(BuildContext context) =>
      Theme.of(context).colorScheme.primaryFixed;

  static Color onPrimaryFixed(BuildContext context) =>
      Theme.of(context).colorScheme.onPrimaryFixed;

  static Color primaryFixedDim(BuildContext context) =>
      Theme.of(context).colorScheme.primaryFixedDim;

  static Color onPrimaryFixedVariant(BuildContext context) =>
      Theme.of(context).colorScheme.onPrimaryFixedVariant;

  static Color secondary(BuildContext context) =>
      Theme.of(context).colorScheme.secondary;

  static Color onSecondary(BuildContext context) =>
      Theme.of(context).colorScheme.onSecondary;

  static Color secondaryContainer(BuildContext context) =>
      Theme.of(context).colorScheme.secondaryContainer;

  static Color onSecondaryContainer(BuildContext context) =>
      Theme.of(context).colorScheme.onSecondaryContainer;

  static Color secondaryFixed(BuildContext context) =>
      Theme.of(context).colorScheme.secondaryFixed;

  static Color onSecondaryFixed(BuildContext context) =>
      Theme.of(context).colorScheme.onSecondaryFixed;

  static Color secondaryFixedDim(BuildContext context) =>
      Theme.of(context).colorScheme.secondaryFixedDim;

  static Color onSecondaryFixedVariant(BuildContext context) =>
      Theme.of(context).colorScheme.onSecondaryFixedVariant;

  static Color tertiary(BuildContext context) =>
      Theme.of(context).colorScheme.tertiary;

  static Color onTertiary(BuildContext context) =>
      Theme.of(context).colorScheme.onTertiary;

  static Color onTertiaryTemp(BuildContext context) =>
      Theme.of(context).colorScheme.onTertiary;

  static Color tertiaryContainer(BuildContext context) =>
      Theme.of(context).colorScheme.tertiaryContainer;

  static Color onTertiaryContainer(BuildContext context) =>
      Theme.of(context).colorScheme.onTertiaryContainer;

  static Color tertiaryFixed(BuildContext context) =>
      Theme.of(context).colorScheme.tertiaryFixed;

  static Color onTertiaryFixed(BuildContext context) =>
      Theme.of(context).colorScheme.onTertiaryFixed;

  static Color tertiaryFixedDim(BuildContext context) =>
      Theme.of(context).colorScheme.tertiaryFixedDim;

  static Color onTertiaryFixedVariant(BuildContext context) =>
      Theme.of(context).colorScheme.onTertiaryFixedVariant;

  static Color surfaceDim(BuildContext context) =>
      Theme.of(context).colorScheme.surfaceDim;

  static Color surface(BuildContext context) =>
      Theme.of(context).colorScheme.surface;

  static Color surfaceBright(BuildContext context) =>
      Theme.of(context).colorScheme.surfaceBright;

  static Color surfaceContainerLowest(BuildContext context) =>
      Theme.of(context).colorScheme.surfaceContainerLowest;

  static Color surfaceContainerLow(BuildContext context) =>
      Theme.of(context).colorScheme.surfaceContainerLow;

  static Color surfaceContainer(BuildContext context) =>
      Theme.of(context).colorScheme.surfaceContainer;

  static Color surfaceContainerHigh(BuildContext context) =>
      Theme.of(context).colorScheme.surfaceContainerHigh;

  static Color surfaceContainerHighest(BuildContext context) =>
      Theme.of(context).colorScheme.surfaceContainerHighest;

  static Color onSurface(BuildContext context) =>
      Theme.of(context).colorScheme.onSurface;

  static Color surfaceVariant(BuildContext context) =>
      Theme.of(context).colorScheme.surfaceContainerHighest;

  static Color outline(BuildContext context) =>
      Theme.of(context).colorScheme.outline;

  static Color outlineVariant(BuildContext context) =>
      Theme.of(context).colorScheme.outlineVariant;

  static Color error(BuildContext context) =>
      Theme.of(context).colorScheme.error;

  static Color onError(BuildContext context) =>
      Theme.of(context).colorScheme.onError;

  static Color errorContainer(BuildContext context) =>
      Theme.of(context).colorScheme.errorContainer;

  static Color onErrorContainer(BuildContext context) =>
      Theme.of(context).colorScheme.onErrorContainer;

  static Color inverseSurface(BuildContext context) =>
      Theme.of(context).colorScheme.inverseSurface;

  static Color inversePrimary(BuildContext context) =>
      Theme.of(context).colorScheme.inversePrimary;

  static Color scrim(BuildContext context) =>
      Theme.of(context).colorScheme.scrim;

  static Color shadow(BuildContext context) =>
      Theme.of(context).colorScheme.shadow;

  static Color colorByType(ColorType type, BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return _colorMap[type]?.call(colorScheme) ?? colorScheme.onSurface;
  }

  static Color onColorByType(ColorType type, BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return _onColorMap[type]?.call(colorScheme) ?? colorScheme.onSurface;
  }

  static final _colorMap = {
    ColorType.primary: (ColorScheme colorScheme) => colorScheme.primary,
    ColorType.onPrimary: (ColorScheme colorScheme) => colorScheme.onPrimary,
    ColorType.primaryContainer: (ColorScheme colorScheme) =>
        colorScheme.primaryContainer,
    ColorType.onPrimaryContainer: (ColorScheme colorScheme) =>
        colorScheme.onPrimaryContainer,
    ColorType.primaryFixed: (ColorScheme colorScheme) =>
        colorScheme.primaryFixed,
    ColorType.onPrimaryFixed: (ColorScheme colorScheme) =>
        colorScheme.onPrimaryFixed,
    ColorType.primaryFixedDim: (ColorScheme colorScheme) =>
        colorScheme.primaryFixedDim,
    ColorType.onPrimaryFixedVariant: (ColorScheme colorScheme) =>
        colorScheme.onPrimaryFixedVariant,
    ColorType.secondary: (ColorScheme colorScheme) => colorScheme.secondary,
    ColorType.onSecondary: (ColorScheme colorScheme) => colorScheme.onSecondary,
    ColorType.secondaryContainer: (ColorScheme colorScheme) =>
        colorScheme.secondaryContainer,
    ColorType.onSecondaryContainer: (ColorScheme colorScheme) =>
        colorScheme.onSecondaryContainer,
    ColorType.secondaryFixed: (ColorScheme colorScheme) =>
        colorScheme.secondaryFixed,
    ColorType.onSecondaryFixed: (ColorScheme colorScheme) =>
        colorScheme.onSecondaryFixed,
    ColorType.secondaryFixedDim: (ColorScheme colorScheme) =>
        colorScheme.secondaryFixedDim,
    ColorType.onSecondaryFixedVariant: (ColorScheme colorScheme) =>
        colorScheme.onSecondaryFixedVariant,
    ColorType.tertiary: (ColorScheme colorScheme) => colorScheme.tertiary,
    ColorType.onTertiary: (ColorScheme colorScheme) => colorScheme.onTertiary,
    ColorType.tertiaryContainer: (ColorScheme colorScheme) =>
        colorScheme.tertiaryContainer,
    ColorType.onTertiaryContainer: (ColorScheme colorScheme) =>
        colorScheme.onTertiaryContainer,
    ColorType.tertiaryFixed: (ColorScheme colorScheme) =>
        colorScheme.tertiaryFixed,
    ColorType.onTertiaryFixed: (ColorScheme colorScheme) =>
        colorScheme.onTertiaryFixed,
    ColorType.tertiaryFixedDim: (ColorScheme colorScheme) =>
        colorScheme.tertiaryFixedDim,
    ColorType.onTertiaryFixedVariant: (ColorScheme colorScheme) =>
        colorScheme.onTertiaryFixedVariant,
    ColorType.surface: (ColorScheme colorScheme) => colorScheme.surface,
    ColorType.surfaceDim: (ColorScheme colorScheme) => colorScheme.surfaceDim,
    ColorType.surfaceBright: (ColorScheme colorScheme) =>
        colorScheme.surfaceBright,
    ColorType.surfaceContainerLowest: (ColorScheme colorScheme) =>
        colorScheme.surfaceContainerLowest,
    ColorType.surfaceContainerLow: (ColorScheme colorScheme) =>
        colorScheme.surfaceContainerLow,
    ColorType.surfaceContainer: (ColorScheme colorScheme) =>
        colorScheme.surfaceContainer,
    ColorType.surfaceContainerHigh: (ColorScheme colorScheme) =>
        colorScheme.surfaceContainerHigh,
    ColorType.surfaceContainerHighest: (ColorScheme colorScheme) =>
        colorScheme.surfaceContainerHighest,
    ColorType.onSurface: (ColorScheme colorScheme) => colorScheme.onSurface,
    ColorType.error: (ColorScheme colorScheme) => colorScheme.error,
    ColorType.onError: (ColorScheme colorScheme) => colorScheme.onError,
    ColorType.errorContainer: (ColorScheme colorScheme) =>
        colorScheme.errorContainer,
    ColorType.onErrorContainer: (ColorScheme colorScheme) =>
        colorScheme.onErrorContainer,
  };

  static final _onColorMap = {
    ColorType.primary: (ColorScheme colorScheme) => colorScheme.onPrimary,
    ColorType.primaryContainer: (ColorScheme colorScheme) =>
        colorScheme.onPrimaryContainer,
    ColorType.primaryFixed: (ColorScheme colorScheme) =>
        colorScheme.onPrimaryFixed,
    ColorType.primaryFixedDim: (ColorScheme colorScheme) =>
        colorScheme.onPrimaryFixedVariant,
    ColorType.secondary: (ColorScheme colorScheme) => colorScheme.onSecondary,
    ColorType.secondaryContainer: (ColorScheme colorScheme) =>
        colorScheme.onSecondaryContainer,
    ColorType.secondaryFixed: (ColorScheme colorScheme) =>
        colorScheme.onSecondaryFixed,
    ColorType.secondaryFixedDim: (ColorScheme colorScheme) =>
        colorScheme.onSecondaryFixedVariant,
    ColorType.tertiary: (ColorScheme colorScheme) => colorScheme.onTertiary,
    ColorType.tertiaryContainer: (ColorScheme colorScheme) =>
        colorScheme.onTertiaryContainer,
    ColorType.tertiaryFixed: (ColorScheme colorScheme) =>
        colorScheme.onTertiaryFixed,
    ColorType.tertiaryFixedDim: (ColorScheme colorScheme) =>
        colorScheme.onTertiaryFixedVariant,
    ColorType.surface: (ColorScheme colorScheme) => colorScheme.onSurface,
    ColorType.surfaceDim: (ColorScheme colorScheme) => colorScheme.onSurface,
    ColorType.surfaceBright: (ColorScheme colorScheme) => colorScheme.onSurface,
    ColorType.surfaceContainerLowest: (ColorScheme colorScheme) =>
        colorScheme.onSurface,
    ColorType.surfaceContainerLow: (ColorScheme colorScheme) =>
        colorScheme.onSurface,
    ColorType.surfaceContainer: (ColorScheme colorScheme) =>
        colorScheme.onSurface,
    ColorType.surfaceContainerHigh: (ColorScheme colorScheme) =>
        colorScheme.onSurface,
    ColorType.surfaceContainerHighest: (ColorScheme colorScheme) =>
        colorScheme.onSurface,
    ColorType.error: (ColorScheme colorScheme) => colorScheme.onError,
    ColorType.errorContainer: (ColorScheme colorScheme) =>
        colorScheme.onErrorContainer,
  };
}

enum ColorType {
  primary,
  onPrimary,
  primaryContainer,
  onPrimaryContainer,
  primaryFixed,
  onPrimaryFixed,
  primaryFixedDim,
  onPrimaryFixedVariant,
  secondary,
  onSecondary,
  secondaryContainer,
  onSecondaryContainer,
  secondaryFixed,
  onSecondaryFixed,
  secondaryFixedDim,
  onSecondaryFixedVariant,
  tertiary,
  onTertiary,
  tertiaryContainer,
  onTertiaryContainer,
  tertiaryFixed,
  onTertiaryFixed,
  tertiaryFixedDim,
  onTertiaryFixedVariant,
  surface,
  surfaceDim,
  surfaceBright,
  surfaceContainerLowest,
  surfaceContainerLow,
  surfaceContainer,
  surfaceContainerHigh,
  surfaceContainerHighest,
  onSurface,
  surfaceVariant,
  error,
  onError,
  errorContainer,
  onErrorContainer,
}

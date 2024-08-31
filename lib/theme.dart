import "package:flutter/material.dart";

class PostmasterMaterialTheme {
  final TextTheme textTheme;

  const PostmasterMaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4283980178),
      surfaceTint: Color(4283980178),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4293058559),
      onPrimaryContainer: Color(4279505738),
      secondary: Color(4283980178),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4293058559),
      onSecondaryContainer: Color(4279505738),
      tertiary: Color(4279461506),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4290701823),
      onTertiaryContainer: Color(4278198058),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294637823),
      onSurface: Color(4279900961),
      onSurfaceVariant: Color(4282861135),
      outline: Color(4286019200),
      outlineVariant: Color(4291347920),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282614),
      inversePrimary: Color(4290888191),
      primaryFixed: Color(4293058559),
      onPrimaryFixed: Color(4279505738),
      primaryFixedDim: Color(4290888191),
      onPrimaryFixedVariant: Color(4282401144),
      secondaryFixed: Color(4293058559),
      onSecondaryFixed: Color(4279505738),
      secondaryFixedDim: Color(4290888191),
      onSecondaryFixedVariant: Color(4282401144),
      tertiaryFixed: Color(4290701823),
      onTertiaryFixed: Color(4278198058),
      tertiaryFixedDim: Color(4287353072),
      onTertiaryFixedVariant: Color(4278209893),
      surfaceDim: Color(4292532704),
      surfaceBright: Color(4294637823),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294243322),
      surfaceContainer: Color(4293848564),
      surfaceContainerHigh: Color(4293453807),
      surfaceContainerHighest: Color(4293059305),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4282137972),
      surfaceTint: Color(4283980178),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4285493162),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4282137972),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4285493162),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4278208863),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4281630106),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294637823),
      onSurface: Color(4279900961),
      onSurfaceVariant: Color(4282597963),
      outline: Color(4284440167),
      outlineVariant: Color(4286282115),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282614),
      inversePrimary: Color(4290888191),
      primaryFixed: Color(4285493162),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4283848335),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4285493162),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4283848335),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4281630106),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4279067776),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292532704),
      surfaceBright: Color(4294637823),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294243322),
      surfaceContainer: Color(4293848564),
      surfaceContainerHigh: Color(4293453807),
      surfaceContainerHighest: Color(4293059305),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4279966545),
      surfaceTint: Color(4283980178),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4282137972),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4279966545),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4282137972),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4278199859),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4278208863),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294637823),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280492843),
      outline: Color(4282597963),
      outlineVariant: Color(4282597963),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282614),
      inversePrimary: Color(4293782271),
      primaryFixed: Color(4282137972),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4280690268),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4282137972),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4280690268),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4278208863),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4278202689),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292532704),
      surfaceBright: Color(4294637823),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294243322),
      surfaceContainer: Color(4293848564),
      surfaceContainerHigh: Color(4293453807),
      surfaceContainerHighest: Color(4293059305),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4290888191),
      surfaceTint: Color(4290888191),
      onPrimary: Color(4280953440),
      primaryContainer: Color(4282401144),
      onPrimaryContainer: Color(4293058559),
      secondary: Color(4290888191),
      onSecondary: Color(4280953440),
      secondaryContainer: Color(4282401144),
      onSecondaryContainer: Color(4293058559),
      tertiary: Color(4287353072),
      onTertiary: Color(4278203718),
      tertiaryContainer: Color(4278209893),
      onTertiaryContainer: Color(4290701823),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279374616),
      onSurface: Color(4293059305),
      onSurfaceVariant: Color(4291347920),
      outline: Color(4287729562),
      outlineVariant: Color(4282861135),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293059305),
      inversePrimary: Color(4283980178),
      primaryFixed: Color(4293058559),
      onPrimaryFixed: Color(4279505738),
      primaryFixedDim: Color(4290888191),
      onPrimaryFixedVariant: Color(4282401144),
      secondaryFixed: Color(4293058559),
      onSecondaryFixed: Color(4279505738),
      secondaryFixedDim: Color(4290888191),
      onSecondaryFixedVariant: Color(4282401144),
      tertiaryFixed: Color(4290701823),
      onTertiaryFixed: Color(4278198058),
      tertiaryFixedDim: Color(4287353072),
      onTertiaryFixedVariant: Color(4278209893),
      surfaceDim: Color(4279374616),
      surfaceBright: Color(4281874751),
      surfaceContainerLowest: Color(4279045651),
      surfaceContainerLow: Color(4279900961),
      surfaceContainer: Color(4280164133),
      surfaceContainerHigh: Color(4280822319),
      surfaceContainerHighest: Color(4281545786),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4291217151),
      surfaceTint: Color(4290888191),
      onPrimary: Color(4279110981),
      primaryContainer: Color(4287335368),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4291217151),
      onSecondary: Color(4279110981),
      secondaryContainer: Color(4287335368),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4287681780),
      onTertiary: Color(4278196515),
      tertiaryContainer: Color(4283734455),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279374616),
      onSurface: Color(4294769407),
      onSurfaceVariant: Color(4291611092),
      outline: Color(4288979372),
      outlineVariant: Color(4286874252),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293059305),
      inversePrimary: Color(4282532473),
      primaryFixed: Color(4293058559),
      onPrimaryFixed: Color(4278715968),
      primaryFixedDim: Color(4290888191),
      onPrimaryFixedVariant: Color(4281348198),
      secondaryFixed: Color(4293058559),
      onSecondaryFixed: Color(4278715969),
      secondaryFixedDim: Color(4290888191),
      onSecondaryFixedVariant: Color(4281348198),
      tertiaryFixed: Color(4290701823),
      onTertiaryFixed: Color(4278194972),
      tertiaryFixedDim: Color(4287353072),
      onTertiaryFixedVariant: Color(4278205262),
      surfaceDim: Color(4279374616),
      surfaceBright: Color(4281874751),
      surfaceContainerLowest: Color(4279045651),
      surfaceContainerLow: Color(4279900961),
      surfaceContainer: Color(4280164133),
      surfaceContainerHigh: Color(4280822319),
      surfaceContainerHighest: Color(4281545786),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294834687),
      surfaceTint: Color(4290888191),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4291217151),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294834687),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4291217151),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294441983),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4287681780),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279374616),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294834687),
      outline: Color(4291611092),
      outlineVariant: Color(4291611092),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293059305),
      inversePrimary: Color(4280492889),
      primaryFixed: Color(4293387519),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4291217151),
      onPrimaryFixedVariant: Color(4279110981),
      secondaryFixed: Color(4293321983),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4291217151),
      onSecondaryFixedVariant: Color(4279110981),
      tertiaryFixed: Color(4291423487),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4287681780),
      onTertiaryFixedVariant: Color(4278196515),
      surfaceDim: Color(4279374616),
      surfaceBright: Color(4281874751),
      surfaceContainerLowest: Color(4279045651),
      surfaceContainerLow: Color(4279900961),
      surfaceContainer: Color(4280164133),
      surfaceContainerHigh: Color(4280822319),
      surfaceContainerHighest: Color(4281545786),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}

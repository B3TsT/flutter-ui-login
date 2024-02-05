import 'package:flutter/material.dart';

import '../../common/common.dart';

class AppTheme {
  static ThemeData getTheme() => ThemeData.dark(
        useMaterial3: true,
      ).copyWith(
        scaffoldBackgroundColor: Pallete.backgroundColor,
        textTheme: textTheme(),
        textButtonTheme: textButtonThemeData(),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.all(27),
          enabledBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Pallete.borderColor, width: 3),
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Pallete.gradient2, width: 3),
              borderRadius: BorderRadius.circular(10)),
        ),
        brightness: Brightness.dark,
      );

  static TextButtonThemeData textButtonThemeData() {
    return TextButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            side: const BorderSide(
              color: Pallete.borderColor,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  static TextTheme textTheme() => const TextTheme().copyWith(
        // Encabezado 1
        displayLarge: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 50,
          color: Colors.white,
        ),
        // Encabezado 2
        displayMedium: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 40,
          color: Colors.white,
        ),
        // Encabezado 3
        displaySmall: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.white,
        ),
        // Encabezado 4
        headlineMedium: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Colors.white,
        ),
        // Encabezado 5
        headlineSmall: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.white,
        ),
        // Encabezado 6
        titleLarge: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: Colors.white,
        ),
        // Cuerpo de texto
        bodyLarge: const TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
        // Cuerpo de texto alternativo
        bodyMedium: const TextStyle(
          fontSize: 14,
          color: Colors.white,
        ),
        // Estilo de texto para botones
        labelLarge: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        // Estilo de texto para subtítulos
        titleMedium: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        // Estilo de texto para subtítulos alternativos
        titleSmall: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.white,
        ),
        // Estilo de texto para texto deshabilitado
        bodySmall: const TextStyle(
          fontSize: 14,
          color: Colors.grey,
        ),
      );
}

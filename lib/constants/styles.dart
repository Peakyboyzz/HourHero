import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

const String kPrimaryColor = '#6D5FFD';
const String kSecondaryColor = '#3F6CDF';
const String kBaseColor = '#F8F8F8';

final ThemeData appTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  scaffoldBackgroundColor: const Color(0xFFF8F8F8),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        Color(Vx.getColorFromHex(kPrimaryColor)),
      ),
      foregroundColor: MaterialStateProperty.all(Colors.white),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
  ),
  cardTheme: const CardTheme(
    color: Colors.white,
    elevation: 0,
    surfaceTintColor: Colors.white,
    clipBehavior: Clip.antiAlias,
  ),
  useMaterial3: true,
);

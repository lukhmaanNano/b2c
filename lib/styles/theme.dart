import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'CommonTextStyle.dart';
import 'common Color.dart';

class ThemeColors {
  static const primaryColor = Color(0xFF02414E);
  static const white = Colors.white;
  final lightTheme = ThemeData.light().copyWith(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    dividerColor: Colors.grey.shade300,
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
    ),
    // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red).copyWith(
    //   primary: white, // Add your custom color here
    // ),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      hintStyle: TextStyle(
          fontSize: 12, fontWeight: FontWeight.w400, color: primaryColor),
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
        width: 2,
        color: primary,
      )),
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
        width: 2,
        color: primary,
      )),
    ),
    listTileTheme: const ListTileThemeData(
      iconColor: primaryColor,
      titleTextStyle: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w400,
          color: Colors.black,
          wordSpacing: 0.4),
      subtitleTextStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.black,
          wordSpacing: 0.4),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(elevation: 12),
    textTheme: TextTheme(
      bodyMedium: const TextStyle(
          fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white),
      bodySmall: const TextStyle(
          fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white),
      labelLarge: GoogleFonts.libreBaskerville(
          textStyle: const TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w400,
              overflow: TextOverflow.ellipsis)),
      displaySmall: GoogleFonts.lato(
        color: primaryColor,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      displayMedium: const TextStyle(
          fontSize: 14, color: primaryColor, fontWeight: FontWeight.w500),
      displayLarge: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.black,
          wordSpacing: 0.4),
      titleMedium: GoogleFonts.libreBaskerville(
          textStyle: const TextStyle(
              fontSize: 12,
              color: Colors.black,
              fontWeight: FontWeight.w700,
              overflow: TextOverflow.ellipsis)),
      titleSmall: const TextStyle(
          color: Color(0xff515F65),
          fontWeight: FontWeight.w400,
          fontSize: 12,
          wordSpacing: 2),
      headlineSmall: GoogleFonts.libreBaskerville(
        fontSize: 10,
        color: const Color(0xff14181F),
        fontWeight: FontWeight.w400,
      ),
    ),
    iconTheme: const IconThemeData(color: primaryColor),
    iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
      iconColor: MaterialStateProperty.all(primaryColor),
    )),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(200, 50)),
        backgroundColor: MaterialStateProperty.all(primaryColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(double.infinity, 50)),
        backgroundColor: MaterialStateProperty.all(primaryColor),
        overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: white, foregroundColor: primaryColor),
    primaryIconTheme: const IconThemeData(color: primaryColor),
    primaryColor: primaryColor,
    scaffoldBackgroundColor: white,
    appBarTheme: AppBarTheme(
        toolbarHeight: 60,
        backgroundColor: primary,
        elevation: 0,
        titleTextStyle: appBar),
  );
  final darkTheme = ThemeData.dark().copyWith(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: white,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    dividerColor: const Color(0xff134D59),
    // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red).copyWith(
    //   primary: primaryColor, // Add your custom color here
    // ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      hintStyle: const TextStyle(
          fontSize: 12, fontWeight: FontWeight.w400, color: primaryColor),
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
        width: 4,
        color: primary.withOpacity(0.5),
      )),
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
        width: 4,
        color: primary.withOpacity(0.5),
      )),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(elevation: 12),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: primaryColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
    ),
    listTileTheme: const ListTileThemeData(
      iconColor: white,
      titleTextStyle: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w400,
          color: white,
          wordSpacing: 0.4),
      subtitleTextStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: white,
          wordSpacing: 0.4),
    ),
    textTheme: TextTheme(
      bodyMedium: const TextStyle(
          fontSize: 13, fontWeight: FontWeight.w500, color: primaryColor),
      bodySmall: const TextStyle(
          fontSize: 12, fontWeight: FontWeight.w400, color: primaryColor),
      labelLarge: GoogleFonts.libreBaskerville(
          textStyle: const TextStyle(
              fontSize: 14,
              color: primaryColor,
              fontWeight: FontWeight.w400,
              overflow: TextOverflow.ellipsis)),
      displaySmall: GoogleFonts.lato(
        color: white,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      displayMedium: const TextStyle(
          fontSize: 14, color: white, fontWeight: FontWeight.w500),
      displayLarge: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: white,
          wordSpacing: 0.4),
      titleMedium: GoogleFonts.libreBaskerville(
          textStyle: const TextStyle(
              fontSize: 12,
              color: white,
              fontWeight: FontWeight.w700,
              overflow: TextOverflow.ellipsis)),
      titleSmall: const TextStyle(
          color: white,
          fontWeight: FontWeight.w400,
          fontSize: 12,
          wordSpacing: 2),
      headlineSmall: GoogleFonts.libreBaskerville(
        fontSize: 10,
        color: white,
        fontWeight: FontWeight.w400,
      ),
    ),
    iconTheme: const IconThemeData(color: white),
    iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
      iconColor: MaterialStateProperty.all(white),
    )),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(200, 50)),
        backgroundColor: MaterialStateProperty.all(white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(double.infinity, 50)),
        backgroundColor: MaterialStateProperty.all(white),
        overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primaryColor, foregroundColor: white),
    scaffoldBackgroundColor: primaryColor,
    primaryIconTheme: const IconThemeData(color: Colors.white),
    appBarTheme: const AppBarTheme(
        toolbarHeight: 60,
        backgroundColor: primaryColor,
        elevation: 0,
        titleTextStyle: TextStyle(
            overflow: TextOverflow.clip,
            color: white,
            fontSize: 15,
            fontWeight: FontWeight.w500)),
  );
}

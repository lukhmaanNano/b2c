import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'common Color.dart';

InputDecoration inputBox(String? label) {
  return InputDecoration(
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: primary),
    ),
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: primary),
    ),
    fillColor: Colors.grey.shade100,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide.none,
    ),
    hoverColor: lightShade,
    focusColor: primary,
    floatingLabelBehavior: FloatingLabelBehavior.never,
    filled: true,
    labelStyle: const TextStyle(
        color: grey100, fontSize: 15, fontWeight: FontWeight.w400),
    labelText: label,
  );
}

InputDecoration inputDateBox(String? label) {
  return InputDecoration(
    suffixIconColor: primary,
    suffixIcon: const Icon(Icons.calendar_month, color: primary, size: 18),
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: primary),
    ),
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: primary),
    ),
    fillColor: Colors.grey.shade100,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide.none,
    ),
    hoverColor: lightShade,
    focusColor: primary,
    floatingLabelBehavior: FloatingLabelBehavior.never,
    filled: true,
    labelStyle: const TextStyle(
        color: grey100, fontSize: 15, fontWeight: FontWeight.w400),
    labelText: label,
  );
}

BoxDecoration disableDecoration = const BoxDecoration(
  border: Border(
    bottom: BorderSide(color: primary, width: 2),
  ),
);

BoxDecoration disableDecoration1 = BoxDecoration(
  color: Colors.grey.shade100,
  border: const Border(
    bottom: BorderSide(color: primary, width: 2),
  ),
);

RoundedRectangleBorder disableField =
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0));

const TextStyle cardTitle = TextStyle(
    color: primary,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.2);

const TextStyle moreText = TextStyle(
  decoration: TextDecoration.underline,
  color: primary,
  fontSize: 14,
  fontWeight: FontWeight.w400,
);

const TextStyle headerText = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: Colors.black,
    wordSpacing: 0.4);

const TextStyle primaryTest =
    TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white);

const TextStyle secondaryTest =
    TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: primary);

const TextStyle locationStyle = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: Colors.black,
    wordSpacing: 0.4);

const TextStyle serviceCount = TextStyle(
    color: Colors.black,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.2);

final TextStyle appBar = GoogleFonts.mPlus1p(
    textStyle: const TextStyle(
        overflow: TextOverflow.clip,
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.w500));

final TextStyle develop1 = GoogleFonts.josefinSans(
    textStyle: const TextStyle(
        letterSpacing: 0.5,
        color: primary,
        fontSize: 16,
        fontWeight: FontWeight.w500));

final TextStyle styleFont = GoogleFonts.montserrat(
    textStyle: const TextStyle(
        overflow: TextOverflow.clip,
        color: Colors.black,
        fontSize: 15,
        fontWeight: FontWeight.w500));

const TextStyle secondaryHeader = TextStyle(
    color: Colors.black,
    overflow: TextOverflow.clip,
    fontSize: 18,
    fontWeight: FontWeight.w300);

const TextStyle tips = TextStyle(
    fontSize: 12, fontWeight: FontWeight.w300, overflow: TextOverflow.clip);

const TextStyle primaryHeader = TextStyle(
    fontSize: 14,
    color: primary,
    fontWeight: FontWeight.w500,
    overflow: TextOverflow.ellipsis);

TextStyle commonRoboto = GoogleFonts.roboto(
    textStyle: const TextStyle(
        overflow: TextOverflow.clip,
        color: Colors.black,
        fontSize: 10,
        fontWeight: FontWeight.w400));

TextStyle cardCardHeader = GoogleFonts.notoSans(
    textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 1,
        wordSpacing: 0.5));

TextStyle add = GoogleFonts.raleway(
    textStyle: const TextStyle(
        fontSize: 13,
        color: primary,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.ellipsis));

/// UMAR ///

const TextStyle headingOtp = TextStyle(
  fontSize: 22,
  fontFamily: 'Roboto',
  color: Colors.black87,
  overflow: TextOverflow.clip,
);
const TextStyle commonOtp = TextStyle(
    fontSize: 14,
    fontFamily: 'Roboto',
    overflow: TextOverflow.clip,
    color: Colors.grey);

const TextStyle electCardColour = TextStyle(
  color: Colors.red,
  fontSize: 10,
  fontFamily: 'Roboto',
);

const TextStyle electCard = TextStyle(
  color: Colors.black,
  fontSize: 10,
  fontFamily: 'Roboto',
);

const TextStyle electCardHead = TextStyle(
  color: Colors.black,
  fontSize: 13,
  fontFamily: 'Roboto',
);

const TextStyle electCardSubHead = TextStyle(
  color: Colors.black,
  fontSize: 11,
  fontFamily: 'Roboto',
);
TextStyle add1 = GoogleFonts.raleway(
    textStyle: const TextStyle(
        fontSize: 11,
        color: primary,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.ellipsis));

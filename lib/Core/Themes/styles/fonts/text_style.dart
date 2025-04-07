import 'package:flutter/material.dart';
import 'package:gedeed/Core/Themes/colors/colors.dart'; // Import ColorsManager

class TextStyles {
  static const String _fontFamily = 'Montserrat';

  // Headings - Semibold
  static const TextStyle h1Semibold = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 28,
    color: Colors.white,
  );

  static const TextStyle h2Semibold = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 24,
    color: Colors.white,
  );

  static const TextStyle h3Semibold = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: ColorsManager.grey, // Use grey for medium fonts
  );

  static const TextStyle h4Semibold = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: ColorsManager.grey, // Use grey for medium fonts
  );

  static const TextStyle h5Semibold = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: ColorsManager.grey, // Use grey for small fonts
  );

  static const TextStyle h6Semibold = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 12,
    color: ColorsManager.grey, // Use grey for small fonts
  );

  static const TextStyle h7Semibold = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 10,
    color: ColorsManager.grey, // Use grey for small fonts
  );

  // Headings - Medium
  static const TextStyle h1Medium = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 28,
    color: Colors.white,
  );

  static const TextStyle h2Medium = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 24,
    color: Colors.white,
  );

  static const TextStyle h3Medium = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 18,
    color: ColorsManager.grey, // Use grey for medium fonts
  );

  static const TextStyle h4Medium = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: ColorsManager.grey, // Use grey for medium fonts
  );

  static const TextStyle h5Medium = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: ColorsManager.grey, // Use grey for small fonts
  );

  static const TextStyle h6Medium = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 12,
    color: ColorsManager.grey, // Use grey for small fonts
  );

  static const TextStyle h7Medium = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 10,
    color: ColorsManager.grey, // Use grey for small fonts
  );

  // Headings - Regular
  static const TextStyle h1Regular = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 28,
    color: Colors.white,
  );

  static const TextStyle h2Regular = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 24,
    color: Colors.white,
  );

  static const TextStyle h3Regular = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 18,
    color: ColorsManager.grey, // Use grey for medium fonts
  );

  static const TextStyle h4Regular = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: ColorsManager.grey, // Use grey for medium fonts
  );

  static const TextStyle h5Regular = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: ColorsManager.grey, // Use grey for small fonts
  );

  static const TextStyle h6Regular = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: ColorsManager.grey, // Use grey for small fonts
  );

  static const TextStyle h7Regular = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 10,
    color: ColorsManager.grey, // Use grey for small fonts
  );

  // Paragraphs
  static const TextStyle bodySemibold = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 12,
    color: ColorsManager.grey, // Use grey for small fonts
  );

  static const TextStyle bodyMedium = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 12,
    color: ColorsManager.grey, // Use grey for small fonts
  );

  static const TextStyle bodyRegular = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: ColorsManager.grey, // Use grey for small fonts
  );
}
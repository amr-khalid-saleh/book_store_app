import 'package:book_store/constants.dart';
import 'package:flutter/material.dart';

abstract class TextStyleManager {
  static const TextStyle semiBold18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle regular20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle regular30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w400,
    fontFamily: kGTSectraFine,
  );
  static const TextStyle regular14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle medium16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}

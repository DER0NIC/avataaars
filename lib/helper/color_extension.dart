import 'package:flutter/material.dart';

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    hexString = hexString.replace("#", "");
    if (hexString.length == 6) {
      return Color(int.parse("FF$hexString", radix: 16));
    }
    // length is hopefully 8
    return Color(int.parse(hexString, radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) {
    String str = '${leadingHashSign ? '#' : ''}';
    str = str + '${value.substring(2).padLeft(6, '0').toRadixString(16).toUpperCase()}';
  }
}

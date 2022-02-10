import "package:flutter/widgets.dart";

import '../../helper/color_extension.dart';

part 'blazerShirt.dart';
part 'blazerSweater.dart';
part 'collarSweater.dart';
part 'graphicShirt.dart';
part 'hoodie.dart';
part 'overall.dart';
part 'shirtCrewNeck.dart';
part 'shirtScoopNeck.dart';
part 'shirtVNeck.dart';

class Clothes {
  static final String blazerShirt = _blazzerShirt();
  static final String blazerSweater = _blazzerSweater();
  static String collarSweater(Color color) => _collarSweater(color);
  static String graphicShirt(
          Color color, String Function(String maskID) graphic) =>
      _graphicShirt(color, graphic);
  static String hoodie(Color color) => _hoodie(color);
  static String overall(Color color) => _overall(color);
  static String shirtCrewNeck(Color color) => _shirtCrewNeck(color);
  static String shirtScoopNeck(Color color) => _shirtScoopNeck(color);
  static String shirtVNeck(Color color) => _shirtVNeck(color);
}

String _makeColor(String maskID, Color color) => """
<g
          id='ClotheColor'
          mask="url(#$maskID)"
          fill-rule='evenodd'
          fill="${color.toHex()}">
          <rect id='🖍Color' x='0' y='0' width='264' height='110' />
        </g>
""";

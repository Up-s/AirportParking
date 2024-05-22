import 'dart:ui';

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor"; // 8자리로 맞추기 위해 알파값 추가
    }
    return int.parse(hexColor, radix: 16);
  }
}
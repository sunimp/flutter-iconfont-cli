import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

enum IconNames {
  #names#
}

extension parseString on IconNames {
  String serialize() => this.toString().split('.').last;
}

/// A class includes all icons which you provided from https://iconfont.cn
///
/// How to use it:
/// ```dart
/// IconFont(IconNames.xxx);
/// IconFont(IconNames.xxx, color: Color(0xf00));
/// IconFont(IconNames.xxx, colors: [Color(#f00), Colors.blue]);
/// IconFont(IconNames.xxx, size: 30, color: Color(0x000));
/// ```
///
/// The name is dynamic to against server interface.
/// Feel free to input string literal.
/// ```dart
/// IconFont('xxx');
/// ```
class IconFont extends StatelessWidget {
  IconNames? name;
  final Color? color;
  final List<Color>? colors;
  final double size;

  IconFont(dynamic iconName, { this.size = #size#, this.color, this.colors }) {
    this.name = getIconNames(iconName);
  }

  static IconNames getIconNames(dynamic iconName) {
    switch (iconName) {
#convertCases#
    }
    return iconName;
  }

  static Color getColor(int arrayIndex, Color? color, List<Color>? colors, Color defaultColor) {
    if (color != null) {
      return color;
    }

    if (colors != null && colors.isNotEmpty && colors.length > arrayIndex) {
      return colors.elementAt(arrayIndex);
    }

    return defaultColor;
  }

  @override
  Widget build(BuildContext context) {
    String svgXml;

    switch (this.name!) {
#cases#
    }

    return SvgPicture.string(svgXml, width: this.size, height: this.size);
  }
}

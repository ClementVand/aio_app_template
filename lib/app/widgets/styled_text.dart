import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(
    this.text, {
    super.key,
    required this.format,
    this.align = TextAlign.left,
    this.color = Colors.black,
  });

  final String text;
  final TextFormat format;
  final TextAlign align;
  final Color color;

  static TextStyle getStyle(TextFormat format, [Color color = Colors.black]) =>
      _textStyleMap[format]!.copyWith(color: color);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = getStyle(format, color);

    return Text(
      text,
      style: textStyle,
      textAlign: align,
    );
  }
}

enum TextFormat {
  xlSemibold,
  sSemiBold,
  xsBold,
  xsMedium,
}

final Map<TextFormat, TextStyle> _textStyleMap = {
  TextFormat.xlSemibold: const TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w600,
  ),
  TextFormat.sSemiBold: const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w600,
  ),
  TextFormat.xsBold: const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
  ),
  TextFormat.xsMedium: const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  ),
};

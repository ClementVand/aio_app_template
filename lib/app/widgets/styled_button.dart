import 'package:aio_app_template/app/constants/color_palette.dart';
import 'package:aio_app_template/app/widgets/styled_text.dart';
import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  const StyledButton({
    super.key,
    required this.onTap,
    required this.text,
    this.format = ButtonFormat.primary,
  });

  final VoidCallback onTap;
  final String text;
  final ButtonFormat format;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return GestureDetector(
        onTap: onTap,
        child: Container(
          width: constraints.maxWidth,
          height: 46,
          alignment: Alignment.center,
          decoration: _getDecoration(context, format),
          child: StyledText(
            text,
            format: TextFormat.sSemiBold,
            color: Colors.white,
          ),
        ),
      );
    });
  }

  BoxDecoration _getDecoration(BuildContext context, ButtonFormat format) {
    return _buttonDecorationMap(context)[format]!;
  }
}

enum ButtonFormat {
  primary,
  secondary,
}

Map<ButtonFormat, BoxDecoration> _buttonDecorationMap(BuildContext context) => {
      ButtonFormat.primary: BoxDecoration(
        color: colorPalette.primaryColor,
        borderRadius: BorderRadius.circular(32),
      ),
      ButtonFormat.secondary: BoxDecoration(
        color: colorPalette.secondaryColor,
        borderRadius: BorderRadius.circular(32),
      ),
    };

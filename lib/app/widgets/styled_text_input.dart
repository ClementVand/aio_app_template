import 'package:aio_app_template/app/constants/color_palette.dart';
import 'package:flutter/material.dart';

class StyledTextInput extends StatelessWidget {
  const StyledTextInput({
    super.key,
    required this.onChanged,
    this.hint,
    this.icon,
    this.password = false,
  });

  final void Function(String) onChanged;
  final String? hint;
  final Widget? icon;
  final bool password;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: Align(
            alignment: Alignment.center,
            widthFactor: 1.0,
            child: icon,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: colorPalette.primarySwatch[200]!,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: colorPalette.primarySwatch[400]!,
              width: 2,
            ),
          ),
        ),
        cursorColor: colorPalette.neutralColorDark,
        obscureText: password,
        enableSuggestions: !password,
        autocorrect: !password,
      ),
    );
  }
}

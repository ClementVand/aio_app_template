import 'package:aio_app_template/app/constants/color_palette.dart';
import 'package:flutter/material.dart';

class PageContainer extends StatelessWidget {
  const PageContainer({
    super.key,
    required this.child,
    this.backgroundColor,
    this.background,
    this.usePadding = true,
    this.useSafeArea = true,
  });

  final Widget child;
  final Color? backgroundColor;
  final Widget? background;

  final bool usePadding;
  final bool useSafeArea;

  @override
  Widget build(BuildContext context) {
    Widget widget = _withSafeArea(child);

    return Container(
      padding: usePadding ? const EdgeInsets.all(32.0) : null,
      color: backgroundColor ?? colorPalette.backgroundColor,
      child: _withBackground(widget),
    );
  }

  Widget _withSafeArea(Widget child) {
    return useSafeArea ? SafeArea(child: child) : child;
  }

  Widget _withBackground(Widget child) {
    return background != null
        ? Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: background!,
              ),
              child,
            ],
          )
        : child;
  }
}

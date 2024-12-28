import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AssetIcon extends StatelessWidget {
  const AssetIcon({
    super.key,
    required this.icon,
    this.color = Colors.black,
  });

  final AssetIcons icon;
  final Color color;

  static const _assetPath = "assets/icons/";

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "$_assetPath${_iconPaths[icon]}",
      width: 24,
      height: 24,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
    );
  }
}

enum AssetIcons {
  settings,
}

const Map<AssetIcons, String> _iconPaths = {
  AssetIcons.settings: "settings.svg",
};

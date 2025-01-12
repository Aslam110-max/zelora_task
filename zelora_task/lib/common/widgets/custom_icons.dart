import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIcon extends StatelessWidget {
  final String svgPath;
  final double? size;
  final EdgeInsets? padding;
  final BoxFit fit;

  const CustomIcon({
    super.key,
    required this.svgPath,
    this.size,
    this.padding,
    this.fit = BoxFit.contain,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: SvgPicture.asset(
        svgPath,
        width: size ?? MediaQuery.of(context).size.width * 0.1,
        height: size ?? MediaQuery.of(context).size.width * 0.1,
        fit: fit,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String imagePath; 
  final double? width; 
  final double? height;
  final BoxFit fit; 

  const CustomImage({
    super.key,
    required this.imagePath,
    this.width,
    this.height,
    this.fit = BoxFit.cover, 
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      width: width,
      height: height,
      fit: fit,
      errorBuilder: (context, error, stackTrace) {
        return const Icon(
          Icons.broken_image,
          color: Colors.red,
        );
      },
    );
  }
}

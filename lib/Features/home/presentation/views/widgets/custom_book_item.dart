import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
          errorWidget: (context, url, error) => const Icon(Icons.error),
          placeholder: (context, url) => const Center(child: CircularProgressIndicator(),),
          fit: BoxFit.fill,
          imageUrl: imageUrl),
          
          
      ),
    );
  }
}

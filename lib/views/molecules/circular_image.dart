import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  const CircularImage(
      {Key? key, this.path, this.height = 50, this.isBorder = false})
      : super(key: key);
  final String? path;
  final double height;
  final bool isBorder;

  @override
  Widget build(BuildContext context) {
    final ImageProvider<Object>? backgroundImage = path != null
        ? CachedNetworkImageProvider(
            path!,
            cacheKey: path,
          )
        : null;

    final icon = backgroundImage == null ? const Icon(Icons.face) : null;

    return CircleAvatar(
      maxRadius: height / 2,
      backgroundColor: Theme.of(context).colorScheme.background,
      backgroundImage: backgroundImage,
      child: icon,
    );
  }
}

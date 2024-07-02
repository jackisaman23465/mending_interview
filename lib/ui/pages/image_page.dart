import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  final int heroTag;
  final String? missionPatchUrl;

  const ImagePage({
    Key? key,
    required this.heroTag,
    required this.missionPatchUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Image")),
      body: Center(
        child: Hero(
          tag: heroTag,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Builder(
              builder: (context) {
                if (missionPatchUrl != null && missionPatchUrl!.isNotEmpty) {
                  return CachedNetworkImage(
                    memCacheWidth: 300,
                    memCacheHeight: 300,
                    imageUrl: missionPatchUrl!,
                    fit: BoxFit.fitHeight,
                    placeholder: (context, url) => const CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Image.asset(
                      'assets/images/img_placeholder.png',
                      fit: BoxFit.fitHeight,
                    ),
                  );
                } else {
                  return Image.asset(
                    'assets/images/img_placeholder.png',
                    fit: BoxFit.fitHeight,
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}

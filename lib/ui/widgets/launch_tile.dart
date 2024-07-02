import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LaunchTile extends ConsumerStatefulWidget {
  final int heroTag;
  final num? flightNumber;
  final String? missionPatchUrl;
  final String missionName;
  final String launchDate;
  final VoidCallback? onTap;

  const LaunchTile({
    super.key,
    required this.heroTag,
    required this.flightNumber,
    required this.missionPatchUrl,
    required this.missionName,
    required this.launchDate,
    this.onTap,
  });

  @override
  ConsumerState createState() => _LaunchTileState();
}

class _LaunchTileState extends ConsumerState<LaunchTile> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListTile(
      key: ValueKey(widget.flightNumber),
      contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      trailing: Hero(
        tag: widget.heroTag,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Builder(
            builder: (context) {
              if (widget.missionPatchUrl != null && widget.missionPatchUrl!.isNotEmpty) {
                return CachedNetworkImage(
                  memCacheWidth: 300,
                  memCacheHeight: 300,
                  imageUrl: widget.missionPatchUrl!,
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
      title: Text(
        'Flight ${widget.flightNumber}',
        style: const TextStyle(
          color: Colors.grey,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.missionName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 4.0),
          Text(
            widget.launchDate,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
      isThreeLine: true,
      onTap: widget.onTap,
    );
  }

  @override
  bool get wantKeepAlive => true;
}

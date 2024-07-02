import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LaunchTile extends ConsumerStatefulWidget {
  final num? flightNumber;
  final String? missionPatchURL;
  final String missionName;
  final String launchDate;
  final VoidCallback? onTap;

  const LaunchTile({
    super.key,
    required this.flightNumber,
    required this.missionPatchURL,
    required this.missionName,
    required this.launchDate,
    this.onTap,
  });

  @override
  _LaunchTileState createState() => _LaunchTileState();
}

class _LaunchTileState extends ConsumerState<LaunchTile> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListTile(
      key: ValueKey(widget.flightNumber),
      contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      trailing: widget.missionPatchURL != null && widget.missionPatchURL!.isNotEmpty
          ? CachedNetworkImage(
              imageUrl: widget.missionPatchURL!,
              fit: BoxFit.fitHeight,
              placeholder: (context, url) => const CircularProgressIndicator(
                color: Colors.transparent,
              ),
              errorWidget: (context, url, error) => Image.asset(
                'assets/images/img_placeholder.png',
                fit: BoxFit.fitHeight,
              ),
            )
          : Image.asset(
              'assets/images/img_placeholder.png',
              fit: BoxFit.fitHeight,
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

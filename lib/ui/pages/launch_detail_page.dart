import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mending_interview/models/index.dart';

class LaunchDetailPage extends StatelessWidget {
  final int heroTag;
  final LaunchModel launch;

  const LaunchDetailPage({
    super.key,
    required this.launch,
    required this.heroTag,
  });

  @override
  Widget build(BuildContext context) {
    print(launch.links?.mission_patch != null);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          launch.mission_name ?? "null",
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  context.push('/$heroTag/details/img', extra: launch.links?.mission_patch);
                },
                child: Center(
                  child: Hero(
                    tag: heroTag,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Builder(
                        builder: (context) {
                          var missionPatchUrl = launch.links?.mission_patch;
                          if (missionPatchUrl != null && missionPatchUrl.isNotEmpty) {
                            return CachedNetworkImage(
                              memCacheWidth: 300,
                              memCacheHeight: 300,
                              imageUrl: missionPatchUrl,
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
              ),
              const SizedBox(height: 16.0),
              Text(
                'Mission Name: ${launch.mission_name}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Launch Date: ${launch.launch_date_utc}',
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Rocket Name: ${launch.rocket?.rocket_name}',
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Launch Site: ${launch.launch_site?.site_name_long}',
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Details:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                launch.details ?? 'No details available',
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

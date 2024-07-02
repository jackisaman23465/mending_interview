import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../models/dataModel.dart';

class LaunchDetailPage extends StatelessWidget {
  final DataModel data;

  const LaunchDetailPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    print(data.links?.mission_patch != null);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          data.mission_name ?? "null",
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
              Center(
                child: data.links?.mission_patch != null && data.links!.mission_patch!.isNotEmpty
                    ? CachedNetworkImage(
                        imageUrl: data.links!.mission_patch!,
                        fit: BoxFit.fitHeight,
                        placeholder: (context, url) => const CircularProgressIndicator(),
                        errorWidget: (context, url, error) => Image.asset(
                          'assets/images/img_placeholder.png',
                          fit: BoxFit.fitHeight,
                        ),
                      )
                    : Image.asset(
                        'assets/images/img_placeholder.png',
                        fit: BoxFit.fitHeight,
                      ),
              ),
              const SizedBox(height: 16.0),
              Text(
                'Mission Name: ${data.mission_name}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Launch Date: ${data.launch_date_utc}',
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Rocket Name: ${data.rocket?.rocket_name}',
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Launch Site: ${data.launch_site?.site_name_long}',
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
                data.details ?? 'No details available',
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

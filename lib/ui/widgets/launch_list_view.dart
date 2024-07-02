import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import 'launch_tile.dart';

class LaunchListView extends ConsumerWidget {
  final List filteredLaunchList;

  // final ScrollController scrollController;

  const LaunchListView({
    super.key,
    required this.filteredLaunchList,
    // required this.scrollController,
  });

  String formatDate(String dateString) {
    DateTime dateTime = DateTime.parse(dateString).toLocal();

    String formattedDateTime = DateFormat('dd/MM/yyyy HH:mm:ss').format(dateTime);
    return formattedDateTime;
  }

  @override
  Widget build(BuildContext context, ref) {
    // final itemCount = ref.watch(itemCountProvider);
    // final displayList = filteredLaunchList.take(itemCount).toList();

    return ListView.builder(
      prototypeItem: const LaunchTile(
        flightNumber: 0,
        missionPatchURL: "",
        missionName: "",
        launchDate: "",
      ),
      // controller: scrollController,
      // itemCount: displayList.length,
      itemCount: filteredLaunchList.length,
      itemBuilder: (context, index) {
        // final data = displayList[index];
        final data = filteredLaunchList[index];
        return LaunchTile(
          key: UniqueKey(),
          flightNumber: data.flight_number,
          missionPatchURL: data.links?.mission_patch,
          missionName: data.mission_name.toString(),
          launchDate: formatDate(data.launch_date_utc.toString()),
          onTap: () {
            context.push('/details', extra: data);
          },
        );
      },
    );
  }
}

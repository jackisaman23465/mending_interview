import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../models/launchModel.dart';
import 'launch_tile.dart';

class LaunchListView extends ConsumerStatefulWidget {
  final List<LaunchModel> filteredLaunchList;

  const LaunchListView({
    Key? key,
    required this.filteredLaunchList,
  }) : super(key: key);

  @override
  ConsumerState createState() => _LaunchListViewState();
}

class _LaunchListViewState extends ConsumerState<LaunchListView> with AutomaticKeepAliveClientMixin {

  String formatDate(String dateString) {
    DateTime dateTime = DateTime.parse(dateString).toLocal();

    String formattedDateTime = DateFormat('dd/MM/yyyy HH:mm:ss').format(dateTime);
    return formattedDateTime;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); // 必須調用 super.build(context)

    return ListView.builder(
      key: widget.key, // 使用 widget.key 作為 ListView 的 key
      itemCount: widget.filteredLaunchList.length,
      itemBuilder: (context, index) {
        final launch = widget.filteredLaunchList[index];
        return LaunchTile(
          key: UniqueKey(),
          heroTag: index,
          flightNumber: launch.flight_number,
          missionPatchUrl: launch.links?.mission_patch,
          missionName: launch.mission_name.toString(),
          launchDate: formatDate(launch.launch_date_utc.toString()),
          onTap: () {
            context.push('/$index/details', extra: launch);
          },
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true; // 返回 true 以保持狀態
}
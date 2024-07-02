import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:intl/intl.dart';

import '../../providers/provider.dart';
import '../widgets/launch_list_view.dart';
import '../widgets/launch_tile.dart';

enum SortStrategy {
  largeToSmall,
  smallToLarge,
}

class LaunchMainPage extends ConsumerStatefulWidget {
  const LaunchMainPage({super.key});

  @override
  ConsumerState createState() => _LaunchesPageState();
}

class _LaunchesPageState extends ConsumerState<LaunchMainPage> with AutomaticKeepAliveClientMixin {
  String _searchQuery = '';
  SortStrategy _sortStrategy = SortStrategy.smallToLarge;

  // final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    // _scrollController.addListener(() {
    //   if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
    //     ref.read(itemCountProvider.notifier).state += 10;
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    print("LaunchListPage build");
    super.build(context);
    final launchListAsyncValue = ref.watch(launchListProvider);
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'All Launches',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: Container(
              height: 80,
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
              constraints: const BoxConstraints(minHeight: 60), // 设置最小高度
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: const Icon(Icons.search),
                ),
                onChanged: (value) {
                  setState(() {
                    _searchQuery = value.toLowerCase();
                  });
                },
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () {
                ref.refresh(launchListProvider.future);
              },
            ),
          ],
        ),
        body: launchListAsyncValue.when(
          data: (dataList) {
            // final itemCount = ref.watch(itemCountProvider);
            // if (itemCount > dataList.length) itemCount = dataList.length;
            // final filteredDataList = dataList.sublist(0, itemCount).where((data) {
            final filteredLaunchList = dataList.where((data) {
              final missionName = data.mission_name?.toLowerCase();

              final matchesSearch = missionName?.contains(_searchQuery);

              return matchesSearch ?? false;
            }).toList();

            switch (_sortStrategy) {
              case SortStrategy.smallToLarge:
                filteredLaunchList.sort((a, b) => (a.flight_number ?? 0).compareTo((b.flight_number ?? 0)));
                break;
              case SortStrategy.largeToSmall:
                filteredLaunchList.sort((a, b) => (b.flight_number ?? 0).compareTo((a.flight_number ?? 0)));
                break;
            }

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                    elevation: MaterialStateProperty.all<double>(0),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        side: const BorderSide(color: Colors.transparent),
                      ),
                    ),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
                  ),
                  onPressed: () {
                    switch (_sortStrategy) {
                      case SortStrategy.smallToLarge:
                        _sortStrategy = SortStrategy.largeToSmall;
                        break;
                      case SortStrategy.largeToSmall:
                        _sortStrategy = SortStrategy.smallToLarge;
                        break;
                    }
                    setState(() {});
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.sort,
                        color: Theme.of(context).indicatorColor,
                        size: 30,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Flight number: ${_sortStrategy == SortStrategy.smallToLarge ? 'oldest' : 'youngest'}",
                        style: TextStyle(
                          fontSize: 18,
                          color: Theme.of(context).indicatorColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () async {
                      ref.refresh(launchListProvider.future);
                    },
                    child: LaunchListView(
                      filteredLaunchList: filteredLaunchList,
                      // scrollController: _scrollController,
                    ),
                  ),
                ),
              ],
            );
          },
          loading: () => Skeletonizer(
            child: ListView.builder(
              prototypeItem: const LaunchTile(
                flightNumber: 0,
                missionPatchUrl: "",
                missionName: "",
                launchDate: "",
                heroTag: -1,
              ),
              itemCount: 20,
              itemBuilder: (context, index) {
                return const LaunchTile(
                  flightNumber: 1,
                  missionPatchUrl: "",
                  missionName: "FalconSat",
                  launchDate: "24/03/2006 23:30:00",
                  heroTag: -1,
                );
              },
            ),
          ),
          error: (error, stack) => Center(child: Text('Error: $error')),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // _scrollController.dispose();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;
}

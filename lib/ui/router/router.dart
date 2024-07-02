import 'package:go_router/go_router.dart';
import 'package:mending_interview/ui/pages/image_page.dart';
import 'package:mending_interview/ui/router/anim/slide_transition_page.dart';

import '../../models/launchModel.dart';
import '../pages/launch_detail_page.dart';
import '../pages/launch_main_page.dart';
import 'anim/fade_transition_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) {
        return FadeTransitionPage(
          child: const LaunchMainPage(),
        );
      },
    ),
    GoRoute(
      path: '/:index/details',
      pageBuilder: (context, state) {
        final index = int.tryParse(state.pathParameters['index'] ?? '') ?? -1;
        final data = state.extra as LaunchModel;
        return SlideTransitionPage(
          direction: SlideDirection.rtl,
          child: LaunchDetailPage(
            launch: data,
            heroTag: index,
          ),
        );
      },
    ),
    GoRoute(
      path: '/:index/details/img',
      pageBuilder: (context, state) {
        final index = int.tryParse(state.pathParameters['index'] ?? '') ?? -1;
        final missionPatchUrl = state.extra as String?;
        return SlideTransitionPage(
          direction: SlideDirection.rtl,
          child: ImagePage(
            heroTag: index,
            missionPatchUrl: missionPatchUrl,
          ),
        );
      },
    ),
  ],
);
